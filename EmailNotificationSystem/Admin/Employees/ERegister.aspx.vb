Public Class Register
    Inherits System.Web.UI.Page
    Dim _Data As New ClsData
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Lbl_EName.Text = CType(Session.Item("uname"), String)
        Lbl_EEmail.Text = CType(Session.Item("uemail"), String)


        If Not Me.IsPostBack Then
            _Data.GridLoader("Select ID,CONCAT(Fname,' ',Mname,' ',Lname,' ',Extname) As Fullname,Email FROM Tbl_Employee", GView_Students)
        End If
    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click

    End Sub

    Protected Sub Btn_Logout_Click(sender As Object, e As EventArgs) Handles Btn_Logout.Click
        Response.Redirect("../../Login.aspx")
    End Sub

    Protected Sub Btn_UserReg_Click(sender As Object, e As EventArgs) Handles Btn_UserReg.Click

    End Sub

    Protected Sub Btn_StudReg_Click(sender As Object, e As EventArgs) Handles Btn_StudReg.Click
        Session("uname") = Lbl_EName.Text
        Session("uemail") = Lbl_EEmail.Text
        Response.Redirect("../Students/SRegister.aspx")
    End Sub

    Protected Sub Btn_PWIS_Click(sender As Object, e As EventArgs) Handles Btn_PWIS.Click

    End Sub

    Protected Sub Btn_SendEmail_Click(sender As Object, e As EventArgs) Handles Btn_SendEmail.Click
        Session("uname") = Lbl_EName.Text
        Session("uemail") = Lbl_EEmail.Text
        Response.Redirect("../FullSend.aspx")
    End Sub
End Class