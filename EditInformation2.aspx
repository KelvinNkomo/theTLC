<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage.Master" AutoEventWireup="true" CodeBehind="EditInformation2.aspx.cs" Inherits="Synergince.EditInformation2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


p
{
    margin-bottom: 10px;
    line-height: 1.6em;
    font-family: Arial, Helvetica, sans-serif;
    font-size: small;
    text-align: left;
}


        .style2
        {
            width: 55%;
            height: 162px;
        }
        .style8
        {
            width: 216px;
            font-size: small;
        text-align: right;
    }
        .style7
        {
            width: 234px;
        }
        .style11
    {
        width: 92px;
        font-size: small;
        text-align: right;
    }
        .style4
        {
            width: 187px;
            font-size: small;
        }
        .style6
        {
            width: 36%;
        }
        .style9
        {
            width: 460px;
        }
        .style10
        {
            width: 100%;
        }
    
a:link, a:visited
{
    color: #034af3;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
    <p class="style12">
        <strong>Please select table to edit below.</strong><table class="style2">
            <tr>
                <td class="style8">
                    Select Table :</td>
                <td class="style7">
                    <asp:DropDownList ID="drpTable" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="style11">
                    Search:</td>
                <td class="style4">
                    <asp:TextBox ID="txtSearch" runat="server" ontextchanged="TextBox1_TextChanged" 
                        Width="163px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:tlcString %>" 
                        SelectCommand="SELECT name FROM sys.tables"></asp:SqlDataSource>
                </td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </td>
                <td class="style11">
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btnSearch" runat="server" onclick="Button1_Click1" 
                        Text="Search" Width="75px" />
                </td>
            </tr>
        </table>
    </p>
        <div>
    <table class="style6">
        <tr>
            <td class="style9">
                    <table class="style10">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                        CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" 
                                        CommandName="Edit" Text="Edit"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" 
                                        CommandName="Select" Text="Select"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                        CommandName="Delete" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </div>
    </div>
    <br />
</asp:Content>
