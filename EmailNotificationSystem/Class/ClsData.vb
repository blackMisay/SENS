Imports System.Data.SqlClient
Public Class ClsData
    Public _Link As SqlConnection
    Private _Signal, Usr, Pas As String


    Public Property username() As String
        Get
            Return Usr
        End Get
        Set(value As String)
            Usr = value
        End Set
    End Property

    Public Property P As String
        Get
            Return Pas
        End Get
        Set(value As String)
            Pas = value
        End Set
    End Property

    Public Sub DBase()
        Try
            _Link = New SqlConnection("Server=WK34;Database=SchoolNotifSystem;Trusted_Connection=True;")
            If _Link.State = ConnectionState.Closed Then
                _Link.Open()
            End If
        Catch ex As Exception
            MsgBox("Error: " & ex.Message.ToString)
        Finally
            GC.Collect()
        End Try
    End Sub

    Public Sub GridLoader(ByVal Qry As String, ByVal GView As GridView)
        'Creating a Grid Loader
        Try
            DBase()
            Dim da As SqlDataAdapter
            Dim dt As New DataTable
            da = New SqlDataAdapter(Qry, _Link)
            da.Fill(dt)
            GView.DataSource = dt
            GView.DataBind()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        Finally
            GC.Collect()
        End Try
    End Sub

    Public Function UserData(ByVal User As String, ByVal Pass As String) As Boolean
        Dim Qry As String = "select * from Tbl_Employee where Uname = @username And Pass = @password"
        Try
            DBase()
            Dim CmdRequest As New SqlCommand(Qry, _Link)
            With CmdRequest
                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@username", User))
                .Parameters.Add(New System.Data.SqlClient.SqlParameter("@password", Pass))
            End With
            Dim Count As Integer = CInt(CmdRequest.ExecuteScalar)
            If Count = 1 Then
                _Signal = "Go"
                Return UserData = True
                Exit Function
            Else
                MsgBox("There's no such account exist", vbCritical, "")
                _Signal = "False"
            End If

            _Link.Close()
        Catch ex As Exception
            MsgBox("Error: " + ex.Message.ToString)
        Finally
            GC.Collect()
        End Try
        Return UserData = False
    End Function

    Public Sub FetchUserInfo(ByRef Name As Label, ByRef Email As Label, ByVal uname As String, ByVal pw As String)

        Dim Qry As String = "select concat(Fname,' ',Mname,' ',Lname,' ',Extname) As Fullname,Email,[Status] from tbl_Employee where Uname = '" & uname & "' And Pass = '" & pw & "'"
        If _Signal <> "Go" Then
            Try
                DBase()
                Dim da As SqlDataAdapter
                Dim dt As New DataTable
                da = New SqlDataAdapter(Qry, _Link)
                da.Fill(dt)
                If dt.Rows.Count = 0 Then
                    MsgBox("No Data Found")
                Else
                    Name.Text = dt.Rows(0)(0).ToString
                    Email.Text = dt.Rows(0)(1).ToString
                End If
            Catch ex As Exception
                MsgBox(ex.Message.ToString)
            Finally
                GC.Collect()
            End Try
        End If

    End Sub
End Class
