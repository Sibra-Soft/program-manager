Public Class Form_Group_Prompt
    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel
        Close()
    End Sub

    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        Response.Clear()
        Response.Add("group_descripion", Textbox_Description.Text)

        DialogResult = DialogResult.OK
        Close()
    End Sub

    Private Sub Form_Group_Prompt_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If Request.RequestState = Models.RequestState.Edit Then Textbox_Description.Text = Request.Parameters("group_name")
    End Sub
End Class