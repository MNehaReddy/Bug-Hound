<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="BUGHOUND.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#808080">   
        <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px" Font-family="Times New Roman" BorderColor="Silver" BorderStyle="Outset" ></asp:Label>
              </div>
       
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <%-- <div>
    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
    </div>--%>
    <div>
    <table align="center">
    <tr ><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnadmin" runat="server" Text="Admin Login" Font-Bold="True" Font-family="Times New Roman"
            Font-Size="Medium" ForeColor="Black" onclick="btnadmin_Click" BackColor="#00CC66" Height="43px" Width="196px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnemployee" runat="server" Text="Employee Login" Font-Bold="True"  Font-family="Times New Roman"
                Font-Size="Medium" ForeColor="Black" onclick="btnemployee_Click" BackColor="#009999" Height="40px" Width="206px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    </table><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div><%--<div>
        <img src="Images/1.jpg" Height="160px" Width="100%" />
          </div>--%></div>
    </form>
</body>
</html>
