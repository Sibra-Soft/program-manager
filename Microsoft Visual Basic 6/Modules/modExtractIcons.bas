Attribute VB_Name = "modExtractIcons"
Option Explicit

Dim glLargeIcons() As Long
Dim glSmallIcons() As Long
Dim lIndex         As Long
Dim lIcons         As Long
Dim sExeName       As String

Const LARGE_ICON As Integer = 32
Const SMALL_ICON As Integer = 16
Const DI_NORMAL = 3

Private Declare Function PickIconDlg Lib "shell32.dll" Alias "#62" (ByVal hwndOwner As Long, ByVal lpstrFile As String, ByVal nMaxFile As Long, lpdwIconIndex As Long) As Long
Private Declare Function DrawIconEx Lib "user32" (ByVal hdc As Long, ByVal xLeft As Long, ByVal yTop As Long, ByVal hIcon As Long, ByVal cxWidth As Long, ByVal cyWidth As Long, ByVal istepIfAniCur As Long, ByVal hbrFlickerFreeDraw As Long, ByVal diFlags As Long) As Long
Private Declare Function ExtractIconEx Lib "shell32.dll" Alias "ExtractIconExA" (ByVal lpszFile As String, ByVal nIconIndex As Long, phiconLarge As Long, phiconSmall As Long, ByVal nIcons As Long) As Long
Public Function IconPickDialog(TargetFrm As Form, File As String) As Long
Dim IconFile As String  ' file that contains the desired icon
Dim IconIndex As Long  ' index of the desired icon
Dim slength As Long  ' length of returned string
    
IconFile = Space(256)
IconFile = Left(File, slength)

IconFile = File & vbNullChar & Space(256)
IconFile = StrConv(IconFile, vbUnicode)

Call PickIconDlg(TargetFrm.hwnd, IconFile, Len(IconFile), IconIndex)

IconPickDialog = IconIndex
End Function
Public Function GetIcon(stdFile As String, IconIndex As Integer, objPictureBox As PictureBox)
Dim l As Long

lIcons = ExtractIconEx(stdFile, -1, 0, 0, 0)

ReDim glLargeIcons(lIcons)
ReDim glSmallIcons(lIcons)

Call ExtractIconEx(stdFile, IconIndex, glLargeIcons(lIndex), glSmallIcons(lIndex), 1)

With objPictureBox
    .Cls
    .AutoRedraw = True
    Call DrawIconEx(.hdc, 0, 0, glLargeIcons(lIndex), LARGE_ICON, LARGE_ICON, 0, 0, DI_NORMAL)
    .Refresh
End With
End Function



