VERSION 5.00
Begin VB.Form Form_About 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About Program Manager"
   ClientHeight    =   4710
   ClientLeft      =   2565
   ClientTop       =   1500
   ClientWidth     =   5895
   BeginProperty Font 
      Name            =   "Verdana"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form_About.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4710
   ScaleWidth      =   5895
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   2175
      Left            =   0
      ScaleHeight     =   2175
      ScaleWidth      =   6135
      TabIndex        =   5
      Top             =   1800
      Width           =   6135
      Begin ProgramManager.Hyperlink Hyperlink_Website 
         Height          =   195
         Left            =   1680
         TabIndex        =   13
         Top             =   1800
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   344
         Caption         =   "audiostation.org"
         URL             =   "https://www.audiostation.org"
         BackColor       =   16777215
         ColorNormal     =   16711680
         ColorHot        =   16711680
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Visit our website:"
         Height          =   195
         Left            =   120
         TabIndex        =   12
         Top             =   1800
         Width           =   1485
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Application designer and programmer:"
         Height          =   195
         Left            =   120
         TabIndex        =   11
         Top             =   1200
         Width           =   3315
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Alex van den Berg"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   3480
         TabIndex        =   10
         Top             =   1200
         Width           =   1785
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Copyright © Sibra-Soft 2009 - 2023"
         Height          =   195
         Left            =   120
         TabIndex        =   9
         Top             =   1380
         Width           =   3090
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Current version:"
         Height          =   195
         Left            =   120
         TabIndex        =   8
         Top             =   120
         Width           =   1425
      End
      Begin VB.Label Label_Version 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Unknown"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   1605
         TabIndex        =   7
         Top             =   120
         Width           =   885
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   $"Form_About.frx":000C
         Height          =   615
         Left            =   120
         TabIndex        =   6
         Top             =   480
         Width           =   5415
      End
   End
   Begin VB.CommandButton Button_Close 
      Caption         =   "&Close"
      Height          =   375
      Left            =   2340
      TabIndex        =   1
      Top             =   4200
      Width           =   1215
   End
   Begin VB.PictureBox PictureBox_Panel 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   735
      Left            =   0
      ScaleHeight     =   735
      ScaleWidth      =   5895
      TabIndex        =   0
      Top             =   0
      Width           =   5895
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Remake version of the Windows 3.11 program manager"
         Height          =   195
         Left            =   720
         TabIndex        =   3
         Top             =   340
         Width           =   4815
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Program Manager"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   720
         TabIndex        =   2
         Top             =   160
         Width           =   1740
      End
      Begin VB.Image Image1 
         Height          =   480
         Left            =   120
         Picture         =   "Form_About.frx":009D
         Top             =   120
         Width           =   480
      End
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   $"Form_About.frx":0967
      Height          =   795
      Left            =   120
      TabIndex        =   4
      Top             =   840
      Width           =   5655
   End
End
Attribute VB_Name = "Form_About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Button_Close_Click()
Unload Me
End Sub

Private Sub Form_Load()
Label_Version.Caption = App.Major & "." & App.Minor & "." & App.Revision
End Sub
