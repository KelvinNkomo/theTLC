<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Synergince.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
    .style2
    {
        width: 58%;
            font-size: small;
        }
    .style3
    {
        text-align: left;
    }
    .style4
    {
        width: 179px;
    }
        .style5
        {
            width: 116px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style1">
        &nbsp;</p>
    <p class="style1">
        <asp:Label ID="Label1" runat="server" BackColor="Yellow" Height="100px" 
            Width="1000px"></asp:Label>
    </p>
    <p>
        <span class="style1"><table 
        class="style2">
        <tr>
            <td class="style3" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                Please fill in the form below to add a Course.</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                Course Code:</td>
            <td class="style4">
                <asp:TextBox ID="txtCourseCode" runat="server" MaxLength="7" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Please fill in" ForeColor="Red" 
                    ControlToValidate="txtCourseCode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Course Name :</td>
            <td class="style4">
                <asp:TextBox ID="txtCourseName" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Please fill in" ForeColor="Red" 
                    ControlToValidate="txtCourseName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="btnAddCourse" runat="server" Text="Add Course" 
                    onclick="btnAddCourse_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </span>
        <br />
    </p>
</asp:Content>
