<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InterviewTask.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
    <tr>
        <td rowspan="12" style="width: 169px">
            <asp:Image ID="Image1" runat="server" Height="251px" ImageUrl="~/Image/bus2gif.gif" Width="358px" />
            </td>
        <td class="modal-lg" style="width: 263px; height: 22px;"></td>
        <td class="modal-lg" style="width: 358px; height: 22px"></td>
        <td rowspan="12">
            <asp:Image ID="Image2" runat="server" Height="263px" ImageUrl="~/Image/gifbus.gif" Width="800px" style="margin-left: 78px" />
        </td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 358px">
            <asp:TextBox ID="usertxt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px; height: 22px">
            <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
        </td>
        <td style="height: 22px; width: 358px;">
            <asp:TextBox ID="passtxt" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Don&#39;t have an account please register</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="76px" />
        </td>
        <td class="modal-lg" style="width: 358px">&nbsp;&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-lg" style="width: 263px">&nbsp;</td>
        <td class="modal-lg" style="width: 358px">&nbsp;</td>
    </tr>
</table>

    <br /><br />


</asp:Content>
