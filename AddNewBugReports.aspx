<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewBugReports.aspx.cs" Inherits="BUGHOUND.AddNewBugReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script type="text/javascript">
            function validate() {
                var Program = document.getElementById('<%=txtprogram.ClientID %>').value;
            if (Program == "") {
                alert("Enter Program")
                return false;
            }
            var ReportedType = document.getElementById('<%=ddlRpttype.ClientID %>').value;
            if (ReportedType == "---Select---") {
                alert("Enter Reported Type")
                return false;
            }
            var Sevirity = document.getElementById('<%=ddlsevirity.ClientID %>').value;
            if (Sevirity == "---Select---") {
                alert("Enter Sevirity")
                return false;
            }
            var ProblemSummary = document.getElementById('<%=txtProblemSummary.ClientID %>').value;
            if (ProblemSummary == "") {
                alert("Enter ProblemSummary")
                return false;
            }
            var Reproducible = document.getElementById('<%=ddlRepoducible.ClientID %>').value;
            if (Reproducible == "---Select---") {
                alert("Enter Reproducible...")
                return false;
            }
            var Version = document.getElementById('<%=txtVersion.ClientID %>').value;
            if (Version == "") {
                alert("Enter Version")
                return false;
            }
            var Release = document.getElementById('<%=txtRelese.ClientID %>').value;
            if (Release == "") {
                alert("Enter Status")
                return false;
            }
            var Problem = document.getElementById('<%=txtProblem.ClientID %>').value;
            if (Problem == "") {
                alert("Enter Problem")
                return false;
            }
            var SuggestedFix = document.getElementById('<%=txtSuggestFix.ClientID %>').value;
            if (SuggestedFix == "") {
                alert("Enter SuggestedFix")
                return false;
            }
            <%-- var ReportedBy = document.getElementById('<%=txtrptby.ClientID %>').value;
            if (ReportedBy == "") {
                alert("Enter ReportedBy")
                return false;
            }--%>
            <%--   var ReportedDate = document.getElementById('<%=txtreporteddate.ClientID %>').value;
            if (ReportedDate == "") {
                alert("Enter ReportedDate")
                return false;
            }--%>
        <%--    var ResolvedBy = document.getElementById('<%=txtresolvedby.ClientID %>').value;
            if (ResolvedBy == "") {
                alert("Enter ResolvedBy")
                return false;
            }--%>
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
         
          <div style="background-color:#808080">   <div>
           <%-- <div><br/>
                <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
            </div>--%>
         <%--   <h1 >BUG HOUND </h1>--%>
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div>
            <div align="center">
                <br />
                <h1 style="color: #00FFFF; font-family: 'times New Roman', Times, serif;">Add New Bug Report</h1>
                <table>
                    <tr>
                        <td><strong style="font-family: 'Times New Roman', Times, serif">Program
                        </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="txtprogram" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Report Type</b></td>
                        <td>
                            <asp:DropDownList ID="ddlRpttype" runat="server" Height="26px" Width="156px">
                                <asp:ListItem>---Select---</asp:ListItem>
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
                        <td><b>Severity</b></td>
                        <td>
                            <asp:DropDownList ID="ddlsevirity" runat="server" Height="26px" Width="156px">
                                <asp:ListItem>---Select---</asp:ListItem>
                                <asp:ListItem>Fatal</asp:ListItem>
                                <asp:ListItem>Serious</asp:ListItem>
                                <asp:ListItem>Minor</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Problem Summary
                        </b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtProblemSummary" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
                    </tr>
                    <%-- <tr>
    <td>
    AssignedTo
    </td>
    <td><asp:TextBox ID="txtassignTo" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
    </tr>--%>
                    <tr>
                        <td><b>Reproducible</b></td>
                        <td>
                            <asp:DropDownList ID="ddlRepoducible" runat="server" Height="26px" Width="156px">
                                <asp:ListItem>---Select---</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Version
                        </b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtVersion" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Release
                        </b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRelese" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Problem</b></td>
                        <td>
                            <asp:TextBox ID="txtProblem" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><b>Suggeted Fix</b></td>
                        <td>
                            <asp:TextBox ID="txtSuggestFix" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><b>Reported By
                        </b>
                        </td>
                        <td>
                            <asp:TextBox ID="txtrptby" runat="server" Height="26px" Width="154px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td><b>Reported Date
                        </b>
                        </td>
                        <td>
                            <b>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </b>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" Text="ADD" Font-Bold="True" OnClientClick="return validate()"
                                Font-Size="Medium" ForeColor="#000099" OnClick="btnadd_Click" BackColor="#00FFCC" Height="38px" Width="97px" /></td>
                        <td>
                            
                        </td>
                    </tr>
                </table>


                <div>
                   
                </div>

            </div>
        </div>
         <div  style="margin-left:80%">
                        <table><tr><td> <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Employeemain.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td><asp:Button ID="btncancel" runat="server" Text="Cancel" BackColor="#00CC66" Height="37px" Style="font-weight: 700" Width="82px" OnClick="btncancel_Click" /></td></tr></table>
               
            </div></div>
    </form>
</body>
</html>
