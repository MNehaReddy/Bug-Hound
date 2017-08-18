<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeemain.aspx.cs" Inherits="BUGHOUND.Employeemain" %>

<!DOCTYPE html>

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
     <div>
           <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div> 
        <div>
          
        </div>
        <div align="right">
           
        </div>
        <br />
        <br />
        <div align="center">
            <br />
            <br />
            <h1 style="color: #00FFFF; font-family: 'times New Roman', Times, serif;">Welcome To (Employee) <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h1>
            <table>
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddNewBugReports.aspx" ForeColor="Black" style="font-weight: 700">Create New Bug Report</asp:HyperLink>

                    </td>
                </tr>
               
                <tr>
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ModifyBugReports.aspx" ForeColor="Black" style="font-weight: 700">Search &amp;&amp; Update Existing Bug Report</asp:HyperLink>

                    </td>
                </tr>

            </table>
     <div  style="margin-left:80%">
                        <table><tr><td>          <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/EmployeeLogin.aspx" CssClass="auto-style1" ForeColor="Black">Back</asp:HyperLink></td>
                            <td>  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Main.aspx" CssClass="auto-style1" ForeColor="Black">SignOut</asp:HyperLink></td></tr></table>
               
           </div>  </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>  </div>
    </form>
</body>
</html>
