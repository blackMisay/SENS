Imports System.Net
Imports System.Net.Mail
Imports System.Data
Imports System.Threading.Tasks
Imports System.Data.SqlClient
Imports System.IO
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim _Data As New ClsData
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Lbl_Name.Text = CType(Session.Item("uname"), String)
        Lbl_Email.Text = CType(Session.Item("uemail"), String)

        If Not Me.IsPostBack Then
            _Data.GridLoader("Select ID,CONCAT(Fname,' ',Mname,' ',Lname,' ',Extname) As Fullname,Email FROM Tbl_Students", GView_Students)
        End If
        'If Not Me.IsPostBack Then
        '    'dt.Columns.AddRange(New DataColumn(2) {New DataColumn("id", GetType(Integer)),
        '    '                                       New DataColumn("name", GetType(String)),
        '    '                                       New DataColumn("email", GetType(String))})
        '    'dt.Rows.Add(1, "john hammond", "notification.system01@gmail.com")
        '    'dt.Rows.Add(2, "mudassar khan", "rcrlno97@outlook.com)"
        '    'dt.Rows.Add(3, "suzanne mathews", "rbcarolino@rtu.edu.ph")
        '    'dt.Rows.Add(4, "robert schidner", "r713746447431@gmail.com")
        '    GView_Students.DataSource = dt
        '    GView_Students.DataBind()
        'End If
    End Sub
    Protected Sub SendBulkEmail(sender As Object, e As EventArgs) Handles Btn_Send.Click
        'Create a temporary DataTable
        Dim dtEmail As New DataTable()
        dtEmail.Columns.AddRange(New DataColumn(1) {New DataColumn("Fullname", GetType(String)), New DataColumn("Email", GetType(String))})

        'Copy the Checked Rows to DataTable
        For Each row As GridViewRow In GView_Students.Rows
            If TryCast(row.FindControl("chkSelect"), CheckBox).Checked Then
                dtEmail.Rows.Add(row.Cells(2).Text, TryCast(row.FindControl("lnkEmail"), HyperLink).Text)
            End If
        Next


        Dim subject As String = Txt_Subj.Text
        Dim body As String = "Hello {0},<br />" & Txt_Body.Text & "<br /> Thanks,"


        'Using Parallel Multi-Threading send multiple bulk email.
        Parallel.ForEach(dtEmail.AsEnumerable(),
                     Function(row)
                         Return SendEmail(row("Email").ToString(), subject, String.Format(body, row("Fullname")))
                     End Function)
    End Sub

    Private Function SendEmail(recipient As String, subject As String, body As String) As Boolean

        Try
            Dim r As StreamReader
            r = New StreamReader(FUpload_Template.FileContent)

            'Dim AttachPath As String = Path.GetFullPath(FUpload_Attachment.PostedFile.FileName)
            'MsgBox(FUpload_Attachment.PostedFile.FileName.ToString)

            Dim MMsg As New MailMessage("notification.system01@gmail.com", recipient)
            With MMsg
                .From = New MailAddress("notification.system01@gmail.com", "School Email Notification System")
                .Subject = subject
                .Body = body & r.ReadToEnd
                .IsBodyHtml = True
                'If Len(AttachPath) <> 0 Then
                '    .Attachments.Add(New Attachment(AttachPath))
                'End If
            End With
            Dim smtp As New SmtpClient() With {
                .Host = "smtp.gmail.com", .EnableSsl = True
            }
            Dim NetworkCred As New NetworkCredential() With {
                .UserName = "notification.system01@gmail.com", .Password = "EmailSupport123"
                }
            With smtp
                .UseDefaultCredentials = True
                .Credentials = NetworkCred
                .Port = 587
                .Send(MMsg)
            End With
            Call FormEraser()
            MsgBox("Email was sent successfully", vbApplicationModal, "")
            Return True
        Catch ex As Exception
            MsgBox("A Unhandled Exception is occur: " & ex.Message.ToString, MsgBoxStyle.Critical, "Sending Email")
        Finally
            GC.Collect()
        End Try
        Return Nothing
    End Function
    Private Sub FormEraser()
        Me.Txt_Subj.Text = String.Empty
        Me.Txt_Body.Text = String.Empty
        For Each row As GridViewRow In GView_Students.Rows
            If TryCast(row.FindControl("chkSelect"), CheckBox).Checked Then
                TryCast(row.FindControl("chkSelect"), CheckBox).Checked = False
            End If
        Next
    End Sub
    Protected Sub Btn_UserReg_Click(sender As Object, e As EventArgs) Handles Btn_UserReg.Click
        Session("uname") = Lbl_Name.Text
        Session("uemail") = Lbl_Email.Text
        Response.Redirect("../Employees/ERegister.aspx")
    End Sub

    Protected Sub Btn_StudReg_Click(sender As Object, e As EventArgs) Handles Btn_StudReg.Click
        Session("uname") = Lbl_Name.Text
        Session("uemail") = Lbl_Email.Text
        Response.Redirect("../Students/SRegister.aspx")
    End Sub

    Protected Sub Btn_Logout_Click(sender As Object, e As EventArgs) Handles Btn_Logout.Click
        Response.Redirect("../Login.aspx")
    End Sub
End Class