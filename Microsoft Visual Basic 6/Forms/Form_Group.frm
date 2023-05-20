VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Begin VB.Form Form_Group 
   BackColor       =   &H00FFFFFF&
   Caption         =   "-- GROUPNAME --"
   ClientHeight    =   7185
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9150
   Icon            =   "Form_Group.frx":0000
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7185
   ScaleWidth      =   9150
   ShowInTaskbar   =   0   'False
   WindowState     =   1  'Minimized
   Begin MSComctlLib.ImageList ImageList_Listview 
      Left            =   8400
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      UseMaskColor    =   0   'False
      _Version        =   393216
   End
   Begin MSComctlLib.ListView Listview_Programs 
      Height          =   3255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   5741
      LabelEdit       =   1
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      _Version        =   393217
      Icons           =   "ImageList_Listview"
      SmallIcons      =   "ImageList_Listview"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   255
      Left            =   8760
      ScaleHeight     =   255
      ScaleWidth      =   255
      TabIndex        =   1
      Top             =   720
      Visible         =   0   'False
      Width           =   255
   End
   Begin ProgramManager.ShellPipe ShellPipe 
      Left            =   8640
      Top             =   1200
      _ExtentX        =   635
      _ExtentY        =   635
      PollInterval    =   300
   End
End
Attribute VB_Name = "Form_Group"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Programs As String
Dim GroupName As String

Public DeleteGroup As Boolean
Public Function LoadProgramItems(strCurrentGroup As String)
Dim i As Integer
Dim imgObj As ListImage

Dim RegEntry As String
Dim ProgramID As Integer
Dim ProgramIconResourceIndex As Integer

Dim ConvStr As String

Listview_Programs.ListItems.Clear
Listview_Programs.Icons = Nothing

ImageList_Listview.ListImages.Clear

If Form_Main.menu_Options_AutoArrange.Checked = True Then: Listview_Programs.Arrange = lvwAutoTop

For i = 1 To modSettings.EnumRegistryValues(HKEY_CURRENT_USER, "software\Sibra-Soft\Program Manager\" & strCurrentGroup & "\").Count
    'Get all program information
    RegEntry = modSettings.EnumRegistryValues(HKEY_CURRENT_USER, "software\Sibra-Soft\Program Manager\" & strCurrentGroup & "\")(i)
    ProgramID = StrExt.SplitStr(RegEntry, ";", 0)
    ProgramIconResourceIndex = StrExt.SplitStr(RegEntry, ";", 4)
    
    ConvStr = StrExt.SplitStr(RegEntry, ";", 1)
    
    'Get the program icon
    Call GetIcon(ConvStr, ProgramIconResourceIndex, Picture1)
    
    Set imgObj = ImageList_Listview.ListImages.Add(, , Picture1.Image)
    Set Listview_Programs.Icons = ImageList_Listview
    
    'Add program to desktop view
    Listview_Programs.ListItems.Add , "#" & ProgramID, StrExt.SplitStr(RegEntry, ";", 2), i
    
    GroupName = strCurrentGroup
Next
End Function

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
Cancel = True

If Not DeleteGroup Then
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Me.Tag, "@windowState", Me.WindowState)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Me.Tag, "@top", Me.Top)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Me.Tag, "@left", Me.Left)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Me.Tag, "@height", Me.Height)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Me.Tag, "@width", Me.Width)
End If

Cancel = False
End Sub

Private Sub Form_Resize()
Listview_Programs.Height = Me.ScaleHeight
Listview_Programs.Width = Me.ScaleWidth

Picture1.Height = 32 * Screen.TwipsPerPixelY
Picture1.Width = 32 * Screen.TwipsPerPixelX
End Sub
Private Sub Listview_Programs_DblClick()
Dim ApplicationID As Integer
Dim ApplicationCodeLine
Dim Application As String
Dim ApplicationStartupOption As Integer

Dim Result As SP_RESULTS
Dim command As New StringBuilder

Screen.MousePointer = vbHourglass

If Listview_Programs.ListItems.Count > 0 Then
    ApplicationID = Replace(Listview_Programs.SelectedItem.Key, "#", vbNullString)
    ApplicationCodeLine = Split(modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & Me.Tag, Format(ApplicationID, "000")), ";")
    Application = ApplicationCodeLine(0)
    ApplicationStartupOption = ApplicationCodeLine(2)
    
    command.Append "cmd.exe"
    command.Append " /C start"
    
    If ApplicationStartupOption = 1 Then: command.Append " /MIN"
    
    command.Append " /D " & Chr(34) & Ext.GetPathFromFilename(Application) & Chr(34)
    command.Append " " & Ext.GetFileNameFromFilePath(Application, True)
    
    ' Execute the command
    Result = ShellPipe.Run(command.toString)
    If Result = SP_SUCCESS Then
    
    Else
        MsgBox "Error"
    End If
End If

Screen.MousePointer = vbDefault
End Sub
