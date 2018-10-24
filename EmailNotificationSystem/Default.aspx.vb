Public Class Index
    Inherits System.Web.UI.Page

    Private Sub Index_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("LoginID") = vbNull Then
            Response.Redirect("")
        Else
            Response.ClearHeaders()
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate")
            Response.AddHeader("Pragma", "no-cache")
        End If
    End Sub
End Class