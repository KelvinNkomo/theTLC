<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="Synergince.testingaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<!-- Loading main css file -->
		<!--<link rel="stylesheet" href="style.css">-->
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->
    <link href="StyleSheet2.css" rel="stylesheet" />
    
</head>

	<body onload="Slider();" class="header-collapse">
		
		<form id="form1" runat="server">

		<header class="site-header">
		<div id="site-content">
					<a href="StudentHome.aspx" id="branding">
						<img src= "Image/images.png" alt="Site Title" />
                       <%-- &nbsp;--%>
					</a> <!-- #branding -->
					
					<nav class="main-navigation">
						<button type="button" class="toggle-menu"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item current-menu-item"><a href="StudentHome.aspx">Home</a></li>
							<li class="menu-item"><a href="StudentProfile.aspx">My Profile</a></li>
							<li class="menu-item"><a href="StudentBookSI.aspx">Book SI</a></li>
							<li class="menu-item"><a href="StudentBookLWAP.aspx">Book LWAP</a></li>
							<li class="menu-item"><a href="StudentBookings.aspx">My Bookings</a></li>
							<li class="menu-item"><a href="Account/Login.aspx">Logout</a></li>
						</ul> <!-- .menu -->
					</nav> <!-- .main-navigation -->
					<div class="mobile-menu"></div>
        </div>

        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
        <script type="text/javascript">

            function Slider()
             {
                 $(".slider#5").show("fade", 5000);
                 $(".slider#5").delay(5500).hide("slide",{direction: "left"},5000);

                 var sc = $(".slider img").size();
                 var count = 2;

                 setInterval(function () {
                     $(".slider#" + count).show("slide", { direction: "right" }, 5000);
                     $(".slider #" + count).delay(5500).hide("slide", { direction: "left" }, 5000);

                     if (count == sc) { count = 1; }
                     else {
                         count = count + 1;
                     } 
                 }, 6500);
            }
        
        </script>

       
        <div class ="slider">
        <img id="1"src="Image/IMG-20170731-WA0042.jpg" border="0" alt="Hello" />
        <img id="2"src="Image/IMG-20170731-WA0045.jpg" border="0" alt="Bye" />
        <img id="3"src="Image/IMG-20170731-WA0050.jpg" border="0" alt="Goodbye" />
        <img id="4"src="Image/IMG-20170731-WA0054.jpg" border="0" alt="Uhhh" />
        <img id="5"src="Image/images.jpg" border="0" alt="mnj" />
        </div>
			</header> <!-- .site-header -->
            <script src="js/jquery-1.11.1.min.js"></script>		
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
            </form>
            </body>
<%--<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>--%>
</html>
