VERSION 5.00
Begin VB.Form Form_Group_New 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "New Program Object"
   ClientHeight    =   2235
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   5310
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_Group_New.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2235
   ScaleWidth      =   5310
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Button_Cancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   3960
      TabIndex        =   11
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton Button_OK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3960
      TabIndex        =   7
      Top             =   240
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   " New "
      Height          =   1935
      Left            =   120
      TabIndex        =   6
      Top             =   120
      Width           =   3615
      Begin VB.OptionButton Option_NewCommonGroup 
         Caption         =   "Common program group"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   1200
         Width           =   2535
      End
      Begin VB.OptionButton Option_NewPersonalGroup 
         Caption         =   "Personal program group"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   840
         Value           =   -1  'True
         Width           =   2535
      End
      Begin VB.OptionButton Option_NewProgramItem 
         Caption         =   "Program item"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   480
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
End
Attribute VB_Name = "Form_Group_New"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public CurrentGroup As String

Private Sub Button_Cancel_Click()
Dialogs.Result = vbCancel

Unload Me
End Sub

Private Sub Button_OK_Click()
Dialogs.Result = vbOK

If Option_NewProgramItem.value = True Then
    Form_Program_Properties.Show vbModal
    Unload Me
    Exit Sub
End If

With Form_Group_New_Desc
    If Option_NewPersonalGroup.value = True Then: .FormType = "PROG_GROUP_PERSONAL"
    If Option_NewCommonGroup.value = True Then: .FormType = "PROG_GROUP_COMMON"
    
    Unload Me
    .Show vbModal
End With
End Sub

Private Sub Form_Load()
If CurrentGroup = vbNullString Then
    Option_NewProgramItem.Enabled = False
Else
    Option_NewProgramItem.Enabled = True
    Option_NewProgramItem.value = True
End If
End Sub
