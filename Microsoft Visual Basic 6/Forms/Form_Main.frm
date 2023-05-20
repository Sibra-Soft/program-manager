VERSION 5.00
Begin VB.MDIForm Form_Main 
   Appearance      =   0  'Flat
   BackColor       =   &H00C0C0C0&
   Caption         =   "Program Manager"
   ClientHeight    =   7620
   ClientLeft      =   225
   ClientTop       =   555
   ClientWidth     =   11445
   Icon            =   "Form_Main.frx":0000
   LinkTopic       =   "MDIForm1"
   ScrollBars      =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer_Main 
      Interval        =   10
      Left            =   120
      Top             =   120
   End
   Begin VB.Menu menu_File 
      Caption         =   "&File"
      Begin VB.Menu menu_File_New 
         Caption         =   "&New"
         Shortcut        =   ^N
      End
      Begin VB.Menu menu_File_Open 
         Caption         =   "&Open"
      End
      Begin VB.Menu menu_File_Move 
         Caption         =   "&Move"
         Shortcut        =   {F7}
      End
      Begin VB.Menu menu_File_Copy 
         Caption         =   "&Copy"
         Shortcut        =   {F8}
      End
      Begin VB.Menu menu_File_Delete 
         Caption         =   "&Delete"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu menu_File_Properties 
         Caption         =   "&Properties"
         Shortcut        =   ^P
      End
      Begin VB.Menu menu_File_Space01 
         Caption         =   "-"
      End
      Begin VB.Menu menu_File_Run 
         Caption         =   "&Run"
      End
      Begin VB.Menu menu_File_Space02 
         Caption         =   "-"
      End
      Begin VB.Menu menu_File_Logoff 
         Caption         =   "&Logoff..."
      End
      Begin VB.Menu menu_File_Shutdown 
         Caption         =   "&Shutdown..."
      End
      Begin VB.Menu menu_File_Exit 
         Caption         =   "&Exit"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu menu_Options 
      Caption         =   "&Options"
      Begin VB.Menu menu_Options_AutoArrange 
         Caption         =   "&Auto Arrange"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_Options_MinimizeOnUse 
         Caption         =   "&Minimize on Use"
      End
      Begin VB.Menu menu_Options_SaveSettings 
         Caption         =   "&Save settings on Exit"
         Checked         =   -1  'True
      End
      Begin VB.Menu menu_Options_Space01 
         Caption         =   "-"
      End
      Begin VB.Menu menu_Options_SaveSettingsNow 
         Caption         =   "&Save Settings Now"
      End
      Begin VB.Menu menu_Options_Space02 
         Caption         =   "-"
      End
      Begin VB.Menu menu_Options_UpdateGroups 
         Caption         =   "&Update Program Groups"
      End
   End
   Begin VB.Menu menu_Window 
      Caption         =   "&Window"
      WindowList      =   -1  'True
      Begin VB.Menu menu_Window_Cascade 
         Caption         =   "&Cascade"
         Shortcut        =   +{F5}
      End
      Begin VB.Menu menu_Window_Title 
         Caption         =   "&Title"
         Shortcut        =   +{F4}
      End
      Begin VB.Menu menu_Window_ArrangeIcons 
         Caption         =   "&Arrange Icons"
      End
   End
   Begin VB.Menu menu_Help 
      Caption         =   "&Help"
      Begin VB.Menu menu_Help_About 
         Caption         =   "&About Program Manager..."
      End
   End
End
Attribute VB_Name = "Form_Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim ActiveGroupForm As Form_Group

Dim Groups As String
Dim GroupsList As New Collection
Dim GroupsArray
Private Sub EnableDisableControls()
If Not Me.ActiveForm Is Nothing Then
    Dim GroupProgramCount As Integer
    
    Set ActiveGroupForm = Me.ActiveForm
    GroupProgramCount = ActiveGroupForm.Listview_Programs.ListItems.Count
    
    If GroupProgramCount > 0 Then
        menu_File_Copy.Enabled = True
        menu_File_Open.Enabled = True
        
        If Forms.Count > 2 Then
            menu_File_Move.Enabled = True
        Else
            menu_File_Move.Enabled = False
        End If
    Else
        menu_File_Copy.Enabled = False
        menu_File_Move.Enabled = False
        menu_File_Open.Enabled = False
    End If
    
    menu_File_Properties.Enabled = True
    menu_File_Delete.Enabled = True
Else
    menu_File_Copy.Enabled = False
    menu_File_Delete.Enabled = False
    menu_File_Move.Enabled = False
    menu_File_Properties.Enabled = False
    menu_File_Open.Enabled = False
End If
End Sub
Public Function UpdateGroups()
Dim F As Form

For Each F In Forms
    If F.Caption = Form_Main.Caption Then

    Else
        If F.MDIChild = True Then
            Call F.LoadProgramItems(F.Tag)
        End If
    End If
Next F
End Function
Public Function LoadGroups()
Dim FrmGroup As Form_Group
Dim i As Integer
Dim GroupName, GroupUser, GroupType As String
Dim Frm As Form
Dim FrmTop, FrmLeft, FrmWidth, FrmHeight As Integer

On Error Resume Next
For Each Frm In Forms
    If Not Frm.Name = "Form_Main" Then
        Frm.DeleteGroup = True
        Unload Frm
    End If
Next Frm

For i = 1 To modSettings.EnumRegistryKeys(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\").Count
    GroupName = modSettings.EnumRegistryKeys(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\")(i)
    
    GroupUser = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@user", 1)
    GroupType = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@type", 1)
    
    If GroupType = GRP_PERSONAL Then
        If Not GroupUser = Ext.GetCurrentUser Then
            GoTo GotoNext
        End If
    End If
    
    Set FrmGroup = New Form_Group

    FrmWidth = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@width", 1)
    FrmHeight = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@height", 1)
    FrmTop = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@top", 1)
    FrmLeft = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@left", 1)
    
    FrmGroup.WindowState = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@windowState", 1)
    FrmGroup.Caption = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & GroupName, "@name", GroupName)
    FrmGroup.Tag = GroupName
    FrmGroup.LoadProgramItems CStr(GroupName)
    
    FrmGroup.Move FrmLeft, FrmTop, FrmWidth, FrmHeight
    
    FrmGroup.Show

GotoNext:
Next
End Function
Private Sub MDIForm_Load()
Dim FrmTop, FrmLeft, FrmWidth, FrmHeight As Integer

Me.Caption = "Program Manager - " & Get_Hostname & "\" & Ext.GetCurrentUser

menu_Options_AutoArrange.Checked = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "AutoArrange", "True")
menu_Options_MinimizeOnUse.Checked = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "MinimizeOnUse", "False")
menu_Options_SaveSettings.Checked = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "SaveSettingsOnExit", "True")

FrmTop = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "Top", 0)
FrmLeft = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "Left", 0)
FrmWidth = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "Width", 500)
FrmHeight = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "Height", 500)

Move FrmLeft, FrmTop, FrmWidth, FrmHeight
Me.WindowState = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "WindowState", 1)

Call LoadGroups
End Sub

Private Sub MDIForm_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Cancel = True

Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "WindowState", Me.WindowState)
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "Left", Me.Left)
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "Top", Me.Top)
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "Height", Me.Height)
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "Width", Me.Width)

Dim Frm As Form
For Each Frm In Forms
    Unload Frm
Next

Cancel = False
End Sub

Private Sub menu_File_Copy_Click()
Form_Copy.intCurrentProgramItem = Replace(ActiveForm.Listview_Programs.SelectedItem.Key, "#", vbNullString)
Form_Copy.strCurrentGroup = ActiveForm.Tag
Form_Copy.strCurrentProgramItem = ActiveForm.Listview_Programs.SelectedItem.Text

Form_Copy.Show vbModal
End Sub

Private Sub menu_File_Delete_Click()
Dim ItemID As Integer
Dim ItemCaption As String
Dim ItemGroup As String

If ActiveForm.WindowState = vbMinimized Then
    If MsgBox("Are you sure you want to delete group '" & ActiveForm.Caption & "'?", vbQuestion + vbYesNo) = vbYes Then
        ItemGroup = ActiveForm.Tag
        
        Call modSettings.DeleteRegistryKey(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\" & ItemGroup)
        
        ActiveForm.DeleteGroup = True
        Unload ActiveForm
    End If
Else
    If ActiveForm.Listview_Programs.ListItems.Count > 0 Then
        If Not ActiveForm.Listview_Programs.SelectedItem.Text = vbNullString Then
            ItemID = Replace(ActiveForm.Listview_Programs.SelectedItem.Key, "#", vbNullString)
            ItemCaption = ActiveForm.Listview_Programs.SelectedItem.Text
            ItemGroup = ActiveForm.Tag
            
            If MsgBox("Are you sure you want to delete item '" & ItemCaption & "'?", vbQuestion + vbYesNo) = vbYes Then
                Call modSettings.DeleteRegistryValue(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\" & ItemGroup & "\", Format(ItemID, "000"))
                Call ActiveForm.LoadProgramItems(ActiveForm.Tag)
            End If
        End If
    End If
End If
End Sub

Private Sub menu_File_Exit_Click()
Unload Me
End Sub

Private Sub menu_File_Logoff_Click()
If MsgBox("Are you sure you want to logoff?", vbQuestion + vbYesNo) = vbYes Then
    Call Shell("logoff", vbHide)
End If
End Sub

Private Sub menu_File_Move_Click()
Form_Move.strCurrentGroup = ActiveForm.Tag
Form_Move.strCurrentProgramItem = ActiveForm.Listview_Programs.SelectedItem.Text
Form_Move.intCurrentProgramItem = Replace(ActiveForm.Listview_Programs.SelectedItem.Key, "#", vbNullString)

Form_Move.Show vbModal
End Sub

Private Sub menu_File_New_Click()
If Not ActiveForm Is Nothing Then
    Form_Group_New.CurrentGroup = ActiveForm.Tag
End If

Form_Group_New.Show vbModal
End Sub

Private Sub menu_File_Open_Click()
ActiveForm.WindowState = vbMaximized
End Sub

Private Sub menu_File_Properties_Click()
Dim ItemID As Integer
Dim ItemGroup As String
Dim ItemCodeLine As String
Dim ItemArray

If Not ActiveForm.WindowState = vbMinimized Then
    If ActiveForm.Listview_Programs.ListItems.Count > 0 Then
        ItemID = Replace(ActiveForm.Listview_Programs.SelectedItem.Key, "#", vbNullString)
        ItemGroup = Form_Main.ActiveForm.Tag
        ItemCodeLine = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & ItemGroup, Format(ItemID, "000"))
        ItemArray = Split(ItemCodeLine, ";")
        
        Form_Program_Properties.FormType = "EDIT"
        Form_Program_Properties.ProgramID = ItemID
        Form_Program_Properties.Textbox_CommandLine.Text = ItemArray(0)
        Form_Program_Properties.Textbox_Description.Text = ItemArray(1)
        Form_Program_Properties.Checkbox_Minimized.value = ItemArray(2)
        Form_Program_Properties.Show
    End If
Else
    Form_Group_New_Desc.FormType = "EDIT"
    Form_Group_New_Desc.CurrentGroupName = ActiveForm.Tag
    Form_Group_New_Desc.Textbox_Description.Text = ActiveForm.Caption
    Form_Group_New_Desc.Show vbModal
End If
End Sub

Private Sub menu_File_Run_Click()
Call Dialogs.ShowDialog(Form_Run, Me, "Run")
End Sub

Private Sub menu_File_Shutdown_Click()
If MsgBox("Are you sure you want to shutdown the computer?", vbQuestion + vbYesNo) = vbYes Then
    Call Shell("shutdown -t 0 -s", vbHide)
End If
End Sub
Private Sub menu_Help_About_Click()
Call Dialogs.ShowDialog(Form_About, Me, "About")
End Sub

Private Sub menu_Options_AutoArrange_Click()
If menu_Options_AutoArrange.Checked = True Then
    menu_Options_AutoArrange.Checked = False
Else
    menu_Options_AutoArrange.Checked = True
End If

Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "AutoArrange", IIf(menu_Options_AutoArrange.Checked, 1, 0))
End Sub

Private Sub menu_Options_MinimizeOnUse_Click()
If menu_Options_MinimizeOnUse.Checked = True Then
    menu_Options_MinimizeOnUse.Checked = False
Else
    menu_Options_MinimizeOnUse.Checked = True
End If

Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "MinimizeOnUse", IIf(menu_Options_MinimizeOnUse.Checked, 1, 0))
End Sub

Private Sub menu_Options_SaveSettings_Click()
If menu_Options_SaveSettings.Checked = True Then
    menu_Options_SaveSettings.Checked = False
Else
    menu_Options_SaveSettings.Checked = True
End If

Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "SaveSettingsOnExit", IIf(menu_Options_SaveSettings, 1, 0))
End Sub

Private Sub menu_Options_UpdateGroups_Click()
Call UpdateGroups
End Sub

Private Sub menu_Window_ArrangeIcons_Click()
Me.Arrange vbArrangeIcons
End Sub

Private Sub menu_Window_Cascade_Click()
Me.Arrange vbCascade
End Sub

Private Sub menu_Window_Title_Click()
Me.Arrange vbTileHorizontal
End Sub

Private Sub Timer_Main_Timer()
Call EnableDisableControls
End Sub
