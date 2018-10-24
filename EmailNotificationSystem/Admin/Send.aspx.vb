
Public Class Send
    Inherits System.Web.UI.Page
    Dim Sends As New ClsEmailService
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Lbl_Name.Text = Session("uname")
        Lbl_Email.Text = Session("uemail")

    End Sub


    Protected Sub Btn_Send_Click(sender As Object, e As EventArgs) Handles Btn_Send.Click
        Sends.webmail("notification.system01@gmail.com", "Email Notification Support", Txt_SendTo, "PTA Meeting", Btn_Send)
        'jjeremillo@gmail.com
        'Bryann.Quejadas@wintandkidd.com.au
    End Sub



    'FILE UPLOADER (TEMPLATE IN HTML FORMAT)
    Protected Sub Btn_Upload_Click(sender As Object, e As EventArgs) Handles Btn_Upload.Click
        If IsPostBack Then
            Dim path As String = Server.MapPath("~/Content/Email Template/Parents/")
            Dim fileOK As Boolean = False
            If FileUpload.HasFile Then
                Dim fileExtension As String
                fileExtension = System.IO.Path.
                    GetExtension(FileUpload.FileName).ToLower()
                Dim allowedExtensions As String() =
                    {".html"}
                For i As Integer = 0 To allowedExtensions.Length - 1
                    If fileExtension = allowedExtensions(i) Then
                        fileOK = True
                    End If
                Next
                If fileOK Then
                    Try
                        FileUpload.PostedFile.SaveAs(path &
                             FileUpload.FileName)
                        Lbl_Template_Status.Text = "File uploaded!"
                    Catch ex As Exception
                        Lbl_Template_Status.Text = "File could not be uploaded."
                    End Try
                Else
                    Lbl_Template_Status.Text = "Cannot accept files of this type."
                End If
            End If
        End If
    End Sub
End Class