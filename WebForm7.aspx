<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="Synergince.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
   
</head>
  <<body class="header-collapse">
    <form id="form1" runat="server">
		<form id="form2" runat="server">

		<header class="site-header">
		<div id="site-content">
					<a href="StudentHome.aspx" id="branding">
						&nbsp;&nbsp;
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
			</header> <!-- .site-header -->
    </form>
</body>
</html>
