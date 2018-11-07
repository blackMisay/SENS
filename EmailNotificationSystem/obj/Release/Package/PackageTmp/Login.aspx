<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="EmailNotificationSystem.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - School Email Notification System</title>

    <link rel="stylesheet" type="text/css" href="Styles/Forme.css"/>
    <link rel="stylesheet" type="text/css" href="Styles/Extensions/util.css"/>
	<link rel="stylesheet" type="text/css" href="Styles/Extensions/main.css"/>

   	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="JavaScript.js"></script>

	<link rel="icon" type="image/png" href="Images/favicon.ico"/>

	<%--<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>

	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>

	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css"/>--%>

     <style>
        body{
            background-image:url('Images/back2.jpg');
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          
<div class="sidenav">
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
</div>
        <div>
            <header>
                <div class="main">
             <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(Images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<div class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<!--<input class="input100" type="text" name="username" placeholder="Enter username"  maxlength="10" required="required"/>-->
                        <asp:textbox CssClass="input100" id="Txt_User" name="username" runat="server" placeholder="Enter Username" required="required"></asp:textbox><br />
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<!--<input class="input100" type="password" name="pass" placeholder="Enter password"  maxlength="10" required="required"/>-->
                        <asp:textbox CssClass="input100" id="Txt_Pass" name="pass" placeholder="Enter password" runat="server" textmode="password" required="required"></asp:textbox><br />
						<span class="focus-input100"></span>
					</div>
                    
				<%--	(REMEMBER ME CHECKBOX )
                    <div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

					
					</div>--%>

						<div class="container-login100-form-btn">
						<asp:Button ID="Btn_Login" CssClass="login100-form-btn" runat="server" Text="Login"/>
					</div>
				</>
			</div>
		</div>
	</div>
	</div>
    </div>
            </header>
            </div> 
        
    </form>
</body>
</html>
