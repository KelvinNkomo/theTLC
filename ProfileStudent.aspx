<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileStudent.aspx.cs" Inherits="Synergince.ProfileStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <link href="StyleSheet1.css" rel="stylesheet" />
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
							<li class="menu-item  current-menu-item"><a href="StudentProfile.aspx">My Profile</a></li>
							<li class="menu-item"><a href="StudentBookSI.aspx">Book SI</a></li>
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
            width: 52%;
            height: 253px;
            margin-right: 0px;
        }
        .style10
        {
            width: 148px;
        }
        .style14
    {
            width: 272px;
            text-align: right;
        }
        .style11
        {
            width: 272px;
            text-align: right;
            height: 30px;
        }
        .style12
        {
            width: 148px;
            height: 30px;
        }
        .style16
    {
        text-align: left;
        width: 142px;
    }
    .style17
    {
        text-align: left;
        height: 30px;
        width: 142px;
    }
        .style18
        {
            width: 272px;
        }
        .style19
        {
            text-align: left;
        }
        .style20
        {
            text-align: left;
            height: 30px;
        }
        .style21
        {
            width: 188px;
        }
    </style>
    <style type="text/css">
        .style1
        {
            width: 198px;
            height: 731px;
        }
        .style2
        {
            width: 180px;
        }
        .style3
        {
            height: 65px;
        }
        .style4
        {
            width: 180px;
            height: 65px;
        }
        .style5
        {
            height: 77px;
        }
        .style6
        {
            width: 180px;
            height: 77px;
        }
        .style8
        {
            width: 180px;
            height: 22px;
        }
        .style9
        {
            width: 239px;
        }
        .style10
        {
            height: 65px;
            width: 124px;
        }
        .style11
        {
            height: 77px;
            width: 239px;
        }
        .style12
        {
            height: 65px;
            width: 130px;
        }
        .style13
        {
            height: 65px;
            width: 239px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" __designer:mapid="dd">
    <tr __designer:mapid="de">
        <td __designer:mapid="df" class="style8" colspan="5">
                Welcome. If you wish to make changes please press the <strong>EDIT</strong> 
                button below and later followed by the <strong>SAVE</strong> button, to save 
                your changes.</td>
    </tr>
    <tr __designer:mapid="de">
        <td __designer:mapid="df" class="style9">
                &nbsp;</td>
        <td __designer:mapid="e0" class="style10" colspan="2">
                &nbsp;</td>
        <td __designer:mapid="e2" class="style2">
            &nbsp;</td>
        <td __designer:mapid="e2" class="style19">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="de">
        <td __designer:mapid="df" class="style9">
                Student Number:</td>
        <td __designer:mapid="e0" class="style10" colspan="2">
            <asp:TextBox ID="txtStudnumber" runat="server" 
                        Width="170px" MaxLength="9" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="e2" class="style2">
            &nbsp;</td>
        <td __designer:mapid="e2" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStudnumber" 
                        ErrorMessage="Please enter student number" ForeColor="Red" 
                        style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="178">
        <td __designer:mapid="179" class="style9">
                Username:</td>
        <td __designer:mapid="17a" class="style10" colspan="2">
            <asp:TextBox ID="txtuserName" runat="server" 
                        Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="17c" class="style2">
            &nbsp;</td>
        <td __designer:mapid="17c" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuserName" 
                        ErrorMessage="Please enter username" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="17f">
        <td __designer:mapid="180" class="style9">
                Password:</td>
        <td __designer:mapid="181" class="style10" colspan="2">
            <asp:TextBox ID="txtPassword" runat="server" 
                        Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" 
                        ErrorMessage="Please enter password" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="e5">
        <td __designer:mapid="e6" class="style9">
                Name:</td>
        <td __designer:mapid="e7" class="style10" colspan="2">
            <asp:TextBox ID="txtName" runat="server" Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="e9" class="style2">
            &nbsp;</td>
        <td __designer:mapid="e9" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" 
                        ErrorMessage="Please enter your name" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="ec">
        <td __designer:mapid="ed" class="style9">
                Surname:</td>
        <td __designer:mapid="ee" class="style10" colspan="2">
            <asp:TextBox ID="txtSurname" runat="server" 
                        Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="f0" class="style2">
            &nbsp;</td>
        <td __designer:mapid="f0" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please surname" ForeColor="Red" 
                        style="text-align: left" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="f3">
        <td __designer:mapid="fb" class="style9">
                Faculty:</td>
        <td __designer:mapid="f5" class="style10" colspan="2">
            <asp:Label ID="lblDisFaculty" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="f7" class="style2">
            <asp:Label ID="lblFaculty" runat="server" Text="Select a Faculty:" 
                Visible="False"></asp:Label>
            <asp:DropDownList ID="drpFaculty" runat="server" 
                        Width="170px" 
                onselectedindexchanged="drpFaculty_SelectedIndexChanged" Visible="False">
                <asp:ListItem Value="M&amp;C">Management and Commerce</asp:ListItem>
                <asp:ListItem Value="Eng&amp;Sci">Engineering and Science</asp:ListItem>
                <asp:ListItem>Law</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="f7" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpFaculty" 
                        ErrorMessage="Please select faculty" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="fa">
        <td __designer:mapid="186" class="style9">
                Degree:</td>
        <td __designer:mapid="fc" class="style10" colspan="2">
            <asp:Label ID="lblDisDegree" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="fe" class="style2">
            <asp:Label ID="lblDegree" runat="server" Text=" Select Degree:" Visible="False"></asp:Label>
            <asp:DropDownList ID="drpDegree" runat="server" 
                        Width="170px" 
                onselectedindexchanged="drpDegree_SelectedIndexChanged" Visible="False">
                <asp:ListItem>Information Systems</asp:ListItem>
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Law</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="fe" class="style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="drpDegree" 
                        ErrorMessage="Please select degree" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="101">
        <td __designer:mapid="109" class="style9">
                Year level:</td>
        <td __designer:mapid="103" class="style12" colspan="2">
            <asp:Label ID="lblDisYear" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="105" class="style2">
            <asp:Label ID="lblYear" runat="server" Text="Select Year:" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="drpYearLevel" runat="server" 
                        Height="38px" Width="104px" 
                onselectedindexchanged="drpYearLevel_SelectedIndexChanged" Visible="False">
                <asp:ListItem>1st </asp:ListItem>
                <asp:ListItem>2nd</asp:ListItem>
                <asp:ListItem>3rd</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="105" class="style20">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpYearLevel" 
                        ErrorMessage="Please year level" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr __designer:mapid="108">
        <td __designer:mapid="187" class="style13">
                Phone number:</td>
        <td __designer:mapid="10a" class="style3" colspan="2">
            <asp:TextBox ID="txtPhonenum" runat="server" 
                        Width="170px" MaxLength="10" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="10c" class="style4">
            </td>
        <td __designer:mapid="10c" class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhonenum" 
                        ErrorMessage="Please enter phone number" ForeColor="Red" 
                        style="text-align: left"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtPhonenum" 
                    ErrorMessage="Must be no less or more than 10 digits" ForeColor="Red" 
                    MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
        </td>
    </tr>
    <tr __designer:mapid="19b">
        <td __designer:mapid="19c" class="style11">
                Email :</td>
        <td __designer:mapid="19d" class="style5" colspan="2">
            <asp:TextBox ID="txtEmail" runat="server" Width="168px" ReadOnly="True" 
                TextMode="Email"></asp:TextBox>
        </td>
        <td __designer:mapid="19e" class="style6">
            </td>
        <td __designer:mapid="19e" class="style5">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Please enter your email" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Please enter your email correctly. E.g abc@xyz.com" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr __designer:mapid="19b">
        <td __designer:mapid="19c" class="style9">
                </td>
        <td __designer:mapid="19d">
            <asp:Button ID="btneditProfile" runat="server" Text="Edit" 
                    onclick="btneditProfile_Click" />
        </td>
        <td __designer:mapid="19d">
            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
                Visible="False" />
        </td>
        <td __designer:mapid="19e" class="style2">
            </td>
        <td __designer:mapid="19e">
            </td>
    </tr>
</table>

    </form>
</body>
</html>
