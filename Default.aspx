<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Synergince._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        font-family: Verdana;
        font-size: large;
        text-align: center;
    }
        .style2
        {
            width: 97%;
        }
        .style3
        {
            width: 288px;
        }
        .style4
        {
            width: 345px;
        }
        .style5
        {
            width: 288px;
            height: 105px;
            color: #333333;
        }
        .style6
        {
            width: 345px;
            height: 105px;
        }
        .style7
        {
            height: 105px;
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p class="style1">
    Welcome to the Univeristy of Fort Hare Teaching and Learning Center.</p>
<hr style="width: 929px" />
    <table class="style2">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" Height="200px" 
                    ImageUrl="~/Image/IMG-20170731-WA0043.jpg" Width="150px" />
            </td>
            <td class="style4">
                <asp:Image ID="Image3" runat="server" Height="200px" 
                    ImageUrl="~/Image/IMG-20170731-WA0054.jpg" Width="196px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="200px" 
                    ImageUrl="~/Image/IMG-20170731-WA0044.jpg" Width="183px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                We offer one on one teaching to give students a better chance of learning. The 
                students are helped by our Supplimentary Leaders.</td>
            <td class="style6" 
                style="border-style: none none dotted ridge; color: #333333; border-left-width: thin; border-right-width: thin; border-top-width: 0px; border-bottom-width: 0px;">
                We offer assistance in assignment reviweing. We do grammer erros and spelling 
                for you. Just come in and our Language and Writing Assistance Person will help 
                you.</td>
            <td class="style7" style="border-left-style: ridge; border-left-width: thin">
                We offer computer services for students to use. They can surf internet and look 
                up assignments.</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<br />

    </asp:Content>
   