<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.Master" AutoEventWireup="true" CodeBehind="Add SI.aspx.cs" Inherits="Synergince.Add_SI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style1
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style2
    {
        width: 70%;
    }
    .style3
    {
        width: 178px;
        text-align: right;
    }
    .style4
    {
            width: 205px;
            text-align: left;
        }
    .style5
    {
        width: 334px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <p>
        <span class="style1"><strong>Please fill in the form below to add a new 
    Supplimentary Leader.</strong></span></p>
    <p>
        <span class="style1"><table class="style2">
        <tr>
            <td class="style3">
                Username:</td>
            <td class="style4">
                <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUserName" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password:</td>
            <td class="style4">
                <asp:TextBox ID="txtPassword" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Name:</td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Surname:</td>
            <td class="style4">
                <asp:TextBox ID="txtSurname" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtSurname" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Time:</td>
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
        </tr>
        <tr>
            <td class="style3">
                Days:</td>
            <td class="style4">
                <asp:RadioButtonList ID="rblDay" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Phone number:</td>
            <td class="style4">
                <asp:TextBox ID="txtPhoneNum" runat="server" Width="180px" 
                    ToolTip="Example 0731622037" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtPhoneNum" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                E-mail:</td>
            <td class="style4">
                <asp:TextBox ID="txtEmail" runat="server" Width="180px" 
                    ToolTip="Example abc@def.com"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Can not be left blank" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Incorrect format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Course:</td>
            <td class="style4">
                <asp:DropDownList ID="drpCourse" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="CourseName" DataValueField="CourseCode" Width="180px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:tlcString %>" 
                    SelectCommand="SELECT * FROM [Course]"></asp:SqlDataSource>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="drpCourse" ErrorMessage="Select a course" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Image:</td>
            <td class="style4">
                <asp:Image ID="imgSI" runat="server" />
                <span class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </span>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="No image uploaded" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
        <span class="style1">
                <asp:Button ID="btnAddSI" runat="server" Text="Add SI" Width="88px" 
                    onclick="btnAddSI_Click" style="text-align: right" />
    </span>
            </td>
        </tr>
    </table>
    </span>
        <br />
    </p>
</asp:Content>
