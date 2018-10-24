Public Class Dashboard1
    Inherits System.Web.UI.Page
    Dim _Data As New ClsData
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim Usr, Pas As String
        Usr = Session("uname")
        Pas = Session("upass")
        _Data.FetchUserInfo(Lbl_Name, Lbl_Email, Usr, Pas)
    End Sub

    Protected Sub Btn_SendEmail_Click(sender As Object, e As EventArgs) Handles Btn_SendEmail.Click
        Session("uname") = Lbl_Name.Text
        Session("uemail") = Lbl_Email.Text
        Response.Redirect("FullSend.aspx")
    End Sub

    Protected Sub Btn_UserReg_Click(sender As Object, e As EventArgs) Handles Btn_UserReg.Click
        Session("uname") = Lbl_Name.Text
        Session("uemail") = Lbl_Email.Text
        Response.Redirect("Employees/ERegister.aspx")
    End Sub

    Protected Sub Btn_StudReg_Click(sender As Object, e As EventArgs) Handles Btn_StudReg.Click
        Session("uname") = Lbl_Name.Text
        Session("uemail") = Lbl_Email.Text
        Response.Redirect("Students/SRegister.aspx")
    End Sub

    Protected Sub Btn_Logout_Click(sender As Object, e As EventArgs) Handles Btn_Logout.Click
        Response.Redirect("../Login.aspx")
    End Sub
End Class