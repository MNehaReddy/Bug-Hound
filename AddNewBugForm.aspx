<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewBugForm.aspx.cs" Inherits="BUGHOUND.AddNewBugForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
    </div>
    <div align="center"><br />
    <h1 style="color:Blue">ADD New Bug Report</h1>
    <table>
    <tr>
    <td>
    Program
    </td>
    <td>
    <asp:TextBox ID="txtprogram" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>Report Type</td>
    <td>
        <asp:DropDownList ID="ddlRpttype" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Codding Error</asp:ListItem>
            <asp:ListItem>Design Issue</asp:ListItem>
            <asp:ListItem>Documentation</asp:ListItem>
            <asp:ListItem>Suggestion</asp:ListItem>
            <asp:ListItem>Query</asp:ListItem>
            <asp:ListItem>Hardware</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>Sevirity</td>
        <td>
        <asp:DropDownList ID="ddlsevirity" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Fatal</asp:ListItem>
            <asp:ListItem>Serious</asp:ListItem>
            <asp:ListItem>Minor</asp:ListItem>
        </asp:DropDownList>
    </td></tr>
    <tr>
    <td>
    Functional Area
    </td>
    <td><asp:TextBox ID="txtfunArea" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
    AssignedTo
    </td>
    <td><asp:TextBox ID="txtassignTo" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
    Status
    </td>
    <td>
        <asp:DropDownList ID="ddlstatus" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Open</asp:ListItem>
            <asp:ListItem>Close</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Priority
    </td>
    <td>
        <asp:DropDownList ID="ddlprority" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Fix Immediately</asp:ListItem>
            <asp:ListItem>Fix As Soon As possible</asp:ListItem>
            <asp:ListItem>Fix Before Next MileStone</asp:ListItem>
            <asp:ListItem>Fix Before Release</asp:ListItem>
            <asp:ListItem>Fix It Possible</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Resolution
    </td>
    <td>
        <asp:DropDownList ID="ddlresolution" runat="server" Height="26px" Width="154px">
        <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
            <asp:ListItem>Fix</asp:ListItem>
            <asp:ListItem>Deferred</asp:ListItem>
            <asp:ListItem>Cant be Fixed</asp:ListItem>
            <asp:ListItem>Need More Info</asp:ListItem>
            <asp:ListItem>Withdrawn By Reporter</asp:ListItem>
            <asp:ListItem>Design With Suggestion</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Reported By
    </td>
    <td><asp:TextBox ID="txtrptby" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
            <tr>
    <td>
    Reported Date
    </td>
    <td>
    <asp:TextBox ID="txtreporteddate" runat="server" Height="26px" Width="154px"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/calender.jpg" 
            Height="16px" onclick="ImageButton1_Click"  />
            <asp:Calendar ID="Calendar1" runat="server" Visible="False" 
            onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
    </td>
    </tr>
    <tr>
    <td>
    Resolved By
    </td>
    <td><asp:TextBox ID="txtresolvedby" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </td>
    <td>
        <asp:Button ID="btnadd" runat="server" Text="ADD" ForeColor="Black" Height="37px" style="font-weight: 700" Width="85px" BackColor="#00CC99" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
