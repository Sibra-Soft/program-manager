Imports System.ComponentModel

Public Class Form_Main
    Public ProgramSelected As ProgramModel
    Public GroupSelected As GroupModel

    Private ForceDeleteOfProgramItem As Boolean = False
    Private ProgramIsSelected As Boolean
    Private GroupsAdded As Boolean
    Private GroupIsSelected As Boolean
    Private GroupHasProgramItems As Boolean
    Private Sub EnableDisableControls()
        If GroupsAdded Then
            If GroupIsSelected Then
                MenuStrip_File_Delete.Enabled = True
            Else
                If GroupHasProgramItems Then
                    MenuStrip_File_Copy.Enabled = True
                    MenuStrip_File_Move.Enabled = True
                    MenuStrip_File_Delete.Enabled = True
                Else
                    MenuStrip_File_Delete.Enabled = False
                End If
            End If
        Else
            MenuStrip_File_Copy.Enabled = False
            MenuStrip_File_Move.Enabled = False
            MenuStrip_File_Delete.Enabled = False
        End If

        If GroupHasProgramItems Then
            If ProgramIsSelected Then
                MenuStrip_File_Move.Enabled = True
                MenuStrip_File_Copy.Enabled = True
            Else
                MenuStrip_File_Move.Enabled = False
                MenuStrip_File_Copy.Enabled = False
            End If

            MenuStrip_File_Open.Enabled = True
        Else
            MenuStrip_File_Move.Enabled = False
            MenuStrip_File_Copy.Enabled = False

            If GroupIsSelected Then
                MenuStrip_File_Open.Enabled = True
            Else
                MenuStrip_File_Open.Enabled = False
            End If
        End If
    End Sub
    Private Sub RefreshGroups()
        For Each group As GroupModel In Program.Groups.Where(Function(x) x.User = Environment.UserName OrElse x.User = "*")
            Dim form As Form_Group = MdiChildren.FirstOrDefault(Function(x) x.Text = group.Description)

            If group.Visible AndAlso form IsNot Nothing Then
                ' Refresh the group
                form.CreateOrRefreshProgramItems(group)
                Continue For
            Else
                ' Add new group
                Dim groupDialog As New Form_Group

                group.Visible = True

                groupDialog.Tag = group
                groupDialog.CreateOrRefreshProgramItems(group)
                groupDialog.Text = group.Description
                groupDialog.MdiParent = Me
                groupDialog.Show()
            End If
        Next
    End Sub
    Private Sub ExitToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Exit.Click
        End
    End Sub

    Private Sub MenuStrip_File_New_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_New.Click
        If Form_CreateGroup.ShowDialogAndDispose("New program object") = DialogResult.OK Then
            Program.SaveGroups()
            RefreshGroups()
        End If
    End Sub

    Private Sub Form_Main_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Text = Text & " - " & Environment.MachineName & "\" & Environment.UserName

        MenuStrip_Options_AutoArrange.Checked = My.Settings.Item("auto_arrange")
        MenuStrip_Options_SaveOnExit.Checked = My.Settings.Item("save_on_exit")

        Program.LoadGroups()
        RefreshGroups()
    End Sub

    Private Sub RunToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Run.Click
        Dim proc As New ProcessStartInfo

        If Form_Run.ShowDialogAndDispose("Run") = DialogResult.OK Then
            proc.FileName = Form_Run.Response("run_minimized")

            If Convert.ToBoolean(Form_Run.Response("run_minimized")) Then
                proc.WindowStyle = ProcessWindowStyle.Minimized
            Else
                proc.WindowStyle = ProcessWindowStyle.Normal
            End If

            Process.Start(proc)
        End If
    End Sub

    Private Sub MenuStrip_Options_SaveNow_Click(sender As Object, e As EventArgs) Handles MenuStrip_Options_SaveNow.Click
        Program.SaveGroups()
    End Sub

    Private Sub MenuStrip_Window_Cascade_Click(sender As Object, e As EventArgs) Handles MenuStrip_Window_Cascade.Click
        LayoutMdi(MdiLayout.Cascade)
    End Sub

    Private Sub MenuStrip_Window_Title_Click(sender As Object, e As EventArgs) Handles MenuStrip_Window_Title.Click
        LayoutMdi(MdiLayout.TileHorizontal)
    End Sub

    Private Sub MenuStrip_Window_ArrangeIcons_Click(sender As Object, e As EventArgs) Handles MenuStrip_Window_ArrangeIcons.Click
        LayoutMdi(MdiLayout.ArrangeIcons)
    End Sub

    Private Sub MenuStrip_Options_UpdateGroups_Click(sender As Object, e As EventArgs) Handles MenuStrip_Options_UpdateGroups.Click
        RefreshGroups()
    End Sub

    Private Sub MenuStrip_File_Delete_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Delete.Click
        Dim group As GroupModel = DirectCast(ActiveMdiChild.Tag, GroupModel)

        If GroupIsSelected Then
            If MessageBox.Show(Me, String.Format("Are you sure you want to delete the group `{0}`", group.Description), "Delete group", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) = DialogResult.OK Then
                Program.Groups.Remove(group)

                ActiveMdiChild.Close()
                RefreshGroups()
            End If
        Else
            Dim form As Form_Group = ActiveMdiChild
            Dim programItem As ProgramModel = DirectCast(form.Listview_Items.SelectedItems(0).Tag, ProgramModel)

            If ForceDeleteOfProgramItem Then
                form.Listview_Items.SelectedItems(0).Remove()
                Program.Groups(Program.Groups.IndexOf(group)).Items.Remove(programItem)
            Else
                If MessageBox.Show(Me, String.Format("Are you sure you want to delete the selected program `{0}`", programItem.Description), "Delete group", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) = DialogResult.OK Then
                    form.Listview_Items.SelectedItems(0).Remove()

                    Program.Groups(Program.Groups.IndexOf(group)).Items.Remove(programItem)
                    RefreshGroups()
                End If
            End If
        End If

        Program.SaveGroups()
        ForceDeleteOfProgramItem = False
    End Sub

    Private Sub Timer_Main_Tick(sender As Object, e As EventArgs) Handles Timer_Main.Tick
        If MdiChildren.Count > 0 Then
            GroupsAdded = True
        Else
            GroupsAdded = False
        End If

        If ActiveMdiChild IsNot Nothing Then
            Dim group As GroupModel = DirectCast(ActiveMdiChild.Tag, GroupModel)
            GroupSelected = group

            If ActiveMdiChild.WindowState = FormWindowState.Minimized Then
                GroupIsSelected = True

                ProgramSelected = Nothing
                ProgramIsSelected = False
                GroupHasProgramItems = False
            Else
                GroupIsSelected = False

                Dim form As Form_Group = ActiveMdiChild
                If form.Listview_Items.Items.Count > 0 Then
                    GroupHasProgramItems = True

                    If form.Listview_Items.SelectedItems.Count > 0 Then
                        Dim programItem As ProgramModel = DirectCast(form.Listview_Items.SelectedItems(0).Tag, ProgramModel)

                        If programItem IsNot Nothing Then
                            ProgramSelected = programItem
                            ProgramIsSelected = True
                        End If
                    End If
                Else
                    GroupHasProgramItems = False
                End If
            End If
        Else
            ProgramSelected = Nothing
            ProgramIsSelected = False
            GroupIsSelected = False
            GroupHasProgramItems = False
        End If

        EnableDisableControls()
    End Sub

    Private Sub MenuStrip_File_Properties_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Properties.Click
        If GroupIsSelected Then
            Dim group As GroupModel = DirectCast(ActiveMdiChild.Tag, GroupModel)

            Form_Group_Prompt.ClearParameters()
            Form_Group_Prompt.AddParameterWithValue("group_name", group.Description)

            If Form_Group_Prompt.ShowDialogAndDispose("Group properties", mode:=Models.RequestState.Edit) = DialogResult.OK Then
                Program.Groups(Program.Groups.IndexOf(group)).Description = Form_Group_Prompt.Response("group_descripion")
                RefreshGroups()
            End If
        Else
            Form_Program_Properties.ClearParameters()
            Form_Program_Properties.AddParameterWithValue("name", ProgramSelected.Description)
            Form_Program_Properties.AddParameterWithValue("path", ProgramSelected.CommandLine)
            Form_Program_Properties.AddParameterWithValue("icon_file", ProgramSelected.IconFile)
            Form_Program_Properties.AddParameterWithValue("icon_index", ProgramSelected.IconIndex)

            If Form_Program_Properties.ShowDialogAndDispose("Program properties", mode:=Models.RequestState.Edit) = DialogResult.OK Then

            End If
        End If
    End Sub

    Private Sub MenuStrip_Help_About_Click(sender As Object, e As EventArgs) Handles MenuStrip_Help_About.Click
        Form_About.ShowDialogAndDispose("About")
    End Sub

    Private Sub MenuStrip_File_Logoff_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Logoff.Click
        If MessageBox.Show(Me, "Are you sure you want to logoff?", "Logoff", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) = DialogResult.OK Then
            Shell("shutdown -l")
        End If
    End Sub

    Private Sub MenuStrip_File_Shutdown_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Shutdown.Click
        If MessageBox.Show(Me, "Are you sure you want to shutdown to computer", "Shutdown", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) = DialogResult.OK Then
            Shell("shutdown -s")
        End If
    End Sub

    Private Sub MenuStrip_File_Open_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Open.Click
        If GroupIsSelected Then
            ActiveMdiChild.WindowState = FormWindowState.Normal
        Else
            Dim form As Form_Group = ActiveMdiChild
            form.ExecuteSelectedProgram()
        End If
    End Sub

    Private Sub MenuStrip_File_Move_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Move.Click
        If Form_Program_Move.ShowDialogAndDispose("Move program item") = DialogResult.OK Then
            Dim groupToMoveToIndex As Integer = Form_Program_Move.Response("group_index")

            ForceDeleteOfProgramItem = True

            Program.Groups(groupToMoveToIndex).Items.Add(ProgramSelected)
            MenuStrip_File_Delete_Click(sender, e)

            RefreshGroups()
        End If
    End Sub

    Private Sub MenuStrip_File_Copy_Click(sender As Object, e As EventArgs) Handles MenuStrip_File_Copy.Click
        If Form_Program_Copy.ShowDialogAndDispose("Copy program item") = DialogResult.OK Then
            Dim groupToCopyToIndex As Integer = Form_Program_Copy.Response("group_index")

            Program.Groups(groupToCopyToIndex).Items.Add(ProgramSelected)
            RefreshGroups()
        End If
    End Sub

    Private Sub MenuStrip_Options_AutoArrange_Click(sender As Object, e As EventArgs) Handles MenuStrip_Options_AutoArrange.Click
        If MenuStrip_Options_AutoArrange.Checked Then
            MenuStrip_Options_AutoArrange.Checked = False
        Else
            MenuStrip_Options_AutoArrange.Checked = True
        End If

        My.Settings.Item("auto_arrange") = MenuStrip_Options_AutoArrange.Checked
        My.Settings.Save()
    End Sub

    Private Sub MenuStrip_Options_SaveOnExit_Click(sender As Object, e As EventArgs) Handles MenuStrip_Options_SaveOnExit.Click
        If MenuStrip_Options_SaveOnExit.Checked Then
            MenuStrip_Options_SaveOnExit.Checked = False
        Else
            MenuStrip_Options_SaveOnExit.Checked = True
        End If

        My.Settings.Item("save_on_exit") = MenuStrip_Options_SaveOnExit.Checked
        My.Settings.Save()
    End Sub

    Private Sub Form_Main_Closing(sender As Object, e As CancelEventArgs) Handles Me.Closing
        e.Cancel = True

        If MenuStrip_Options_SaveOnExit.Checked Then Program.SaveGroups()

        e.Cancel = False
    End Sub

    Private Sub Form_Main_Disposed(sender As Object, e As EventArgs) Handles Me.Disposed

    End Sub
End Class
