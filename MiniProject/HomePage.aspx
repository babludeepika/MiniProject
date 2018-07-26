<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MiniProject.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        border: 5px solid #000080;
        background-color: #FFFF99;
    }
    .auto-style5 {
        height: 91px;
    }
    .auto-style6 {
        height: 98px;
    }
    .auto-style7 {
        height: 92px;
    }
    .auto-style8 {
        margin-left: 382px;
    }
    .auto-style9 {
        margin-left: 387px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family: Algerian; font-size: xx-large; font-weight: bolder; font-style: italic; color: #FF5050">
    <table class="auto-style2">
        <tr>
            <td class="auto-style6" style="font-family: Algerian; font-size: xx-large; font-weight: bolder; font-style: italic; font-variant: normal; color: #FF5050; text-decoration: underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CREATIVE SOLUTION WELCOMES YOU</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Height="50px" OnClick="Button1_Click" Text="Check In" Width="95px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="42px" OnClick="Button2_Click" Text="Check Out" Width="95px" />
            </td>
        </tr>
    </table>
    <br />
</p>
<p>
</p>
</asp:Content>
