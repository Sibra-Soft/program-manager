VERSION 5.00
Begin VB.Form Form_Move 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Move Program Item"
   ClientHeight    =   1815
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   5970
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_Move.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1815
   ScaleWidth      =   5970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Button_Cancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   4440
      TabIndex        =   13
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton Button_OK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   4440
      TabIndex        =   12
      Top             =   600
      Width           =   1215
   End
   Begin VB.ComboBox Combox_Groups 
      Height          =   315
      Left            =   240
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   1320
      Width           =   3375
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
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "To Group:"
      Height          =   195
      Left            =   240
      TabIndex        =   10
      Top             =   1080
      Width           =   870
   End
   Begin VB.Label Label_ProgramGroupName 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "-- ONBEKEND --"
      Height          =   195
      Left            =   2520
      TabIndex        =   9
      Top             =   360
      Width           =   1380
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "From Program Group:"
      Height          =   195
      Left            =   240
      TabIndex        =   8
      Top             =   360
      Width           =   1890
   End
   Begin VB.Label Label_ProgramName 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "-- ONBEKEND --"
      Height          =   195
      Left            =   2520
      TabIndex        =   7
      Top             =   120
      Width           =   1380
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Move Program Item:"
      Height          =   195
      Left            =   240
      TabIndex        =   6
      Top             =   120
      Width           =   1785
   End
End
Attribute VB_Name = "Form_Move"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public strCurrentGroup As String
Public strCurrentProgramItem As String

Public intCurrentProgramItem As Integer

Private Sub Button_Cancel_Click()
Dialogs.Result = vbCancel

Unload Me
End Sub

Private Sub Button_OK_Click()
Dim ProgramItemCodeLine As String
Dim ProgramItemIndexNew As Integer
Dim strCurrentSelectedGroup As String

strCurrentSelectedGroup = Combox_Groups.Text

ProgramItemIndexNew = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & strCurrentGroup, "@count", 0)
ProgramItemIndexNew = ProgramItemIndexNew + 1

ProgramItemCodeLine = modSettings.ReadSetting("Sibra-Soft", "Program Manager\" & strCurrentGroup, Format(intCurrentProgramItem, "000"))

'Copy Selected Program Item
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & strCurrentSelectedGroup, Format(ProgramItemIndexNew, "000"), ProgramItemCodeLine)
Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & strCurrentGroup, "@count", ProgramItemIndexNew)

'Delete Current Group Program Item
Call modSettings.DeleteRegistryValue(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\" & strCurrentGroup & "\", Format(intCurrentProgramItem, "000"))

Dialogs.Result = vbOK

Form_Main.UpdateGroups
Unload Me
End Sub

Private Sub Form_Load()
Dim i As Integer
Dim GroupName As String

Label_ProgramGroupName.Caption = strCurrentGroup
Label_ProgramName.Caption = strCurrentProgramItem

Combox_Groups.Clear
For i = 1 To modSettings.EnumRegistryKeys(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\").Count
    GroupName = modSettings.EnumRegistryKeys(HKEY_CURRENT_USER, "Software\Sibra-Soft\Program Manager\")(i)
    
    If Not GroupName = strCurrentGroup Then
        Combox_Groups.AddItem GroupName
    End If
Next

Combox_Groups.ListIndex = 0
End Sub
