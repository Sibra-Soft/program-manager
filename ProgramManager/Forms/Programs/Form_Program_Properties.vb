Imports System.IO
Imports TAFactory.IconPack
Public Class Form_Program_Properties
    Private IconFile As String
    Private IconIndex As Integer = 0
    Private Sub GetIcon(file As String, index As Integer)
        IconFile = file
        IconIndex = index

        Picturebox_Icon.Image = IconHelper.ExtractIcon(file, index).ToBitmap()
    End Sub
    Private Sub Button_Cancel_Click(sender As Object, e As EventArgs) Handles Button_Cancel.Click
        DialogResult = DialogResult.Cancel
        Close()
    End Sub

    Private Sub Button_Browse_Click(sender As Object, e As EventArgs) Handles Button_Browse.Click
        OpenFileDialog.Title = "Select the program you want to add"
        OpenFileDialog.Filter = "Applications (*.exe)|*.exe"
        OpenFileDialog.FileName = vbNullString

        If OpenFileDialog.ShowDialog() = DialogResult.OK Then
            Dim fileInfo As New FileInfo(OpenFileDialog.FileName)

            Textbox_CommandLine.Text = OpenFileDialog.FileName
            Textbox_Description.Text = fileInfo.Name

            GetIcon(OpenFileDialog.FileName, IconIndex)
        End If
    End Sub
    Private Sub Button_OK_Click(sender As Object, e As EventArgs) Handles Button_OK.Click
        Response.Clear()

        Response.Add("description", Textbox_Description.Text)
        Response.Add("command_line", Textbox_CommandLine.Text)
        Response.Add("working_directory", Textbox_WorkingDirectory.Text)
        Response.Add("shortcut_key", Textbox_ShortcutKey.Text)
        Response.Add("run_minimized", Checkbox_RunMinimized.Checked)
        Response.Add("run_in_seperate_memory", Checkbox_RunInSeparateMemorySpace.Checked)
        Response.Add("icon_index", IconIndex)
        Response.Add("icon_file", IconFile)

        DialogResult = DialogResult.OK

        Close()
    End Sub

    Private Sub Timer_Main_Tick(sender As Object, e As EventArgs) Handles Timer_Main.Tick
        If String.IsNullOrWhiteSpace(Textbox_Description.Text) AndAlso String.IsNullOrWhiteSpace(Textbox_CommandLine.Text) Then
            Button_OK.Enabled = False
            Button_ChangeIcon.Enabled = False
        Else
            Button_OK.Enabled = True
            Button_ChangeIcon.Enabled = True
        End If
    End Sub

    Private Sub Button_ChangeIcon_Click(sender As Object, e As EventArgs) Handles Button_ChangeIcon.Click
        Dim languages As String() = {"es-ES", "fr-FR", "en-US"}
        Dim langs As String = String.Join(vbNullChar, languages)

        Dim numLangs As UInteger = 0
        Dim result As Boolean = NativeMethods.SetProcessPreferredUILanguages(MUIFlags.MUI_LANGUAGE_NAME, langs, numLangs)

        Dim iconsPath As String = Textbox_CommandLine.Text
        Dim selIcon As Integer = -1

        If NativeMethods.PickIconDlg(IntPtr.Zero, iconsPath, iconsPath.Length + 1, selIcon) > 0 Then GetIcon(iconsPath, selIcon)
    End Sub

    Private Sub Form_Program_Properties_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.RequestState = Models.RequestState.Edit Then
            Dim iconFile As String = Request.Parameters("icon_file")
            Dim iconIndex As Integer = Request.Parameters("icon_index")

            Textbox_Description.Text = Request.Parameters("name")
            Textbox_CommandLine.Text = Request.Parameters("path")

            Picturebox_Icon.Image = IconHelper.ExtractIcon(iconFile, iconIndex).ToBitmap()
        End If
    End Sub
End Class