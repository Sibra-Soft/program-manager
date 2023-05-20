Imports Newtonsoft.Json
Imports System.IO
Public Class Program
    Public Shared Groups As List(Of GroupModel)
    Public Shared Sub Main(ByVal args() As String)
        Application.EnableVisualStyles()
        Application.Run(Form_Main)
    End Sub
    Public Shared Sub LoadGroups()
        Dim groupFile As String = Application.StartupPath & "\groups.json"

        If File.Exists(groupFile) Then
            Dim json = File.ReadAllText(groupFile)
            Groups = JsonConvert.DeserializeObject(Of List(Of GroupModel))(json)
        Else
            Groups = New List(Of GroupModel)
        End If
    End Sub
    Public Shared Sub SaveGroups()
        Dim output = JsonConvert.SerializeObject(Groups)
        Dim file As StreamWriter

        file = My.Computer.FileSystem.OpenTextFileWriter(Application.StartupPath & "\groups.json", False)
        file.WriteLine(output)
        file.Close()
    End Sub
End Class
