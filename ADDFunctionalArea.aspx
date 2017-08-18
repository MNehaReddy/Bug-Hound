<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDFunctionalArea.aspx.cs" Inherits="BUGHOUND.ADDFunctionalArea" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validate() {
            var FName = document.getElementById('<%=txtname.ClientID %>').value;
            if (FName == "") {
                alert("Enter FName")
                return false;
            }
            var ProgramId = document.getElementById('<%=txtpid.ClientID %>').value;
            if (ProgramId=="")  {
                alert("Enter ProgramId in Numerics Only")
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
     
//        function allnumeric(inputtxt) {
//            var numbers = /^[0-9]+$/;
//            if (inputtxt.value.match(numbers)) {
//                alert('Your Registration number has accepted....');
//                document.form1.text1.focus();
//                return true;
//            }
//            else {
//                alert('Please input numeric characters only');
//                document.form1.text1.focus();
//                return false;
//            }
//        }   
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
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Add Funtional Area </h1>
    <table>
    <tr>
    <td>
        <b>FName
    </b>
    </td>
    <td>
        <asp:TextBox ID="txtname" runat="server" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>ProgramId
    </b>
    </td>
    <td>
        <asp:TextBox ID="txtpid" runat="server" onkeypress="CheckNumeric(event);" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
        <td>
            <asp:Button ID="btnadd" runat="server" Text="ADD" OnClientClick="return validate()" onclick="btnadd_Click" BackColor="#009900" Height="40px" style="font-weight: 700" Width="91px" /></td>
            <td></td>
    </tr>
   
    </table>
    </div><div  style="margin-left:80%">
                        <table><tr><td>         <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/FunctionalArea.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td><asp:Button ID="btnback" runat="server" Text="Cancel" onclick="btnback_Click" BackColor="#33CC33" Height="33px" style="font-weight: 700" Width="70px" /></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body>
</html>
