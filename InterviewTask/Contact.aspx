<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="InterviewTask.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3><b>HEAD OFFICE</b></h3>
    <address>
        Koyambedu CMBT<br />
        Periyar Market Road,Chennai-92<br />
    </address>
    <address>
        Ph:9087654321</address>

   
    <h3><b>BRANCH OFFICE</b></h3>
    <address>
       GKM Colony<br />
        Thiruvallur Street, Perambur -82<br />
        <abbr title="Phone"></abbr>
        Ph:21436587980
    </address>

    <address>
        <strong>Genral:</strong>   <a href="mailto:Support@example.com">chennaitravels@example.com</a><br />
        <strong>Enquiry:</strong> <a href="mailto:Marketing@example.com">travelsenquiry@example.com</a>
    </address>
</asp:Content>
