<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmploye.aspx.cs" Inherits="BUGHOUND.AddEmploye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        function Validate() {

            var UserId = document.getElementById('<%=txtid.ClientID %>').value;
            if (isNaN(UserId)) {
                alert("Enter UserId in Numbers Only");
                return false;
            }

            var Name = document.getElementById('<%=txtname.ClientID %>').value;
            if (Name == "") {
                alert("Enter Name");
                return false;
            }



            var Password = document.getElementById('<%=txtpwd.ClientID %>').value;
             if (!(Password.length >= 6)) {
                 alert("Enter Password Must Contain 6 Characters");
                 return false;
             }

             var Contact = document.getElementById('<%=txtcontact.ClientID %>').value;
            if (!(Contact.length == 10)) {
                alert("Enter Contact Number Should Contain 10 Numbers ");
                return false;
            }

        }
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
        //        function CheckNumeric(e) {

        //            if (window.event) // IE 
        //            {
        //                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
        //                    event.returnValue = false;
        //                    return false;

        //                }
        //            }
        //            else { // Fire Fox
        //                if ((e.which < 48 || e.which > 57) & e.which != 8) {
        //                    e.preventDefault();
        //                    return false;

        //                }
        //                else {
        //                    alert("Enter Numbers only");
        //                }
        //            }
        //  }
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div>
       
      
       
    <div align="center"><br />
    <h1 style="color:#00FFFF; font-family: 'times New Roman', Times, serif;">Add Employee</h1>
    <table>
    <tr>
    <td>
        <b>UserId
    </b>
    </td>
    <td><asp:TextBox ID="txtid" runat="server" onkeypress="return IsNumeric(event);" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>Name
    </b>
    </td>
    <td><asp:TextBox ID="txtname" runat="server" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>Password
    </b>
    </td>
    <td><asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>
        <b>Contact
    </b>
    </td>
    <td><asp:TextBox ID="txtcontact" runat="server" Height="27px" Width="156px"></asp:TextBox></td>
    </tr>
    <tr>
    <br />
    <td><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
    <td><asp:Button ID="btnadd" runat="server" Text="Submit" 
            onclick="btnadd_Click"  OnClientClick ="return  Validate()" BackColor="#00CC66" Height="39px" style="font-weight: 700" Width="177px" /></td>
            <td>
                </td>
    </tr>
    </table>
    </div>

         <div align="left">
           
        </div><div  style="margin-left:80%">
                        <table><tr><td>    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/EmployeeManagement.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td><asp:Button ID="btnback" runat="server" Text="Cancel" onclick="btnback_Click" BackColor="#339966" Height="37px" style="font-weight: 700" Width="71px" /></td></tr></table>
               
            </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
    </form>
</body></html>
