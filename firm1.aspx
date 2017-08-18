<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firm1.aspx.cs" Inherits="BUGHOUND.firm1" %>

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
    <div align="center">
     <h1 style="color:Blue">Modify Bug Details</h1>
    <table>
    <tr>
    <td>
    BugID
    </td>
    
    <td>
    
        <asp:TextBox ID="txtbugid" runat="server" Enabled="False" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
     
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
        <asp:TextBox ID="txtreporttype" runat="server" Height="26px" Width="154px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Sevirity</td>
        <td>
        <asp:TextBox ID="txtsevitity" runat="server" Height="26px" Width="154px"></asp:TextBox>
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
    <%--<td>--%>
       <%-- <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>--%>
    <%--</td>--%>
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
   <%-- <td>
       <asp:TextBox ID="txtpriority" runat="server"></asp:TextBox> 
    </td>--%>
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
    <%--<td>
<asp:TextBox ID="txtresolution" runat="server"></asp:TextBox>
    </td>--%>
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
        </asp:DropDownList></td>
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
        <asp:Button ID="btnupdate" runat="server" Text="Update" 
            onclick="btnupdate_Click" BackColor="#00CC66" Height="39px" style="font-weight: 700" Width="109px" />
        </td>
        <td>
            <asp:Button ID="btnback" runat="server" Text="Back" onclick="btnback_Click" BackColor="#00CC66" Height="31px" style="font-weight: 700" Width="77px" /></td>
    </tr>
    </table>
    </div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </form>
</body>
</html>
