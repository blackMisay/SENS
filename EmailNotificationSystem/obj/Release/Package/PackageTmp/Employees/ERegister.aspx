<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ERegister.aspx.vb" Inherits="EmailNotificationSystem.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
         <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
         <link href="/Content/Styles/Forme.css" rel="stylesheet" />
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
         <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet"/>
         <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <style>
     body{
            background-image:url('/Images/back2.jpg');
        }
        
* {
    box-sizing: border-box;
}

.center{
    margin:auto;
    width:60%;
    padding:10px;
}
.profile-usertitle-email {
    text-transform: uppercase;
    color: #76ADDC;
    font-size: 10px;
    font-weight: 600;
    margin-bottom: 40px;
    padding-top:-15px;
}
        .whole {
            padding-left:70px;
            padding-top: 20px;
            border-radius: 5px;
       
        }
        input[type=submit] {
    width: 100%;
    background-color: #4C85AF;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
        input[type=submit]:hover {
    background-color: #407297;
}
        input[type=text], select, textarea {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
             input[type=email] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
    .form-title{
      text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
                   0px 8px 13px rgba(0,0,0,0.1),
                   0px 18px 23px rgba(0,0,0,0.1);
      background-color:#4C85AF;
      /*border-top:5px solid #0B5B95;
      border-top-left-radius:40px;
      border-top-right-radius:40px;*/
      border-radius:40px;
      border-top:5px solid #0B5B95;
      border-bottom:5px solid #0B5B95;
    }
    .form-title h1{
        color:white;
    }
                                                          /*The code is a bit of a mess at the moment! Sorry about that.*/

body {
  padding: 1rem;
  color: hsla(215, 5%, 50%, 1);
}
h1 {
  color: hsla(215, 5%, 10%, 1);
  margin-bottom: 2rem;
}
section {
  display: flex;
  flex-flow: row wrap;
}
section > div {
  flex: 1;
  padding: 0.5rem;
}
input[type="radio"] {
  display: none;
  &:not(:disabled) ~ label {
    cursor: pointer;
  }
  /*.sep &:disabled ~ label {
    color: hsla(150, 5%, 75%, 1);
    border-color: hsla(150, 5%, 75%, 1);
    box-shadow: none;
    cursor: not-allowed;
  }*/
}
.sep label {
  height: 100%;
  display: block;
  background: white;
  border: 2px solid;
  border-color: #045B9C;
  border-radius: 20px;
  padding: 5px;
  margin-bottom: 1rem;
  text-align: center;
  top: -14px;
  position: relative;
  box-shadow: 0px 3px 10px -2px hsla(150, 5%, 65%, 0.5);
  position: relative;
  margin-right:25px;
}
.sep input[type="radio"]:checked + label {
  background-color: #4697D3;
  color: hsla(215, 0%, 100%, 1);
  box-shadow: 0px 0px 20px hsla(206, 58%, 42%, 0.75);
  &::after {
    color: hsla(215, 5%, 25%, 1);
    font-family: FontAwesome;
    border: 2px solid hsla(150, 75%, 45%, 1);
    content: "\f00c";
    font-size: 24px;
    position: absolute;
    top: -25px;
    left: 50%;
    transform: translateX(-50%);
    height: 50px;
    width: 50px;
    line-height: 50px;
    text-align: center;
    border-radius: 50%; 
    background: white;
    box-shadow: 0px 2px 5px -2px hsla(0, 0%, 0%, 0.25);
  }
}
.sep input[type="radio"]#control_05:checked + label {
  background: red;
  border-color: red;
}
p {
  font-weight: 900;
}


@media only screen and (max-width: 700px) {
  section {
    flex-direction: column;
  }
}
.myhide {
    display:none;
}
.file{
    padding-left:380px;
}
    .center{
    margin:auto;
    width:60%;
    padding:10px;
}
    .submit{
        padding-left:280px;
        padding-top:100px;
    }
    .btn-lg{
        padding: 10px 20px;
    font-size: 20px;
    border-radius: 10px;
    width:50%;
    }


    /*GRID*/

      *{font-size: 13px;box-sizing: border-box;padding: 0;margin: auto 0;}
        .no-border {
            border: 0px solid #000000;
            width: 100%;  
            margin-bottom: 18px;  
            margin-top: 10px;}
        .form-group {
            position: relative;
            transition: all 0.2s ease 0s;
            width: 100%;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="sidenav">
       <div class="col-md-3">
          <div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="/Images/admin.jpg" class="img-responsive" alt=""/>
				</div>
                <!-- END SIDEBAR USERPIC -->
                    <!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						<asp:label runat="server" id="Lbl_EName" text="Name"></asp:label>
					</div>
					<div class="profile-usertitle-job">
						<asp:label runat="server" id="Lbl_Designation" text="Administrator"></asp:label>
					</div>
				</div>
                        <div class="profile-usertitle-email">
						<asp:label runat="server" id="Lbl_EEmail" text="example@example.com"></asp:label>
					</div>
				<!-- END SIDEBAR USER TITLE -->

  <asp:Button ID="Btn_UserReg" runat="server" Text="User Registration" />
  <asp:Button ID="Btn_StudReg" runat="server" Text="Student Registration" />
  <asp:Button ID="Btn_PWIS" runat="server" Text="People who's in the school" />
  <asp:Button ID="Btn_SendEmail" runat="server" Text="Send Email" />
  <asp:Button ID="Btn_Logout" runat="server" Text="Logout" />
 
</div>
        </div>
            </div>
        <div class="main">
           
		</div>
      <div class="main">
              <br /><br /><br />
           <div class="container py-4">
				         
                            <h3 style="text-align:center;color:white;font-weight:bold;background-color:steelblue;">USER LIST</h3>
                              
                               <asp:GridView CssClass="table table-bordered" HeaderStyle-CssClass="bg-primary text-white" ID="GView_Students" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" Width="1px"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" >
                        <ItemStyle Width="30px"></ItemStyle>
                    </asp:BoundField>

                    <asp:BoundField DataField="Fullname" HeaderText="Name" ItemStyle-Width="160" >
                        <ItemStyle Width="160px"></ItemStyle>
                    </asp:BoundField>

                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:HyperLink ID="lnkEmail" runat="server" Text='<%# Eval("Email") %>' NavigateUrl='<%# Eval("Email", "mailto:{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                               </div>
              <div class="whole">
                  
                  <div class="center">
  
    <div class="col-md-4">
	
			<div id="contact-form" class="form-container">
			<div class="row">
				<div class="form-title" style="text-align:center">
					<span><h1>USER REGISTRATION</h1></span>

		   	</div>
                <div class="center">
				
					<div style="padding-top:65px;">
						<label for="myName">First Name *</label>
						<input title="First name Input" id="myName" name="myName" class="form-control" type="text" data-validation="required" runat="server" pattern="[A-Za-z]{3}"/>
						<span id="error_name" class="text-danger" style="font-size:20px;"></span>
					</div>
					<div class="form-group">
						<label for="lastname">Last Name *</label>
						<input id="lastname" name="lastname" class="form-control" type="text" data-validation="email" runat="server"/>
						<span id="error_lastname" class="text-danger" style="font-size:20px;"></span>
					</div>
					<div class="form-group">
						<label for="age">Age *</label>
						<input id="age" name="age"  class="form-control" type="number" min="1" runat="server"/>
						<span id="error_age" class="text-danger" style="font-size:20px;"></span>
                        <div class="form-group">
						<label for="gender">Gender</label>
						<select name="gender" id="gender" class="form-control" runat="server">
							<option>Male</option>
							<option>Female</option>
						</select>
						<span id="error_gender" class="text-danger"></span>
					</div>
					<div class="form-group">
						<label for="phone">Phone Number *</label>
						<input type="text" id="phone" name="phone" class="form-control" maxlength="11" runat="server"/>
						<span id="error_phone" class="text-danger"></span>
					</div>
                        <%--<div class="form-group">
						<label for="disc">Discription</label>
						<textarea class="form-control" rows="3"></textarea>
					</div>--%>
                <div class="form-group">
					<label>User Type:</label>
            <select name="UserType" id="UserType" class="form-control">
              <option value="1">Teacher</option> 
              <option value="2">Employee</option>
              
            </select>
                    </div>
                        <div class="submit">
					<asp:Button Text="Submit" id="submit" type="submit" value="submit" CssClass="btn btn-primary btn-lg" runat="server"/>
			            </div>
				

			</div>
		</div>
	</div>
</div>      
					</div>
		        </div>
                  </div>

                     </div>
    </form>
     <script>
        $(document).ready(function () {
            $flag = 1;
            $("#myName").focusout(function () {
                if ($(this).val() == '') {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_name").text("*You have to enter your First name!");
                }
                else {
                    $(this).css("border-color", "#2eb82e");
                    $('#submit').attr('disabled', false);
                    $("#error_name").text("");

                }
            });
            $("#lastname").focusout(function () {
                if ($(this).val() == '') {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_lastname").text("*You have to enter your Last name!");
                }
                else {
                    $(this).css("border-color", "#2eb82e");
                    $('#submit').attr('disabled', false);
                    $("#error_lastname").text("");
                }
            });
            //$("#dob").focusout(function () {
            //    if ($(this).val() == '') {
            //        $(this).css("border-color", "#ff0000");
            //        $('#submit').attr('disabled', true);
            //        $("#error_dob").text("*you have to enter your date of birth!");
            //    }
            //    else {
            //        $(this).css("border-color", "#2eb82e");
            //        $('#submit').attr('disabled', false);
            //        $("#error_dob").text("");
            //    }
            //});
            $("#gender").focusout(function () {
                $(this).css("border-color", "#2eb82e");

            });
            $("#age").focusout(function () {
                if ($(this).val() == '') {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_age").text("*You have to enter your Age!");
                }
                else {
                    $(this).css({ "border-color": "#2eb82e" });
                    $('#submit').attr('disabled', false);
                    $("#error_age").text("");

                }
            });
            $("#phone").focusout(function () {
                $pho = $("#phone").val();
                if ($(this).val() == '') {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_phone").text("*You have to enter your Phone Number!");
                }
                else if ($pho.length != 10) {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_phone").text("*Length of Phone Number Should Be 11");
                }
                else if (!$.isNumeric($pho)) {
                    $(this).css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_phone").text("*Phone Number Should Be Numeric");
                }
                else {
                    $(this).css({ "border-color": "#2eb82e" });
                    $('#submit').attr('disabled', false);
                    $("#error_phone").text("");
                }

            });

            $("#submit").click(function () {
                if ($("#myName").val() == '') {
                    $("#myName").css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_name").text("*You have to enter your first name!");
                }
                if ($("#lastname").val() == '') {
                    $("#lastname").css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_lastname").text("*You have to enter your Last name!");
                }
                if ($("#dob").val() == '') {
                    $("#dob").css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_dob").text("*You have to enter your Date of Birth!");
                }
                if ($("#age").val() == '') {
                    $("#age").css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_age").text("*You have to enter your Age!");
                }
                if ($("#phone").val() == '') {
                    $("#phone").css("border-color", "#FF0000");
                    $('#submit').attr('disabled', true);
                    $("#error_phone").text("*You have to enter your Phone Number!");
                }
            });
        });
    </script>
</body>
</html>
