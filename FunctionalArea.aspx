<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FunctionalArea.aspx.cs" Inherits="BUGHOUND.FunctionalArea" %>

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
     <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div>
         <div align="left">
             
        </div><div align="Right">
          
        </div>
    <div align="center"><br /><br />
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Functional Area </h1>
    <table>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ADDFunctionalArea.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Add Functional Area </asp:HyperLink>
    </td>
    </tr>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ModifyFunctional.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">Edit Functional Area</asp:HyperLink>
    </td>
    </tr>
    <tr>
    <td><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewFunctional.aspx" CssClass="auto-style1" Font-Size="Large" ForeColor="Black">View Functional Area Details</asp:HyperLink>
    </td>
    </tr>
    </table>
    </div><div  style="margin-left:80%">
                        <table><tr><td>   <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ProgramMaintaince.aspx" Font-Size="Large" ForeColor="Black">Back</asp:HyperLink></td>
                            <td>   <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/LoginForm.aspx" Font-Size="Large" ForeColor="Black">SignOut</asp:HyperLink></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body>
</html>
