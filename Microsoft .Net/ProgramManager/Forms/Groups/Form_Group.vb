Imports TAFactory.IconPack
Public Class Form_Group
    Public Sub ExecuteSelectedProgram()
        Dim program As ProgramModel = DirectCast(Listview_Items.SelectedItems(0).Tag, ProgramModel)
        Dim startInfo As New ProcessStartInfo With {
            .FileName = program.CommandLine,
            .WindowStyle = ProcessWindowStyle.Normal,
            .WorkingDirectory = program.WorkingDirectory
        }

        Process.Start(startInfo)
    End Sub
    Public Sub CreateOrRefreshProgramItems(group As GroupModel)
        Listview_Items.Items.Clear()

        For Each item As ProgramModel In group.Items
            Dim lstItem As New ListViewItem

            ImageList_Large_Listview.Images.Add(IconHelper.ExtractIcon(item.IconFile, item.IconIndex))
            ImageList_Small_Listview.Images.Add(IconHelper.ExtractIcon(item.IconFile, item.IconIndex))

            lstItem.Text = item.Description
            lstItem.ImageIndex = ImageList_Large_Listview.Images.Count - 1
            lstItem.Tag = item

            Listview_Items.Items.Add(lstItem)
        Next
    End Sub
    Private Sub Listview_Items_DoubleClick(sender As Object, e As EventArgs) Handles Listview_Items.DoubleClick
        ExecuteSelectedProgram()
    End Sub
End Class