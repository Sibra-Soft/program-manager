Public Class Form_CreateGroup
    Private Sub Form_CreateGroup_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        If Program.Groups.Count = 0 Then
            RadioButton_ProgramItem.Enabled = False
            RadioButton_PersonalGroup.Checked = True
        Else
            RadioButton_ProgramItem.Enabled = True
            RadioButton_ProgramItem.Checked = True
        End If
    End Sub

    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel
        Close()
    End Sub

    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        If RadioButton_ProgramItem.Checked Then
            If Form_Program_Properties.ShowDialogAndDispose("Program item properties") = DialogResult.OK Then
                Dim programItem As New ProgramModel With {
                    .Description = Form_Program_Properties.Response("description"),
                    .CommandLine = Form_Program_Properties.Response("command_line"),
                    .IconFile = Form_Program_Properties.Response("icon_file"),
                    .IconIndex = Form_Program_Properties.Response("icon_index"),
                    .WorkingDirectory = Form_Program_Properties.Response("working_directory")
                }

                Program.Groups(Program.Groups.IndexOf(Form_Main.GroupSelected)).Items.Add(programItem)
            End If
        End If

        ' Add personal group
        If RadioButton_PersonalGroup.Checked Then
            If Form_Group_Prompt.ShowDialogAndDispose("Personal group properties") = DialogResult.OK Then
                Dim group As New GroupModel With {
                    .Description = Form_Group_Prompt.Response("group_descripion"),
                    .User = Environment.UserName
                }

                Program.Groups.Add(group)
            End If
        End If

        ' Add common group
        If RadioButton_CommonGroup.Checked Then
            If Form_Group_Prompt.ShowDialogAndDispose("Common group properties") = DialogResult.OK Then
                Dim group As New GroupModel With {
                    .Description = Form_Group_Prompt.Response("group_descripion"),
                    .User = "*"
                }

                Program.Groups.Add(group)
            End If
        End If

        DialogResult = DialogResult.OK
        Close()
    End Sub
End Class