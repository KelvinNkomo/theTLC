<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentBookLWAP.aspx.cs" Inherits="Synergince.StudentBookLWAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet2.css" rel="stylesheet" />
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
							<li class="menu-item"><a href="StudentBookSI.aspx">Book SI</a></li>
							<li class="menu-item current-menu-item"><a href="StudentBookLWAP.aspx">Book LWAP</a></li>
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
            text-align: right;
            width: 186px;
        }
        .style3
        {
            font-size: x-small;
        }
        .style4
        {
            text-align: right;
            width: 186px;
            font-style: normal;
        }
        .style5
        {
            font-style: normal;
        }
        .style6
        {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style5" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                Preferred LWAP:</td>
            <td class="style6">
                <asp:DropDownList ID="drpPrefLwap" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:tlcString %>" 
                    SelectCommand="SELECT [Name] FROM [LWAP]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                Pick a time:</td>
            <td class="style6">
                <asp:Calendar ID="calBookDay" runat="server" BackColor="White" 
                    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                    Font-Size="9pt" ForeColor="Black" Height="182px" NextPrevFormat="ShortMonth" 
                    Width="190px">
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
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                Preferred Time:
            </td>
            <td class="style6">
            <asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>08:00</asp:ListItem>
                <asp:ListItem>09:00</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
            </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                Upload assignment:</td>
            <td class="style6">
                <asp:FileUpload ID="fuFile" runat="server" />
                <br />
                <span class="style3">Only pdf and .docx</span></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnLWAP" runat="server" Font-Italic="False" Text="Book LWAP" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
