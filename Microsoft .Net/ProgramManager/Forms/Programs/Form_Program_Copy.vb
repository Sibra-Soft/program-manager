Public Class Form_Program_Copy
    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel

        Close()
    End Sub

    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        DialogResult = DialogResult.OK

        Response.Clear()
        Response.Add("group_index", Combox_CopyTo.SelectedIndex)

        Close()
    End Sub

    Private Sub Form_Program_Copy_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Combox_CopyTo.Items.Clear()

        For Each group As GroupModel In Program.Groups
            Combox_CopyTo.Items.Add(group.Description)
        Next

        If Combox_CopyTo.Items.Count > 0 Then Combox_CopyTo.SelectedIndex = 0

        Label_ProgramItem.Text = Form_Main.ProgramSelected.Description
        Label_FromGroup.Text = Form_Main.GroupSelected.Description
    End Sub
End Class