Public Class Login1
    Inherits System.Web.UI.Page
    Dim _Data As New ClsData
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Btn_Login_Click(sender As Object, e As EventArgs) Handles Btn_Login.Click
        Session("uname") = Txt_User.Text
        Session("upass") = Txt_User.Text


        If _Data.UserData(Txt_User.Text, Txt_Pass.Text) = True Then
            Response.Redirect("Login.aspx")
        Else
            Session("name") = Txt_User.Text

            Response.Redirect("/Admin/Dashboard.aspx")
        End If

    End Sub


End Class