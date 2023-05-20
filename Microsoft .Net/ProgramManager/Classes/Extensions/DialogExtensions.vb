Imports System.Runtime.CompilerServices
Module DialogExtensions
    Private Parameters As New Dictionary(Of String, Object)
    Private Instance As Form

    Public Property DialogResponse As New Dictionary(Of String, String)
    Public Property DialogRequest As New Models.DialogRequestModel

    Private Property WindowCaption As String = ""
    Private Sub PrepFormAsDialog()
        Instance.FormBorderStyle = FormBorderStyle.FixedDialog

        Instance.ShowInTaskbar = False
        Instance.MinimizeBox = False
        Instance.MaximizeBox = False
        Instance.ShowIcon = False
        Instance.StartPosition = FormStartPosition.CenterParent

        Instance.Text = WindowCaption
    End Sub
    Private Sub PrepFormAsWindow()
        Instance.FormBorderStyle = FormBorderStyle.Sizable

        Instance.ShowIcon = True

        Instance.Text = WindowCaption
    End Sub
    <Extension()>
    Public Function Request(targetForm As Form) As Models.DialogRequestModel
        Return DialogRequest
    End Function
    <Extension()>
    Public Function Response(targetForm As Form) As Dictionary(Of String, String)
        Return DialogResponse
    End Function
    <Extension()>
    Public Sub ClearParameters(targetForm As Form)
        Parameters.Clear()
    End Sub
    <Extension()>
    Public Sub AddParameterWithValue(targetForm As Form, Key As String, Value As Object)
        Parameters.Add(Key, Value)
    End Sub
    <Extension()>
    Public Function ShowDialogAndDispose(targetForm As Form, caption As String, Optional type As FormType = FormType.Dialog, Optional mode As Models.RequestState = Models.RequestState.[New]) As DialogResult
        Instance = targetForm
        WindowCaption = caption

        DialogRequest.Parameters = Parameters
        DialogRequest.RequestState = mode

        If type = FormType.Dialog Then
            PrepFormAsDialog()
        Else
            PrepFormAsWindow()
        End If

        Instance.ShowDialog()
        Instance.Dispose()

        Return Instance.DialogResult
    End Function
End Module