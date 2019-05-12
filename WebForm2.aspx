<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Synergince.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

    <div>
        <div style="height: 123px">
            <asp:Label ID="Label1" runat="server" BackColor="Yellow" Height="103px" 
                Width="50px"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/images.png" />
        </div>
        <br />
        <div>
         <div id="menu">
            <ul style="height: 59px"> 
                    <li><a href = "#">Add details</a>
                    <ul><li><a href = "WebForm3.aspx"> Add Course
                    </a>
                    </li>
                    <li><a href = "Admin/SI.aspx">Add SI
                    </a>
                    </li>
                    <li><a href = "#">Add LWAP
                    </a>
                    </li>
                    </ul>
                    </li>
                    <li><a href = "#">Manage details</a>
                    </li>
                    <li><a href = "#">Reports</a>
                     <ul><li><a href = "#">Student
                    </a>
                    </li>
                    <li><a href = "#">Course
                    </a>
                    </li>
                    <li><a href = "#">LWAP
                    </a>
                    </li>
                    </ul>
                    </li>
                    <li><a href=Default.aspx>Logout
                    </a>
                    </li>
            </ul>
            </div>
        </div>
    </div>
</asp:Content>

