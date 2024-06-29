<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GridviewInsertUpdateDelete.aspx.cs" Inherits="InterviewTask.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <table class="nav-justified">
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px; height: 20px;"></td>
        <td class="modal-lg" style="width: 622px; height: 20px;"></td>
        <td rowspan="19">
           <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="Every 1Hour Bus Is Available"></asp:Label>
            <br />
            </b>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" Height="165px" Width="634px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="fromname" HeaderText="fromname" SortExpression="fromname" />
                    <asp:BoundField DataField="toname" HeaderText="toname" SortExpression="toname" />
                    <asp:BoundField DataField="journeyDate" HeaderText="journeyDate" SortExpression="journeyDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            s</td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Iblfrom" runat="server" Text="From"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 622px">
            <asp:DropDownList ID="ddlfrom" runat="server">
                <asp:ListItem>Choose Any</asp:ListItem>
                <asp:ListItem>chennai</asp:ListItem>
                <asp:ListItem>trichy</asp:ListItem>
                <asp:ListItem>madurai</asp:ListItem>
                <asp:ListItem>salem</asp:ListItem>
                <asp:ListItem>kanchipuram</asp:ListItem>
                <asp:ListItem>Pamba(sabarimala)</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px; height: 22px;">
            <asp:Label ID="Iblto" runat="server" Text="To"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 622px; height: 22px;">
            <asp:DropDownList ID="ddlto" runat="server">
                <asp:ListItem>Choose Any</asp:ListItem>
                <asp:ListItem>chennai</asp:ListItem>
                <asp:ListItem>madurai</asp:ListItem>
                <asp:ListItem>trichy</asp:ListItem>
                <asp:ListItem>salem</asp:ListItem>
                <asp:ListItem>kanchipuram</asp:ListItem>
                <asp:ListItem>Pamba(Sabarimala)</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td style="width: 136px; height: 20px"></td>
        <td style="height: 20px; width: 622px"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 136px">
            <asp:Label ID="Ibldoj" runat="server" Text="Date of Journey"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 622px">
            <asp:TextBox ID="txtDOJ" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px; height: 20px"></td>
        <td style="height: 20px; width: 622px">
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes! I Agree" />
            <asp:Label ID="IblMessage" runat="server"></asp:Label>
        </td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px; height: 26px;">
            <asp:Label ID="IblSID" runat="server"></asp:Label>
        </td>
        <td class="modal-lg" style="width: 622px; height: 26px;">
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Insert" />
            <asp:Button ID="btnupdate" runat="server" Text="Update" />
            <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" />
        </td>
        <td style="height: 26px"></td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">
            <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel Opeartion" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 136px">&nbsp;</td>
        <td class="modal-lg" style="width: 622px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>


</asp:Content>
