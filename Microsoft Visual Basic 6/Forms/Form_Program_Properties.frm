VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.OCX"
Begin VB.Form Form_Program_Properties 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Properties"
   ClientHeight    =   2910
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   7725
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_Program_Properties.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   194
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   515
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer_Main 
      Interval        =   10
      Left            =   120
      Top             =   2160
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   120
      Top             =   1680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picturebox_Icon 
      BorderStyle     =   0  'None
      Height          =   600
      Left            =   600
      ScaleHeight     =   40
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   40
      TabIndex        =   20
      Tag             =   "0"
      Top             =   1920
      Width           =   600
   End
   Begin VB.CommandButton Button_ChangeIcon 
      Caption         =   "Change Icon..."
      Enabled         =   0   'False
      Height          =   375
      Left            =   5880
      TabIndex        =   19
      Top             =   2280
      Width           =   1575
   End
   Begin VB.CommandButton Button_Browse 
      Caption         =   "Browse..."
      Height          =   375
      Left            =   5880
      TabIndex        =   18
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton Button_Cancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5880
      TabIndex        =   17
      Top             =   720
      Width           =   1575
   End
   Begin VB.CommandButton Button_OK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   5880
      TabIndex        =   16
      Top             =   240
      Width           =   1575
   End
   Begin VB.CheckBox Checkbox_Minimized 
      Caption         =   "Run Minimized"
      Height          =   255
      Left            =   2160
      TabIndex        =   15
      Top             =   1920
      Width           =   1695
   End
   Begin VB.CheckBox Checkbox_SeparateMemory 
      Caption         =   "Run in Separate Memory Space"
      Enabled         =   0   'False
      Height          =   255
      Left            =   2160
      TabIndex        =   14
      Top             =   2205
      Width           =   3135
   End
   Begin VB.TextBox Textbox_ShortcutKey 
      Height          =   285
      Left            =   2160
      Locked          =   -1  'True
      TabIndex        =   13
      Text            =   "None"
      Top             =   1320
      Width           =   3495
   End
   Begin VB.TextBox Textbox_WorkingDirectory 
      Height          =   285
      Left            =   2160
      TabIndex        =   11
      Top             =   960
      Width           =   3495
   End
   Begin VB.TextBox Textbox_CommandLine 
      Height          =   285
      Left            =   2160
      TabIndex        =   9
      Top             =   600
      Width           =   3495
   End
   Begin VB.TextBox Textbox_Description 
      Height          =   285
      Left            =   2160
      TabIndex        =   7
      Top             =   240
      Width           =   3495
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3780
      Index           =   3
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample4 
         Caption         =   "Sample 4"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1785
         Left            =   2100
         TabIndex        =   5
         Top             =   840
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3780
      Index           =   2
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample3 
         Caption         =   "Sample 3"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1785
         Left            =   1545
         TabIndex        =   4
         Top             =   675
         Width           =   2055
      End
   End
   Begin VB.PictureBox picOptions 
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3780
      Index           =   1
      Left            =   -20000
      ScaleHeight     =   3780
      ScaleWidth      =   5685
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   480
      Width           =   5685
      Begin VB.Frame fraSample2 
         Caption         =   "Sample 2"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1785
         Left            =   645
         TabIndex        =   3
         Top             =   300
         Width           =   2055
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Shortcut Key:"
      Height          =   195
      Left            =   120
      TabIndex        =   12
      Top             =   1350
      Width           =   1185
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Working Directory:"
      Height          =   195
      Left            =   120
      TabIndex        =   10
      Top             =   990
      Width           =   1635
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Command Line:"
      Height          =   195
      Left            =   120
      TabIndex        =   8
      Top             =   630
      Width           =   1365
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description:"
      Height          =   195
      Left            =   120
      TabIndex        =   6
      Top             =   275
      Width           =   1035
   End
End
Attribute VB_Name = "Form_Program_Properties"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public FormType As String
Public ProgramID As Integer

Public CurrentProgram As String

Dim CurrentGroup As String
Private Sub Command4_Click()
Screen.MousePointer = vbHourglass

' Change icon dialog
End Sub

Private Sub Button_Browse_Click()
On Error GoTo ErrorHandler
With CommonDialog
    .InitDir = App.path
    .DialogTitle = "Select the application"
    .Filter = "Applications (*.exe, *.msc)|*.exe;*.msc"
    .CancelError = True
    
    .ShowOpen
End With

Textbox_Description.Text = Ext.GetFileNameFromFilePath(CommonDialog.Filename, False)
Textbox_CommandLine.Text = Chr(34) & CommonDialog.Filename & Chr(34)

CurrentProgram = CommonDialog.Filename

Call ExtractIcons.GetIcon(CommonDialog.Filename, 0, Form_Program_Properties.Picturebox_Icon)

Exit Sub
ErrorHandler:
Select Case Err.Number
    Case cdlCancel

End Select
End Sub

Private Sub Button_Cancel_Click()
Unload Me
End Sub

Private Sub Button_ChangeIcon_Click()
Dim IconIndex As Integer

IconIndex = IconPickDialog(Me, CurrentProgram)

Call GetIcon(CurrentProgram, IconIndex, Picturebox_Icon)
Picturebox_Icon.Tag = IconIndex
End Sub

Private Sub Button_OK_Click()
Dim ProgramCount As Integer
Dim ProgramCodeLine As String

If FormType = "EDIT" Then
    ProgramCodeLine = Replace(Textbox_CommandLine.Text, Chr(34), vbNullString) & ";" & Textbox_Description.Text & ";" & Checkbox_Minimized.value & ";" & Picturebox_Icon.Tag & ";" & Checkbox_SeparateMemory.value
    
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & CurrentGroup, Format(ProgramID, "000"), ProgramCodeLine)
Else
    ProgramCount = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & CurrentGroup, "@count", 0)
    ProgramCount = ProgramCount + 1
    
    ProgramCodeLine = Replace(Textbox_CommandLine.Text, Chr(34), vbNullString) & ";" & Textbox_Description.Text & ";" & Checkbox_Minimized.value & ";" & Picturebox_Icon.Tag & ";" & Checkbox_SeparateMemory.value
    
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & CurrentGroup, Format(ProgramCount, "000"), ProgramCodeLine)
    Call Form_Main.ActiveForm.LoadProgramItems(CurrentGroup)
    
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & CurrentGroup, "@count", ProgramCount)
End If

Unload Me
End Sub

Private Sub Form_Load()
Dim ProgramItemCodeLine
Dim IconResourceIndex As Integer
Dim ConvStr As String

If FormType = "EDIT" Then
    CurrentGroup = Form_Main.ActiveForm.Tag
    
    ProgramItemCodeLine = Split(modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & CurrentGroup, Format(ProgramID, "000")), ";")
    
    ConvStr = ProgramItemCodeLine(0)
    IconResourceIndex = ProgramItemCodeLine(3)
    Picturebox_Icon.Tag = IconResourceIndex
    CurrentProgram = ProgramItemCodeLine(0)
           
    Call GetIcon(ConvStr, IconResourceIndex, Picturebox_Icon)
Else
    CurrentGroup = Form_Group_New.CurrentGroup
End If
End Sub

Private Sub Timer_Main_Timer()
If StrExt.IsNullOrWhiteSpace(Textbox_Description.Text) Or StrExt.IsNullOrWhiteSpace(Textbox_CommandLine.Text) Then
    Button_OK.Enabled = False
    Button_ChangeIcon.Enabled = False
Else
    Button_OK.Enabled = True
    Button_ChangeIcon.Enabled = True
End If
End Sub
