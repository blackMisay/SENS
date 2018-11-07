Public Class Login1
    Inherits System.Web.UI.Page
    Dim _Data As New ClsData
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Btn_Login_Click(sender As Object, e As EventArgs) Handles Btn_Login.Click
        Response.Redirect("Admin/Dashboard.aspx") 'For test purposes
    End Sub


End Class