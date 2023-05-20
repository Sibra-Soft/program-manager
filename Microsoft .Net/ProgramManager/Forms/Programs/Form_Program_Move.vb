Public Class Form_Program_Move
    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        DialogResult = DialogResult.OK

        Response.Clear()

        Dim index As Integer = Program.Groups.IndexOf(Program.Groups.FirstOrDefault(Function(x) x.Description = Combox_MoveTo.Text))
        Response.Add("group_index", index)

        Close()
    End Sub

    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel
    End Sub

    Private Sub Form_Program_Move_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        For Each group As GroupModel In Program.Groups
            If Not group.Description = Form_Main.GroupSelected.Description Then
                Combox_MoveTo.Items.Add(group.Description)
            End If
        Next

        If Combox_MoveTo.Items.Count > 0 Then Combox_MoveTo.SelectedIndex = 0

        Label_FromGroup.Text = Form_Main.GroupSelected.Description
        Label_ProgramItem.Text = Form_Main.ProgramSelected.Description
    End Sub
End Class