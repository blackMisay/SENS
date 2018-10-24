<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="EmailNotificationSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - School Notification System</title>
    <link rel="stylesheet" type="text/css" href="\Styles\Main.css" />
</head>
<body>

    <form id="body" runat="server">
         <div class="imgcontainer">
            <h3>School Notification System</h3>
       </div>
        <div>     
            <div class="container">
                <!-- user -->
                <label for="uname"><b>Username</b></label>
                <asp:TextBox CssClass="input" Type="text" placeholder="Enter Username" ID="Txt_Uname" runat="server" required></asp:TextBox>
                <!-- pw -->
                <label for="psw"><b>Password</b></label>
                <asp:TextBox CssClass="input" Type="password" placeholder="Enter Password"  ID="Txt_Pass" runat="server" TextMode="Password" required></asp:TextBox>             
    
                <asp:Button CssClass="Login" ID="Btn_SignIn" runat="server" Text="Sign in" />

                <label style="font-family: 'Segoe UI', Arial, Helvetica, sans-serif">
                    <input type="checkbox" checked="checked" name="remember"/> Remember me
                    <a href="#" style="float: right;">Forgot password?</a>
                </label>
            </div>
            <div class="container">  
                 <!-- Empty -->
            </div>
        </div>       
    </form>
</body>
</html>
