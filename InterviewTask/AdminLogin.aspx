<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="InterviewTask.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td rowspan="12" style="width: 375px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/lock.gif" Width="366px" Height="292px" />
        </td>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">
            <asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 545px">
            <asp:TextBox ID="txtUser" runat="server" Width="255px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">
            <asp:Label ID="Label2" runat="server" Text="PassWord" Font-Bold="True" Font-Size="Medium"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 545px">
            <asp:TextBox ID="txtPass" runat="server" Width="254px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Submit" Width="135px" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300" />
        </td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 412px">&nbsp;</td>
        <td class="modal-lg" style="width: 545px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    <br /><br />

</asp:Content>
