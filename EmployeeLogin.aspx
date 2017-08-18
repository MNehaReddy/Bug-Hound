<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="BUGHOUND.EmployeeLogin" %>

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
            <div align="left">
               
            </div>
            <div align="center">
                <br />
                <h1 style="color: #00FFFF; font-family: 'times New Roman', Times, serif;">Employee Login</h1>
            </div>
            <div align="Center">
                <table>
                    <tr>
                        <td class="auto-style1">User Id</td>
                        <td>
                            <asp:TextBox ID="txtlogin" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Password</b></td>
                        <td>
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <br />
                        <td>


                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#00CC66" Height="30px" Style="font-weight: 700" Width="83px" OnClick="btnsubmit_Click" />
                        </td>
                    </tr>
                </table>
          
       <div  style="margin-left:80%">
                        <table><tr><td>         <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Main.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td>  &nbsp;</td></tr></table>
               
           </div>  </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>  </div>
    </form>
</body>
</html>
