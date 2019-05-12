<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.Master" AutoEventWireup="true" CodeBehind="AddLWAP.aspx.cs" Inherits="Synergince.AddLWAP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style1
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style2
    {
        width: 63%;
    }
    .style3
    {
        width: 133px;
        text-align: right;
    }
    .style4
    {
            width: 141px;
            text-align: left;
        }
        .style5
        {
            width: 141px;
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style6
        {
            width: 133px;
            text-align: right;
            height: 34px;
        }
        .style7
        {
            width: 141px;
            text-align: left;
            height: 34px;
        }
        .style8
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span class="style1"><strong style="text-align: left">Please fill in the form below to add a Language and 
    Writting Advancement Programmer.</strong></span></p>
    <p>
    </p>
        <span class="style1"><table class="style2">
        <tr>
            <td class="style3">
                Username:</td>
            <td class="style4">
                <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Can not leave blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Password:</td>
            <td class="style4">
                <asp:TextBox ID="txtPassword" runat="server" Width="180px"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Can not leave blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Name:</td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Can not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Surname:</td>
            <td class="style4">
                <asp:TextBox ID="txtSurname" runat="server" Width="180px"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtSurname" ErrorMessage="Can not leave blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Time:</td>
            <td class="style5">
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
        </tr>
        <tr>
            <td class="style3">
                Days:</td>
            <td class="style5">
                <asp:RadioButtonList ID="rblDay" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Phone number:</td>
            <td class="style7">
                <asp:TextBox ID="txtPhoneNum" runat="server" Width="180px" MaxLength="10"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtPhoneNum" ErrorMessage="Can not leave blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
    </span>
            </td>
            <td class="style8">
            </td>
        </tr>
        <tr>
            <td class="style3">
                E-mail:</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
        <span class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Can not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Incorrect format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Image:</td>
            <td class="style4">
                <asp:Image ID="imgSI" runat="server" />
                <span class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Upload image" ForeColor="Red"></asp:RequiredFieldValidator>
                </span>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
        <span class="style1">
                <asp:Button ID="btnAddLWAP" runat="server" Text="Add LWAP" Width="88px" 
                    onclick="btnAddLWAP_Click" />
    </span>
            </td>
        </tr>
    </table>
    </span>
    <p>
    </p>
</asp:Content>
