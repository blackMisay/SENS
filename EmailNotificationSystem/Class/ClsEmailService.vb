#Region "Imports"

Imports System.IO
'Imports EASendMail
Imports System.Net.Mail
#End Region
Public Class ClsEmailService
    Public Sub webmail(ByVal From As String, ByVal SenderName As String, ByVal Recipient As TextBox, ByVal Subj As String, ByVal Btn As Button)
        Try

            Dim fileReader As String
            fileReader = My.Computer.FileSystem.ReadAllText("C:/Users/Russelle.Carolino/Downloads/System/EmailNotificationSystem/Content/Email Template/Parents/PTA.txt")
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Dim def_mail As New MailDefinition()
            With Smtp_Server
                .UseDefaultCredentials = False
                .Credentials = New Net.NetworkCredential("notification.system01@gmail.com", "EmailSupport123")
                .Port = 587
                .EnableSsl = True
                .Host = "smtp.gmail.com"
            End With
            With e_mail
                e_mail = New MailMessage()
                e_mail.From = New MailAddress(From, SenderName)
                e_mail.To.Add(Recipient.Text)
                e_mail.Subject = Subj

                e_mail.Body = fileReader
                e_mail.IsBodyHtml = True
            End With
            Smtp_Server.Send(e_mail)
            MsgBox("Mail Sent!")
        Catch ex As Exception
            MsgBox("Error:   " & ex.Message.ToString)
        Finally
            GC.Collect()
        End Try
    End Sub
    Public Sub webmail2(ByVal From As String, ByVal SenderName As String, ByVal Recipient As String, ByVal Subj As String, ByVal Msg As String)
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("notification.system01@gmail.com", "EmailSupport123")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            'first we create the Plain Text Part
            Dim plainView As AlternateView = AlternateView.CreateAlternateViewFromString("This is my plain text content, viewable by those clients that don't support html", Nothing, "text/plain")
            'then we create the Html Part
            Dim htmlView As AlternateView = AlternateView.CreateAlternateViewFromString("<b>this is bold text, and viewable by those mail clients that support html</b>", Nothing, "text/html")
            e_mail.AlternateViews.Add(plainView)
            e_mail.AlternateViews.Add(htmlView)

            e_mail = New MailMessage()
            e_mail.From = New MailAddress(From, SenderName)
            e_mail.To.Add(Recipient)
            e_mail.Subject = Subj
            e_mail.IsBodyHtml = False
            e_mail.Body = Msg & "<h4 style='color:#0086b3'>Russelle Carolino</h4><br/><p></p>"
            e_mail.IsBodyHtml = True
            Smtp_Server.Send(e_mail)
            MsgBox("Mail Sent!")
        Catch ex As Exception
            MsgBox("Error: " & ex.Message.ToString)
        Finally
            GC.Collect()
        End Try
    End Sub
    Public Sub Attachment()
        'create the mail message
        Dim mail As New MailMessage()

        'set the addresses
        mail.From = New MailAddress("EmailSupport123")
        mail.To.Add("you@yourcompany.com")

        'set the content
        mail.Subject = "This is an email"
        mail.Body = "this content is in the body"

        'add an attachment from the filesystem
        mail.Attachments.Add(New Attachment("c:\temp\example.txt"))

        'to add additional attachments, simply call .Add(...) again
        mail.Attachments.Add(New Attachment("c:\temp\example2.txt"))
        mail.Attachments.Add(New Attachment("c:\temp\example3.txt"))

        'send the message
        Dim smtp As New SmtpClient("127.0.0.1")
        smtp.Send(mail)
    End Sub


    'Public Sub SendMailOneAttachment(ByVal From As String, ByVal sendTo As String, ByVal Subject As String, ByVal Body As String, Optional ByVal AttachmentFile As String = "", Optional ByVal CC As String = "", Optional ByVal BCC As String = "", Optional ByVal SMTPServer As String = "")

    '    Dim myMessage As MailMessage

    '    Try
    '        myMessage = New MailMessage()
    '        With myMessage
    '            .To = sendTo
    '            .From = From
    '            .Subject = Subject
    '            .Body = Body
    '            .BodyFormat = MailFormat.Text
    '            'CAN USER MAILFORMAT.HTML if you prefer

    '            If CC <> "" Then .CC = CC
    '            If BCC <> "" Then .Bcc = ""

    '            If FileExists(AttachmentFile) Then _
    '             .Attachments.Add(AttachmentFile)

    '        End With

    '        If SMTPServer <> "" Then _
    '           SmtpMail.SmtpServer = SMTPServer
    '        SmtpMail.Send(myMessage)

    '    Catch myexp As Exception
    '        Throw myexp
    '    End Try
    'End Sub
End Class
