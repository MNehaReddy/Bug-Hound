<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="BUGHOUND.LoginForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


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
                <h1 style="color: #00FFFF; font-family: 'Times New Roman', Times, serif;">Welcome Admin</h1>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="User Id" style="font-weight: 700"></asp:Label></td>
                        <td>
                            <asp:TextBox ID="txtlogin" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: 700">Password</td>
                        <td>
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" BackColor="#00CC66" Height="30px" Style="font-weight: 700" Width="83px" />
            </div> <div  style="margin-left:80%">
                        <table><tr><td> <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Main.aspx" ForeColor="Black" Style="font-weight: 700">Back</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp; </td>
                           <%-- <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Main.aspx" ForeColor="Black" Style="font-weight: 700">SignOut</asp:HyperLink></td>--%></tr></table>
               
            </div>
            <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
         


            <div align="center">
               
            </div>
            <div align="center">
                
            </div>
        </div>
    </form>
</body>
</html>
