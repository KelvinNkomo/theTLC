<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="Synergince.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <style type="text/css">
        .style1
        {
            width: 91px;
        }
        .style3
        {
            width: 96px;
        }
        .style5
        {
            width: 99px;
        }
        .style7
        {
            width: 128px;
            text-align: right;
        }
        .style9
        {
            width: 162px;
            height: 125px;
        }
        .style15
        {
            width: 128px;
            height: 12px;
        }
        .style21
        {
            width: 128px;
            height: 25px;
        }
        .style23
        {
            width: 128px;
            height: 15px;
        }
        .style24
        {
            width: 128px;
            height: 17px;
        }
        .style28
        {
            width: 128px;
            height: 11px;
        }
        .style30
        {}
        .style31
        {}
        .style32
        {
            width: 128px;
            height: 46px;
            text-align: right;
        }
        .style34
        {
            width: 162px;
            height: 12px;
            text-align: right;
        }
        .style35
        {
            width: 162px;
            height: 25px;
            text-align: right;
        }
        .style36
        {
            width: 162px;
            height: 15px;
            text-align: right;
        }
        .style37
        {
            width: 162px;
            height: 17px;
            text-align: right;
        }
        .style38
        {
            width: 162px;
        }
        .style39
        {
            width: 162px;
            height: 46px;
            text-align: right;
        }
        .style40
        {
            width: 162px;
            height: 11px;
        }
        .style41
        {
            width: 209px;
            height: 12px;
        }
        .style42
        {
            width: 209px;
            height: 25px;
            text-align: right;
        }
        .style43
        {
            width: 209px;
            height: 15px;
            text-align: right;
        }
        .style44
        {
            width: 209px;
            height: 17px;
            text-align: right;
        }
        .style45
        {
            width: 209px;
        }
        .style46
        {
            width: 209px;
            height: 46px;
            text-align: right;
        }
        .style47
        {
            width: 209px;
            height: 11px;
        }
        .style48
        {
            height: 12px;
            width: 204px;
        }
        .style49
        {
            height: 25px;
            width: 204px;
            text-align: right;
        }
        .style50
        {
            width: 204px;
            height: 15px;
            text-align: right;
        }
        .style51
        {
            width: 204px;
            height: 17px;
            text-align: right;
        }
        .style52
        {
            width: 204px;
        }
        .style53
        {
            width: 204px;
            height: 46px;
            text-align: right;
        }
        .style54
        {
            width: 204px;
            height: 11px;
        }
        .style55
        {
            height: 12px;
            width: 225px;
        }
        .style56
        {
            height: 25px;
            width: 225px;
        }
        .style57
        {
            width: 225px;
            height: 15px;
        }
        .style58
        {
            width: 225px;
            height: 17px;
            text-align: right;
        }
        .style59
        {
            width: 225px;
        }
        .style60
        {
            width: 225px;
            height: 46px;
        }
        .style61
        {
            width: 225px;
            height: 11px;
        }
        .style62
        {
            width: 328px;
            height: 12px;
        }
        .style63
        {
            width: 328px;
            height: 25px;
            text-align: right;
        }
        .style64
        {
            width: 328px;
            height: 15px;
            text-align: right;
        }
        .style65
        {
            width: 328px;
            height: 17px;
            text-align: right;
        }
        .style66
        {
            width: 328px;
        }
        .style67
        {
            width: 328px;
            height: 46px;
            text-align: right;
        }
        .style68
        {
            width: 328px;
            height: 11px;
        }
        .style69
        {
            width: 162px;
            text-align: right;
        }
        .style70
        {
            width: 328px;
            text-align: right;
        }
        .style71
        {
            width: 204px;
            text-align: right;
        }
        .style72
        {
            width: 209px;
            text-align: right;
        }
    </style>
    <style type="text/css">
        .style1
        {
            height: 59px;
        }
        .style2
        {
            height: 36px;
        }
        .style3
        {
            width: 80px;
        }
        .style4
        {
            height: 36px;
            width: 323px;
            font-size: medium;
            text-align: right;
        }
        .style5
        {
            width: 84px;
        }
        .style7
        {
            width: 97px;
            font-size: medium;
            height: 23px;
            text-align: left;
        }
        .style8
        {
            width: 124px;
        }
        .style10
        {
            height: 36px;
            width: 320px;
        }
        .style11
        {
            width: 323px;
            font-size: medium;
            height: 58px;
            text-align: right;
        }
        .style13
        {
            width: 320px;
            height: 58px;
        }
        .style14
        {
            height: 58px;
        }
        .style15
        {
            width: 85px;
            font-size: medium;
        }
        .style18
        {
            width: 323px;
            font-size: medium;
            text-align: right;
        }
        .style20
        {
            width: 548px;
        }
        .style21
        {
            height: 58px;
            width: 548px;
        }
        .style22
        {
            height: 36px;
            width: 548px;
        }
        .style23
        {
            width: 127px;
            text-align: left;
        }
        .style24
        {
            width: 320px;
        }
        .style28
        {
            width: 548px;
            height: 45px;
            text-align: left;
        }
        .style29
        {
            height: 23px;
            width: 323px;
            font-size: medium;
            text-align: right;
        }
        .style30
        {
        }
        .style31
        {
        }
        .style32
        {
            height: 34px;
            width: 548px;
            text-align: left;
        }
        .style33
        {
            height: 23px;
            width: 320px;
        }
        .style34
        {
            height: 23px;
        }
        .style35
        {
            height: 23px;
            width: 548px;
        }
        .style36
        {
            width: 587px;
        }
        .style37
        {
            height: 58px;
            width: 587px;
        }
        .style38
        {
            height: 36px;
            width: 587px;
        }
        .style39
        {
            height: 23px;
            width: 587px;
        }
        .style40
        {
            width: 323px;
        }
        .style41
        {
            height: 36px;
            text-align: left;
        }
        .style42
        {
            height: 58px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" __designer:mapid="dd">
    <tr __designer:mapid="de">
        <td __designer:mapid="df" class="style40">
                </td>
        <td __designer:mapid="e0" class="style15" colspan="2">
                </td>
        <td __designer:mapid="e2" class="style24">
            &nbsp;</td>
        <td __designer:mapid="e2" class="style36">
            </td>
        <td __designer:mapid="e2" class="style48">
            </td>
        <td __designer:mapid="e2" class="style55">
            </td>
        <td __designer:mapid="e2" class="style20">
            </td>
    </tr>
    <tr __designer:mapid="de">
        <td __designer:mapid="df" class="style11">
                Student Number:</td>
        <td __designer:mapid="e0" class="style42" colspan="2">
            <asp:TextBox ID="txtStudnumber" runat="server" 
                        Width="170px" MaxLength="9" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="e2" class="style13">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtStudnumber" 
                        ErrorMessage="Please enter student number" ForeColor="Red" 
                        style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="e2" class="style37">
        </td>
        <td __designer:mapid="e2" class="style14">
            &nbsp;</td>
        <td __designer:mapid="e2" class="style14">
            &nbsp;</td>
        <td __designer:mapid="e2" class="style21">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="178">
        <td __designer:mapid="179" class="style18">
                Password:</td>
        <td __designer:mapid="17a" class="style23" colspan="2">
            <asp:TextBox ID="txtPassword" runat="server" 
                        Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="17c" class="style24">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" 
                        ErrorMessage="Please enter password" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="17c" class="style36">
            &nbsp;</td>
        <td __designer:mapid="17c" class="style50">
            &nbsp;</td>
        <td __designer:mapid="17c" class="style57">
            &nbsp;</td>
        <td __designer:mapid="17c" class="style20">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="17f">
        <td __designer:mapid="180" class="style4">
                Surname:</td>
        <td __designer:mapid="181" class="style41" colspan="2">
            <asp:TextBox ID="txtSurname" runat="server" 
                        Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="183" class="style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Please surname" ForeColor="Red" 
                        style="text-align: left" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="183" class="style38">
            &nbsp;</td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style22">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="17f">
        <td __designer:mapid="180" class="style4">
                Name:</td>
        <td __designer:mapid="181" class="style41" colspan="2">
            <asp:TextBox ID="txtName" runat="server" Width="170px" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="183" class="style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" 
                        ErrorMessage="Please enter your name" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="183" class="style38">
            &nbsp;</td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style22">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="17f">
        <td __designer:mapid="180" class="style4">
                Degree:</td>
        <td __designer:mapid="181" class="style41" colspan="2">
            <asp:Label ID="lblDisDegree" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="183" class="style10">
            <asp:DropDownList ID="drpDegree" runat="server" 
                        Width="170px" 
                onselectedindexchanged="drpDegree_SelectedIndexChanged">
                <asp:ListItem>Information Systems</asp:ListItem>
                <asp:ListItem>Computer Science</asp:ListItem>
                <asp:ListItem>Law</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="183" class="style38">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="drpDegree" 
                        ErrorMessage="Please select degree" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style2">
            &nbsp;</td>
        <td __designer:mapid="183" class="style22">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="e5">
        <td __designer:mapid="e6" class="style29">
                Faculty:</td>
        <td __designer:mapid="e7" class="style7" colspan="2">
            <asp:Label ID="lblDisFaculty" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="e9" class="style33">
            <asp:DropDownList ID="drpFaculty" runat="server" 
                        Width="170px" 
                onselectedindexchanged="drpFaculty_SelectedIndexChanged">
                <asp:ListItem Value="M&amp;C">Management and Commerce</asp:ListItem>
                <asp:ListItem Value="Eng&amp;Sci">Engineering and Science</asp:ListItem>
                <asp:ListItem>Law</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="e9" class="style39">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="drpFaculty" 
                        ErrorMessage="Please select faculty" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="e9" class="style34">
                &nbsp;</td>
        <td __designer:mapid="e9" class="style34">
            &nbsp;</td>
        <td __designer:mapid="e9" class="style35">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="ec">
        <td __designer:mapid="ed" class="style18">
                Year level:</td>
        <td __designer:mapid="ee" class="style32" colspan="2">
            <asp:Label ID="lblDisYear" runat="server" Text="Label"></asp:Label>
        </td>
        <td __designer:mapid="f0" class="style24">
            <asp:DropDownList ID="drpYearLevel" runat="server" 
                        Height="38px" Width="104px" 
                onselectedindexchanged="drpYearLevel_SelectedIndexChanged">
                <asp:ListItem>1st </asp:ListItem>
                <asp:ListItem>2nd</asp:ListItem>
                <asp:ListItem>3rd</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td __designer:mapid="f0" class="style36">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpYearLevel" 
                        ErrorMessage="Please select year level" ForeColor="Red" 
                    style="text-align: left"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="f0" class="style53">
                &nbsp;</td>
        <td __designer:mapid="f0" class="style60">
            &nbsp;</td>
        <td __designer:mapid="f0" class="style20">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="101">
        <td __designer:mapid="109" class="style18">
                Phone number:</td>
        <td __designer:mapid="103" class="style28" colspan="2">
            <asp:TextBox ID="txtPhonenum" runat="server" 
                        Width="170px" MaxLength="10" ReadOnly="True"></asp:TextBox>
        </td>
        <td __designer:mapid="105" class="style24">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhonenum" 
                        ErrorMessage="Please enter phone number" ForeColor="Red" 
                        style="text-align: left"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtPhonenum" 
                    ErrorMessage="Must be no less or more than 10 digits" ForeColor="Red" 
                    MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
        </td>
        <td __designer:mapid="105" class="style36">
            <br />
        </td>
        <td __designer:mapid="105" class="style54">
        </td>
        <td __designer:mapid="105" class="style61">
        </td>
        <td __designer:mapid="105" class="style20">
        </td>
    </tr>
    <tr __designer:mapid="101">
        <td __designer:mapid="109" class="style18">
                Email:</td>
        <td __designer:mapid="103" class="style28" colspan="2">
            <asp:TextBox ID="txtEmail" runat="server" Width="168px" ReadOnly="True" 
                TextMode="Email"></asp:TextBox>
        </td>
        <td __designer:mapid="105" class="style24">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Please enter your email" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td __designer:mapid="105" class="style36">
            &nbsp;</td>
        <td __designer:mapid="105" class="style54">
            &nbsp;</td>
        <td __designer:mapid="105" class="style61">
            &nbsp;</td>
        <td __designer:mapid="105" class="style20">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="108">
        <td __designer:mapid="187" class="style40">
                </td>
        <td __designer:mapid="10a" class="style3" colspan="2">
            <asp:Button ID="btneditProfile" runat="server" Text="Edit" 
                    onclick="btneditProfile_Click" CssClass="style30" Height="26px" 
                Width="55px" />
        </td>
        <td __designer:mapid="10c" class="style24">
            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
                CssClass="style31" Height="23px" Width="52px" />
            </td>
        <td __designer:mapid="10c" class="style36">
            </td>
        <td __designer:mapid="10c" class="style52">
        </td>
        <td __designer:mapid="10c" class="style59">
            &nbsp;</td>
        <td __designer:mapid="10c" class="style20">
            &nbsp;</td>
    </tr>
    <tr __designer:mapid="19b">
        <td __designer:mapid="19c" class="style40">
                &nbsp;</td>
        <td __designer:mapid="19d" class="style5" colspan="2">
            &nbsp;</td>
        <td __designer:mapid="19e" class="style24">
            &nbsp;</td>
        <td __designer:mapid="19e" class="style36">
            &nbsp;</td>
        <td __designer:mapid="19e" class="style52">
        </td>
        <td __designer:mapid="19e" class="style59">
        </td>
        <td __designer:mapid="19e" class="style20">
        </td>
    </tr>
    <tr __designer:mapid="19b">
        <td __designer:mapid="19c" class="style40">
                </td>
        <td __designer:mapid="19d">
            </td>
        <td __designer:mapid="19d" class="style8">
            </td>
        <td __designer:mapid="19e" class="style24">
            </td>
        <td __designer:mapid="19e" class="style36">
            </td>
        <td __designer:mapid="19e" class="style52">
            </td>
        <td __designer:mapid="19e" class="style59">
            </td>
        <td __designer:mapid="19e" class="style20">
            </td>
    </tr>
</table>

</asp:Content>
