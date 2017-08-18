<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="BUGHOUND.DeleteEmployee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validate() {
            var UserId = document.getElementById('<%=ddlid.ClientID %>').value;
            if (UserId == "") {
                alert("Enter UserId")
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div>
    <div align="center"><br />
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Delete Employee</h1>
    <table>
    <tr>
    <td style="font-weight: 700">
    UserId
    </td>
    <td>
        <asp:DropDownList ID="ddlid" runat="server" Height="26px" Width="154px">
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </td>
    <td>
        <asp:Button ID="btndelete" runat="server" Text="Delete" 
          OnClientClick="return validate()"   onclick="btndelete_Click" BackColor="#33CC33" Height="31px" style="font-weight: 700" Width="87px" /></td>
    </tr>
    <tr>
    <td></td>
    <td>
       </td>
    </tr>
    </table>
    </div><div  style="margin-left:80%">
                        <table><tr><td>    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EmployeeManagement.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td> <asp:Button ID="btnback" runat="server" Text="Cancel" onclick="btnback_Click1" BackColor="#00CC66" Height="30px" style="font-weight: 700" Width="71px" /></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body>
</html>
