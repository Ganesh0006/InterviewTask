<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusRoute.aspx.cs" Inherits="InterviewTask.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">&nbsp;</td>
            <td style="width: 785px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">&nbsp;</td>
            <td rowspan="11" style="width: 785px">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="519px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="busno" HeaderText="busno" SortExpression="busno" />
                        <asp:BoundField DataField="Arravial" HeaderText="Arravial" SortExpression="Arravial" />
                        <asp:BoundField DataField="droping" HeaderText="droping" SortExpression="droping" />
                        <asp:BoundField DataField="doj" HeaderText="doj" SortExpression="doj" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:taskConnectionString8 %>" SelectCommand="SELECT * FROM [travels]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="IblBusno" runat="server" Text="Bus No"></asp:Label>
            </td>
            <td class="modal-sm">
                <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="Iblfrom" runat="server" Text="From"></asp:Label>
            </td>
            <td class="modal-sm">
                <asp:DropDownList ID="ddlfrom" runat="server">
                    <asp:ListItem>choose any</asp:ListItem>
                    <asp:ListItem>chennai</asp:ListItem>
                    <asp:ListItem>Madurai</asp:ListItem>
                    <asp:ListItem>Trichy</asp:ListItem>
                    <asp:ListItem>pamba(sabarimala)</asp:ListItem>
                    <asp:ListItem>karur</asp:ListItem>
                    <asp:ListItem>Salem</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px; height: 20px">
                <asp:Label ID="Iblto" runat="server" Text="To"></asp:Label>
            </td>
            <td style="height: 20px; width: 300px">
                <asp:DropDownList ID="ddlto" runat="server">
                    <asp:ListItem>choose any</asp:ListItem>
                    <asp:ListItem>Trichy</asp:ListItem>
                    <asp:ListItem>chennai</asp:ListItem>
                    <asp:ListItem>Madurai</asp:ListItem>
                    <asp:ListItem>Salem</asp:ListItem>
                    <asp:ListItem>Erode</asp:ListItem>
                    <asp:ListItem>Karur</asp:ListItem>
                    <asp:ListItem>Pamba(sabarimala)</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px; height: 22px;">
                <asp:Label ID="Ibldoj" runat="server" Text="Date Of Journey"></asp:Label>
            </td>
            <td class="modal-sm" style="height: 22px">
                <asp:TextBox ID="dojtxt" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px; height: 20px;"></td>
            <td class="modal-sm" style="height: 20px">
                <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes,I Agree!" />
                <asp:Label ID="IblMessage" runat="server"></asp:Label>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">
                <asp:Label ID="Iblprice" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="modal-sm">
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 141px">&nbsp;</td>
            <td class="modal-sm">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <table class="nav-justified">
        <tr>
            <td style="height: 20px; width: 140px">
                <asp:Label ID="Iblerror" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel Operation" />
            </td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <br /><br />



</asp:Content>
