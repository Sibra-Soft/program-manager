Namespace Models
    Public Enum RequestState
        [New]
        [Edit]
    End Enum
    Public Class DialogRequestModel
        Public Parameters As New Dictionary(Of String, Object)
        Public RequestState As RequestState = RequestState.New
    End Class
End Namespace