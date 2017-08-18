<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDNewBugReport.aspx.cs" Inherits="BUGHOUND.ADDNewBugReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <script type="text/javascript">
      function validate() {
          var Program = document.getElementById('<%=txtprogram.ClientID %>').value;
          if (Program == "") {
              alert("Enter Program")
          }
          var ReportType = document.getElementById('<%=ddlRpttype.ClientID %>').value;
          if (ReportType == "") {
              alert("Enter Report Type")
          }
          var Sevirity = document.getElementById('<%=ddlsevirity.ClientID %>').value;
          if (Sevirity == "") {
              alert("Enter Sevirity")
          }
          var ProgramSummary = document.getElementById('<%=txtprsumm.ClientID %>').value;
          if (ProgramSummary == "") {
              alert("Enter Program Summary")
          }
          var Reproductable = document.getElementById('<%=ddlre.ClientID %>').value;
          if (Program == "") {
              alert("Enter Program")
          }
          var Version = document.getElementById('<%=txtversion.ClientID %>').value;
          if (Version == "") {
              alert("Enter Version")
          }
          var Release = document.getElementById('<%=txtrelease.ClientID %>').value;
          if (Release == "") {
              alert("Enter Release")
          }
          var ProblemType = document.getElementById('<%=txtproblem.ClientID %>').value;
          if (ProblemType == "") {
              alert("Enter ProblemType")
          }
          var SuggestedFix = document.getElementById('<%=txtsuggested.ClientID %>').value;
          if (SuggestedFix == "") {
              alert("Enter Suggested Fix")
          }
          var ReportedBy = document.getElementById('<%=txtreportedby.ClientID %>').value;
          if (ReportedBy == "") {
              alert("Enter Reported By")
          }
      }
  </script>        
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
    </div>
    <div align="center"><br />
    <h1 style="color:Blue">ADD New Bug Report</h1>
    <table>
    <tr>
    <td>
    Program
    </td>
    <td>
    <asp:TextBox ID="txtprogram" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>Report Type</td>
    <td>
        <asp:DropDownList ID="ddlRpttype" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Codding Error</asp:ListItem>
            <asp:ListItem>Design Issue</asp:ListItem>
            <asp:ListItem>Documentation</asp:ListItem>
            <asp:ListItem>Suggestion</asp:ListItem>
            <asp:ListItem>Query</asp:ListItem>
            <asp:ListItem>Hardware</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>Sevirity</td>
        <td>
        <asp:DropDownList ID="ddlsevirity" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Fatal</asp:ListItem>
            <asp:ListItem>Serious</asp:ListItem>
            <asp:ListItem>Minor</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Program Summary
    </td>
    <td>
    <asp:TextBox ID="txtprsumm" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td>Reproductable</td>
    <td>
        <asp:DropDownList ID="ddlre" runat="server" Height="26px" Width="154px">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
    Version
    </td>
    <td>
    <asp:TextBox ID="txtversion" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Release
    </td>
    <td>
    <asp:TextBox ID="txtrelease" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    ProblemType
    </td>
    <td>
    <asp:TextBox ID="txtproblem" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Suggested Fix
    </td>
    <td>
    <asp:TextBox ID="txtsuggested" runat="server" Height="26px" Width="154px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Reported By
    </td>
    <td>
    <asp:TextBox ID="txtreportedby" runat="server" Height="26px" Width="154px"></asp:TextBox>
        <asp:ImageButton ID="img" runat="server" ImageUrl="~/Images/calender.jpg" 
            Height="16px" onclick="img_Click" />
            <asp:Calendar ID="Cal" runat="server" 
            onselectionchanged="Cal_SelectionChanged" Visible="False"></asp:Calendar>
            </td>
    </tr>
    <tr>
    <td><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
    <td><asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClientClick="return validate()" 
            onclick="btnsubmit_Click" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
