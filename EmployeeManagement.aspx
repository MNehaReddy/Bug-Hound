﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeManagement.aspx.cs" Inherits="BUGHOUND.EmployeeManagement" %>

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
       
        <div align="center">
            <br />
            <br />
            <h1 style="color: #00FFFF; font-family: 'times New Roman', Times, serif;">Employee Maintence</h1>
            <table>
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddEmploye.aspx" Font-Size="Large" ForeColor="Black" style="font-weight: 700">Add Employee </asp:HyperLink>
                    </td>
                </tr>

                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UpdateEmployee.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Update Employee</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DeleteEmployee.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Delete Employee</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ViewEmployee.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">View Employee Details </asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>

            

              <div  style="margin-left:80%">
                        <table><tr><td>  <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/DatabaseMaintaince.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
                            <td>        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Main.aspx" ForeColor="Black" style="font-weight: 700">SignOut</asp:HyperLink></td></tr></table>
               
            </div>
             <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />
         </div>
    </form>
</body>
</html>
