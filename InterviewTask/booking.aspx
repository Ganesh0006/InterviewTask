<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="InterviewTask.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td rowspan="11">
            <br />
            <asp:Label ID="Label6" runat="server" Text="Every 1hour The Bus Is Available"></asp:Label>
            <br />
           <b> This Is Special Bus For Festival Season The Price would Decide Travels Company.</b><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="BusId" DataSourceID="SqlDataSource2" Height="193px" Width="618px">
                <Columns>
                    <asp:BoundField DataField="BusId" HeaderText="BusId" InsertVisible="False" ReadOnly="True" SortExpression="BusId" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="pickup" HeaderText="pickup" SortExpression="pickup" />
                    <asp:BoundField DataField="designation" HeaderText="designation" SortExpression="designation" />
                    <asp:BoundField DataField="JourneyDate" HeaderText="JourneyDate" SortExpression="JourneyDate" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\information.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [students]"></asp:SqlDataSource>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 231px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px; height: 22px">
            <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
        </td>
        <td style="height: 22px; width: 231px;">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td style="height: 22px"></td>
    </tr>
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">
            <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 231px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">
            <asp:Label ID="Label4" runat="server" Text="Journey Date"></asp:Label>
        </td>
        <td class="modal-sm" style="width: 231px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; width: 110px"></td>
        <td style="height: 20px; width: 231px;"></td>
        <td style="height: 20px"></td>
    </tr>
    <tr>
        <td style="width: 110px">&nbsp;</td>
        <td class="modal-sm" style="width: 231px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book" Width="121px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 110px">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="2023-11-25" ShowGridLines="True" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
        </td>
        <td class="modal-sm" style="width: 231px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

    <br /><br />


</asp:Content>
