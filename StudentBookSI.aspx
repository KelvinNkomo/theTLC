<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentBookSI.aspx.cs" Inherits="Synergince.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>
<title>Booking</title>
    <link href="StyleSheet2.css" rel="stylesheet" />
</head>
<div id="site-content">
			<header class="site-header">
				
					<a href="StudentHome.aspx" id="branding">
						<img src= "Image/images.png" alt="Site Title" />
                       <%-- &nbsp;--%>
					</a> <!-- #branding -->
					
					<nav class="main-navigation">
						<button type="button" class="toggle-menu"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item"><a href="StudentHome.aspx">Home</a></li>
							<li class="menu-item"><a href="StudentProfile.aspx">My Profile</a></li>
							<li class="menu-item current-menu-item"><a href="StudentBookSI.aspx">Book SI</a></li>
							<li class="menu-item"><a href="StudentBookLWAP.aspx">Book LWAP</a></li>
							<li class="menu-item"><a href="StudentBookings.aspx">My Bookings</a></li>
							<li class="menu-item"><a href="Account/Login.aspx">Logout</a></li>
						</ul> <!-- .menu -->
					</nav> <!-- .main-navigation -->
					<div class="mobile-menu"></div>
        </div>
        
			
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
        width: 112px;
        text-align: right;
    }
        .style3
        {
            font-style: italic;
            font-weight: 700;
        width: 339px;
    }
    
.submitButton
{
    text-align: right;
    padding-right: 10px;
}
    .style4
    {
        width: 339px;
    }
    .style5
    {
        width: 192px;
    }
</style>
    <style type="text/css">
        .style1
        {
            width: 139px;
        }
        .style2
        {
            width: 210px;
        }
    </style>
    <style type="text/css">
        .style1
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                Choose Course:</td>
        <td class="style4">
            <asp:DropDownList ID="drpCourse" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="CourseName" DataValueField="CourseCode">
            </asp:DropDownList>
        </td>
        <td class="style5">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:tlcString %>" 
                    SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                Pick a Date:</td>
        <td class="style4">
            <asp:Calendar ID="calDate" runat="server" BackColor="White" BorderColor="Black" 
                    BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="20px" NextPrevFormat="ShortMonth" TitleFormat="Month" 
                    Width="30px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        Height="8pt" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="12pt" ForeColor="White" Height="12pt" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td class="style5">
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblStudNum" runat="server" ForeColor="Red" Text="Label" 
                Visible="False"></asp:Label>
            <asp:Label ID="lblSIName" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="lblEmail" runat="server" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Image ID="Image1" runat="server" Height="180px" 
                ImageUrl="~/Image/20171005_134848.jpg" Width="180px" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                Pick a time:</td>
        <td class="style4">
            <asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                &nbsp;</td>
        <td class="style2">
                Description:</td>
        <td class="style3">
            <asp:TextBox ID="txtDescription" runat="server" CssClass="textEntry" 
                    Height="49px" MaxLength="140" ontextchanged="TextBox1_TextChanged" 
                    TextMode="MultiLine" Width="330px"></asp:TextBox>
            <br />
            <asp:Label ID="lblMaxLength" runat="server" Text="140 characters maximum." 
                CssClass="style1" Font-Size="X-Small"></asp:Label>
        </td>
        <td class="style5">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            <asp:Button ID="btnBook" runat="server" CssClass="submitButton" 
                    onclick="btnBook_Click" Text="Book" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
