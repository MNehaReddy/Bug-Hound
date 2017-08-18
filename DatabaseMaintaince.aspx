<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatabaseMaintaince.aspx.cs" Inherits="BUGHOUND.DatabaseMaintaince" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <div>
    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
    </div>--%>
           <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div>
    <div align="center"><br /><br />
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Database Maintaince</h1>
    <table>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeManagement.aspx" style="font-weight: 700" Font-Size="Large" ForeColor="Black">Employee Management</asp:HyperLink>
    </td>
    </tr>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ProgramMaintaince.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Program Management</asp:HyperLink>
    </td>
    </tr>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/FunctionalArea.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Functional Area Management</asp:HyperLink>
    </td>
    </tr>
    </table>
    </div>

        <div  style="margin-left:80%">
                        <table><tr><td>  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdminForm.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td>        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LoginForm.aspx" style="font-weight: 700" ForeColor="Black">SignOut</asp:HyperLink></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body>
</html>
