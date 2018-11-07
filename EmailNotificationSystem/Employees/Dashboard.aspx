<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="EmailNotificationSystem.Dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Registration </title>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
         <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
         <link href="Styles/Forme.css" rel="stylesheet" />
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
         <link href="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet"/>
         <script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image:url('/Images/back2.jpg');
        }
        .profile-usertitle-email {
            text-transform: uppercase;
            color: #76ADDC;
            font-size: 10px;
            font-weight: 600;
            margin-bottom: 40px;
            padding-top:-15px;
            text-align: center;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="sidenav">
            <div class="col-md-3">
                	<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="/Images/teacher.png" class="img-responsive" alt=""/>
				</div>
                <!-- END SIDEBAR USERPIC -->
                    <!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						Janet Lim-Napoles
					</div>
					<div class="profile-usertitle-job">
						Teacher
					</div>
				</div>
                        <div class="profile-usertitle-email">
						<asp:label runat="server" id="Lbl_SenderEmail" text="example@example.com"></asp:label>
					</div>
				<!-- END SIDEBAR USER TITLE -->

  <a href="LoggedOn.aspx"><h4>User Profile</h4></a>
  <a href="#services"><h4>Students</h4></a>
  <a href="Dashboard.aspx"><h4>Send Email</h4></a>
  <a href="index.aspx"><h4>Logout</h4></a>
</div>
     
        </div>
            </div>

        <div class="main">
            <asp:label id="label4" runat="server" text="email sender"></asp:label><br />
            <asp:label id="label1" runat="server" text="from :"></asp:label><asp:textbox id="txt_from" runat="server" textmode="email"></asp:textbox><br />
            <asp:label id="label2" runat="server" text="to :"></asp:label><asp:textbox id="txt_to" runat="server" textmode="email"></asp:textbox><br />
            <asp:label id="label6" runat="server" text="subject"></asp:label><asp:textbox id="txt_email_subj" runat="server"></asp:textbox><br />
            <asp:label id="label3" runat="server" text="message: "></asp:label><br />
            <asp:textbox id="txt_msg" runat="server" textmode="multiline"></asp:textbox><br />
            <asp:button id="btn_send" runat="server" text="send" /><br />
            <asp:label id="label5" runat="server" text="status: "></asp:label><asp:label id="lbl_status" runat="server" text="unknown"></asp:label>
        </div>
    </form>
</body>
</html>
