<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profile.aspx.vb" Inherits="EmailNotificationSystem.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
         <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
         <link rel="stylesheet" type="text/css" href="/Content/Styles/Forme.css"  />
         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"/>
         <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet"/>
         <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <style>
        body{
            background-image:url('/Content/Images/back2.jpg');
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
					<img src="/Content/Images/Icons/teacher.png" class="img-responsive" alt=""/>
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
						<asp:label runat="server" id="profemail" text="example@example.com"></asp:label>
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
             <ul class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
      <li><a href="#profile" data-toggle="tab">Password</a></li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane active in" id="home">
        <form id="tab">
            <label>Username</label>
            <input type="text" value="jsmith" class="input-xlarge"/>
            <label>First Name</label>
            <input type="text" value="John" class="input-xlarge"/>
            <label>Last Name</label>
            <input type="text" value="Smith" class="input-xlarge"/>
            <label>Email</label>
            <input type="text" value="jsmith@yourcompany.com" class="input-xlarge"/>
            <label>Address</label>
            <textarea value="Smith" rows="3" class="input-xlarge">2817 S 49th
    Apt 314
    San Jose, CA 95101
            </textarea>
            <!--dropdown-->
           <%-- <label>Time Zone</label>
            <select name="DropDownTimezone" id="DropDownTimezone" class="input-xlarge">
              <option value="-12.0">(GMT -12:00) Eniwetok, Kwajalein</option>
              <option value="-11.0">(GMT -11:00) Midway Island, Samoa</option>
              <option value="-10.0">(GMT -10:00) Hawaii</option>
              <option value="-9.0">(GMT -9:00) Alaska</option>
              <option selected="selected" value="-8.0">(GMT -8:00) Pacific Time (US & Canada)</option>
              <option value="-7.0">(GMT -7:00) Mountain Time (US & Canada)</option>
              <option value="-6.0">(GMT -6:00) Central Time (US & Canada), Mexico City</option>
              <option value="-5.0">(GMT -5:00) Eastern Time (US & Canada), Bogota, Lima</option>
              <option value="-4.0">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option>
              <option value="-3.5">(GMT -3:30) Newfoundland</option>
              <option value="-3.0">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option>
              <option value="-2.0">(GMT -2:00) Mid-Atlantic</option>
              <option value="-1.0">(GMT -1:00 hour) Azores, Cape Verde Islands</option>
              <option value="0.0">(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
              <option value="1.0">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option>
              <option value="2.0">(GMT +2:00) Kaliningrad, South Africa</option>
              <option value="3.0">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option>
              <option value="3.5">(GMT +3:30) Tehran</option>
              <option value="4.0">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option>
              <option value="4.5">(GMT +4:30) Kabul</option>
              <option value="5.0">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
              <option value="5.5">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option>
              <option value="5.75">(GMT +5:45) Kathmandu</option>
              <option value="6.0">(GMT +6:00) Almaty, Dhaka, Colombo</option>
              <option value="7.0">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
              <option value="8.0">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option>
              <option value="9.0">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option>
              <option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
              <option value="10.0">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option>
              <option value="11.0">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option>
              <option value="12.0">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option>
            </select>--%>
          	<div>
        	    <button class="btn btn-primary">Update</button>
        	</div>
        </form>
      </div>
      <div class="tab-pane fade" id="profile">
    	<form id="tab2">
        	<label>New Password</label>
        	<input type="password" class="input-xlarge">
        	<div>
        	    <button class="btn btn-primary">Update</button>
        	</div>
    	</form>
      </div>
  </div>
       <%--<div class="col-md-7 ">
<div class="panel panel-default">
  <div class="panel-heading">  <h4 >User Profile</h4></div>
    <div class="panel-body">
       
    <div class="box box-info">
        
            <div class="box-body">
                     <div class="col-sm-6">
                     <div align="center"> <img alt="User Pic" src="images/icons/janet.png" id="profile-image1" class="img-circle img-responsive"/> 
                
                <input id="profile-image-upload" class="hidden" type="file"/>
                <!--Upload Image Js And Css-->
                     </div>
              <br/>
    
              <!-- /input-group -->
            </div>
            <div class="col-sm-6">
            <h4 style="color:#00b1b1;">Janet Lim-Napoles </h4>
              <span><p>Teacher</p></span>            
            </div>
            <div class="clearfix"></div>
            <hr style="margin:5px 0 5px 0;"/>
    
              
<div class="col-sm-5 col-xs-6 tital " >First Name:</div><div class="col-sm-7 col-xs-6 ">Janet</div>
     <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Middle Name:</div><div class="col-sm-7"> Lim</div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Last Name:</div><div class="col-sm-7"> Napoles</div>
  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date Of Joining:</div><div class="col-sm-7">15 Jun 2016</div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Date Of Birth:</div><div class="col-sm-7">11 Jun 1459</div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Place Of Birth:</div><div class="col-sm-7">Dimahanaphanap City</div>

 <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Nationality:</div><div class="col-sm-7">Alien</div>

 <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Religion:</div><div class="col-sm-7">Satanist</div>

            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>       
    </div> 
    </div>
    </div>--%>
    </div>
            
        
        
        <script>
              $(function() {
    $('#profile-image1').on('click', function() {
        $('#profile-image-upload').click();
    });
});       
        </script> 
       
       
       
       
  
    </form>
</body>
</html>
