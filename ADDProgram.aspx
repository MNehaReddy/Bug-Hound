<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDProgram.aspx.cs" Inherits="BUGHOUND.ADDProgram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validate() {
            var Name = document.getElementById('<%=txtname.ClientID %>').value;
            if (Name == "") {
                alert("Enter Name")
                return false;
            }
            var Version = document.getElementById('<%=txtver.ClientID %>').value;
            if (Version == "") {
                alert("Enter Version in Numerics Only")
                return false;
            }
            var Release = document.getElementById('<%=txtrel.ClientID %>').value;
            if (Release == "") {
                alert("Enter Release in Numerics Only")
                return false;
            }
        }
        function CheckNumeric(e) {

            if (window.event) // IE 
            {
                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                    event.returnValue = false;
                    return false;

                }
            }
            else { // Fire Fox
                if ((e.which < 48 || e.which > 57) & e.which != 8) {
                    e.preventDefault();
                    return false;

                }
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
         
          <div align="left">
          
        </div>
    <div align="center"><br /><br />
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Add Program </h1>
    <table>
    <tr>
    <td>
        <b>Name
    </b>
    </td>
    <td>
        <asp:TextBox ID="txtname" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>Version
    </b>
    </td>
    <td>
        <asp:TextBox ID="txtver" runat="server" onkeypress="CheckNumeric(event);" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>Release
    </b>
    </td>
    <td>
        <asp:TextBox ID="txtrel" runat="server" onkeypress="CheckNumeric(event);" Height="27px" Width="154px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
        <td>
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClientClick="return validate()" 
                onclick="btnsubmit_Click" BackColor="#00CC66" Height="32px" style="font-weight: 700" Width="85px" /></td>
                <td></td>
    </tr>
    </table>
    </div><div  style="margin-left:80%">
                        <table><tr><td>     <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ProgramMaintaince.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink> </td>
                            <td>  <asp:Button ID="btnback" runat="server" Text="Cancel" onclick="btnback_Click" BackColor="#33CC33" Height="34px" style="font-weight: 700" Width="61px" /></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body>
</html>
