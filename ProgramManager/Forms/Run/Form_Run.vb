Public Class Form_Run
    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel
    End Sub

    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        DialogResult = DialogResult.OK

        Response.Clear()
        Response.Add("program", Combox_ProgramToRun.Text)
        Response.Add("run_minimized", Checkbox_RunMinimized.Checked)

        Close()
    End Sub

    Private Sub Button_Browse_Click(sender As Object, e As EventArgs) Handles Button_Browse.Click
        OpenFileDialog.Title = "Select the program you want to execute"
        OpenFileDialog.Filter = "Application (*.exe)|*.exe"

        If OpenFileDialog.ShowDialog() = DialogResult.OK Then
            Combox_ProgramToRun.Text = OpenFileDialog.FileName
        End If
    End Sub
End Class