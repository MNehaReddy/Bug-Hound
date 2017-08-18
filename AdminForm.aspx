<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminForm.aspx.cs" Inherits="BUGHOUND.AdminForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <%--  <div style="background-color:#808080">--%>
        <%-- <div>
            <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
        </div>
        --%>
           
        <div style="background-color: #808080">
            <br />
            <div align="center">
                <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px" Font-family="Times New Roman" BorderColor="Silver" BorderStyle="Outset"></asp:Label>
            </div>

        <br />
        <br />
        <div align="center">
            <br />
            <br />
            <h1 style="color: #00FFFF; font-family: 'Times New Roman', Times, serif;">Welcome&nbsp; Admin!</h1>
            <table>


                <tr>
                    <td>
                        <br style="font-family: &quot;Times New Roman&quot;, Times, serif" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ADDNEWBUGDetails.aspx"  ForeColor="Black" style="font-weight: 700" Font-Size="Large">Create New Bug Report</asp:HyperLink>

                    </td>
                </tr>
               
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ModifyBugReport.aspx" ForeColor="Black" style="font-weight: 700" Font-Size="Large">Search and Update Existing Bug Report</asp:HyperLink>

                    </td>
                </tr>

               <%-- <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/EmployeeLogin.aspx">Search Bug Report</asp:HyperLink>

                    </td>
                </tr>--%>
                 <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DatabaseMaintaince.aspx" ForeColor="Black" style="font-weight: 700" Font-Size="Large">Database Maintance</asp:HyperLink>

                    </td>
                </tr>
            </table>
    
           

            <div  style="margin-left:80%">
                        <table><tr><td>  <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/LoginForm.aspx" ForeColor="black" style="font-weight: 700">Back</asp:HyperLink>
     </td>
                            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/LoginForm.aspx" ForeColor="Black" style="font-weight: 700">SignOut</asp:HyperLink></td></tr></table>
               
            </div></div> <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

        </div>   
    </form>
</body>
</html>
