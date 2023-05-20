VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.OCX"
Begin VB.Form Form_Run 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "-"
   ClientHeight    =   2055
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   6015
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_Run.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   6015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer_Main 
      Interval        =   10
      Left            =   3720
      Top             =   1200
   End
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   3120
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Button_Browse 
      Caption         =   "&Browse..."
      Height          =   375
      Left            =   4560
      TabIndex        =   12
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Button_Cancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   4560
      TabIndex        =   11
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton Button_OK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Enabled         =   0   'False
      Height          =   375
      Left            =   4560
      TabIndex        =   10
      Top             =   360
      Width           =   1215
   End
   Begin VB.CheckBox Checkbox_SeparateMemory 
      Caption         =   "Run in Separate Memory Space"
      Enabled         =   0   'False
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   1480
      Width           =   3135
   End
   Begin VB.CheckBox Checkbox_RunMinimized 
      Caption         =   "Run Minimized"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   1200
      Width           =   1695
   End
   Begin VB.ComboBox Combox_Program 
      Height          =   315
      Left            =   240
      TabIndex        =   7
      Top             =   600
      Width           =   4095
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
   Begin ProgramManager.ShellPipe ShellPipe 
      Left            =   3600
      Top             =   0
      _ExtentX        =   635
      _ExtentY        =   635
      PollInterval    =   300
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Command Line:"
      Height          =   195
      Left            =   240
      TabIndex        =   6
      Top             =   360
      Width           =   1365
   End
End
Attribute VB_Name = "Form_Run"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim RegisterValue As String
Private Sub Button_Browse_Click()
On Error GoTo ErrorHandler
With CommonDialog
    .CancelError = True
    .DialogTitle = "Select the application you want to run"
    .Filter = "Applications (*.exe, *.msc)|*.exe;*.msc"
    
    .ShowOpen
    
    Combox_Program.Text = .Filename
End With

Exit Sub
ErrorHandler:
Select Case Err.Number
    Case 0
    Case cdlCancel
End Select
End Sub

Private Sub Button_Cancel_Click()
Dialogs.Result = vbCancel

Unload Me
End Sub

Private Sub Button_OK_Click()
Dim RegisterValueNew As String

Dialogs.Result = vbOK

Dim command As New StringBuilder

Screen.MousePointer = vbHourglass

command.Append "cmd.exe"
command.Append " /C start"

If Checkbox_RunMinimized.value = vbChecked Then
    command.Append " /MIN"
Else
    command.Append " /MAX"
End If

command.Append " " & Combox_Program.Text

' Execute the command
Result = ShellPipe.Run(command.toString)
If Result = SP_SUCCESS Then

End If

Screen.MousePointer = vbDefault
End Sub

Private Sub Form_Load()
Dim SplitValue
Dim i As Integer

RegisterValue = modSettings.ReadSetting("Sibra-Soft", "Program Manager", "RunList", vbNullString)
SplitValue = Split(RegisterValue, ";")

For i = 0 To UBound(SplitValue) - 1
    Combox_Program.AddItem SplitValue(i)
Next
End Sub

Private Sub ShellPipe_EOF(ByVal EOFType As SPEOF_TYPES)
If EOFType = SPEOF_BROKEN_PIPE Then
    If StrExt.Contains(RegisterValue, Combox_Program.Text) Then
    
    Else
        RegisterValueNew = RegisterValue & Combox_Program.Text & ";"
        Call modSettings.WriteSetting("Sibra-Soft", "Program Manager", "RunList", RegisterValueNew)
    End If
    
    Unload Me
End If
End Sub

Private Sub Timer_Main_Timer()
If StrExt.IsNullOrWhiteSpace(Combox_Program.Text) Then
    Button_OK.Enabled = False
Else
    Button_OK.Enabled = True
End If
End Sub
