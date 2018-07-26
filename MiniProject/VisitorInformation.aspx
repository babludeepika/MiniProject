<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="VisitorInformation.aspx.cs" Inherits="MiniProject.VisitorInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        border: 1px solid #000080;
        background-color: #FFFFFF;
    }
    .auto-style3 {
        width: 146px;
    }
    .auto-style6 {
        width: 146px;
        height: 29px;
    }
    .auto-style7 {
        height: 29px;
        width: 596px;
    }
    .auto-style14 {
        width: 146px;
        height: 27px;
    }
    .auto-style15 {
        height: 27px;
        width: 596px;
    }
    .auto-style16 {
        width: 146px;
        height: 26px;
    }
    .auto-style17 {
        height: 26px;
        width: 596px;
    }
    .auto-style18 {
        width: 146px;
        height: 28px;
    }
    .auto-style19 {
        height: 28px;
        width: 596px;
    }
    .auto-style20 {
        margin-left: 16px;
    }
    .auto-style21 {
        margin-left: 13px;
    }
    .auto-style22 {
        margin-left: 15px;
    }
    .auto-style23 {
        margin-left: 17px;
    }
    .auto-style24 {
        margin-left: 6px;
        margin-bottom: 0px;
    }
    .auto-style27 {
        margin-left: 19px;
    }
    .auto-style28 {
        width: 596px;
    }
    .auto-style29 {
        width: 792px;
    }
    .auto-style30 {
        height: 29px;
        width: 792px;
    }
    .auto-style31 {
        height: 27px;
        width: 792px;
    }
    .auto-style32 {
        height: 26px;
        width: 792px;
    }
    .auto-style33 {
        height: 28px;
        width: 792px;
    }
    .auto-style34 {
        width: 146px;
        height: 12px;
    }
    .auto-style35 {
        height: 12px;
        width: 792px;
    }
    .auto-style36 {
        height: 12px;
        width: 596px;
    }
        .auto-style37 {
            margin-left: 23px;
            margin-right: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VISITOR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INFORMATION&nbsp;&nbsp; </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">FIRST NAME :</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtfname" runat="server" CssClass="auto-style20" Width="319px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="First Name cannot be blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">LAST NAME :</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtlname" runat="server" CssClass="auto-style21" Width="331px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" ErrorMessage="Last Name cannot be Blank"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">COMPANY :</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtcompany" runat="server" CssClass="auto-style22" Width="330px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcompany" ErrorMessage="Company Name is Manditory"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">VISITING :</td>
            <td class="auto-style31">
                <asp:TextBox ID="txtvisiting" runat="server" CssClass="auto-style20" Width="229px"></asp:TextBox>
            </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtvisiting" ErrorMessage="Specify whom to visit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">ID TYPE :</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtidtype" runat="server" CssClass="auto-style23" Width="172px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID NUMBER :<asp:TextBox ID="txtidno" runat="server" CssClass="auto-style24" Width="176px"></asp:TextBox>
            </td>
            <td class="auto-style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtidtype" ErrorMessage="Enter ID Type"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtidno" ErrorMessage=" ID NO cannot be null"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">VEHICLE NUMBER :</td>
            <td class="auto-style35">
                <asp:TextBox ID="txtvehicleno" runat="server" CssClass="auto-style23" Width="203px"></asp:TextBox>
            </td>
            <td class="auto-style36">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtvehicleno" ErrorMessage="format:KA14-ED3363" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">CONTACT NUMBER :</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtcontactno" runat="server" CssClass="auto-style23" Width="201px"></asp:TextBox>
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcontactno" ErrorMessage="phoneno cant be blank"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcontactno" ErrorMessage="Enter 10 digits number" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">PURPOSE OF VISIT :</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtpov" runat="server" CssClass="auto-style27" Width="202px"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpov" ErrorMessage="Specify purpose of visiting company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="btncancel" runat="server" Text="CANCEL" Width="94px" OnClick="btncancel_Click" />
            </td>
            <td class="auto-style33">
                <asp:Button ID="btnsave" runat="server" Text="SAVE" Width="86px" OnClick="btnsave_Click" CssClass="auto-style37" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
    <br />
</p>
</asp:Content>
