<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="InterviewTask.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            </td>
            <td class="modal-lg" style="width: 411px">
                <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="modal-lg" style="width: 411px">
                <asp:TextBox ID="passtxt" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px; margin-left: 40px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registerpage.aspx">Don&#39;t have an account please sign in</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="92px" OnClick="Button1_Click" />
            </td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 286px">&nbsp;</td>
            <td class="modal-lg" style="width: 411px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <br /><br />


</asp:Content>
