Attribute VB_Name = "modMain"
Public Const GRP_PERSONAL As String = "PROG_GROUP_PERSONAL"
Public Const GRP_COMMON As String = "PROG_GROUP_COMMON"

Public Dialogs As New DialogExtensions
Public StrExt As New StringExtensions

Public Ext As New SibraSoft
Sub Main()
Form_Main.Show
End Sub
Public Function FormsCount() As Integer
Dim frx As Form, fCount As Integer

For Each frx In Forms()
    If Not frx.Name = "Form_Main" Then
        fCount = fCount + 1
    End If
Next

FormsCount = fCount
End Function


