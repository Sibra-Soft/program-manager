VERSION 5.00
Begin VB.Form Form_Group_New_Desc 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Personal Program Group Properties"
   ClientHeight    =   1815
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   6375
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_Group_New_Desc.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1815
   ScaleWidth      =   6375
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Button_Cancel 
      Caption         =   "&Cancel"
      Height          =   375
      Left            =   5040
      TabIndex        =   9
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton Button_OK 
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   5040
      TabIndex        =   8
      Top             =   240
      Width           =   1095
   End
   Begin VB.TextBox TextBox_Description 
      Height          =   285
      Left            =   240
      TabIndex        =   7
      Top             =   720
      Width           =   4215
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Description:"
      Height          =   195
      Left            =   240
      TabIndex        =   6
      Top             =   480
      Width           =   1035
   End
End
Attribute VB_Name = "Form_Group_New_Desc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public FormType As String
Public CurrentGroupName As String
Private Sub Button_Cancel_Click()
Dialogs.Result = vbCancel

Unload Me
End Sub

Private Sub Button_OK_Click()
Dim Frm As New Form_Group

If FormType = "EDIT" Then
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & CurrentGroupName, "@name", Textbox_Description.Text)
Else
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Textbox_Description.Text, "@type", FormType)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Textbox_Description.Text, "@name", Textbox_Description.Text)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Textbox_Description.Text, "@count", 0)
    Call modSettings.WriteSetting("Sibra-Soft", "Program Manager\" & Textbox_Description.Text, "@user", Ext.GetCurrentUser)
End If

Dialogs.Result = vbOK

Form_Main.LoadGroups
Unload Me
End Sub

Private Sub Form_Load()
If FormType = "PROG_GROUP_PERSONAL" Then: Me.Caption = "Personal Program Group Properties"
If FormType = "PROG_GROUP_COMMON" Then: Me.Caption = "Common Program Group Properties"
End Sub
