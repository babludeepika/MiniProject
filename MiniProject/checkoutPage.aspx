<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkoutPage.aspx.cs" Inherits="MiniProject.checkoutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        border: 5px solid #000080;
        background-color: #CCFF66;
    }
    .auto-style3 {
        height: 52px;
    }
    .auto-style4 {
        height: 275px;
    }
    .auto-style5 {
        margin-right: 15px;
    }
        .auto-style6 {
            margin-left: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" style="font-family: 'Times New Roman', Times, serif; font-size: large; font-style: normal; color: #FF0066">&nbsp;&nbsp;&nbsp; Visitors In&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="297px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Search  by ID" Width="124px" />
                    <asp:Button ID="Button2" runat="server" Text="Search by Name" Width="119px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" OnClick="Button3_Click" Text="Button" Width="93px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:GridView ID="GridView1" runat="server" >
                        <Columns>
                         <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button id="b1" runat="server" Text="Click to SignOut" OnClick="b1_Click1" />
                </ItemTemplate>
            </asp:TemplateField>
                            </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(local);Initial Catalog=ProjectDb;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                </td>
            </tr>
        </table>
</asp:Content>
