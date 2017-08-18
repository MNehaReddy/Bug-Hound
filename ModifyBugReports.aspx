<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyBugReports.aspx.cs" Inherits="BUGHOUND.ModifyBugReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

           <div style="background-color:#808080">   
           
       <br/><div align="center">
                     <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px"  BorderColor="Silver" BorderStyle="Outset" font-family= "Times New Roman"></asp:Label>
              </div> 
         
        <div align="center">
            <h1 style="color: Blue">&nbsp;</h1>
            <div align="center" style="color: #00FFFF; font-family: &quot;Times New Roman&quot;, Times, serif">
            <h1 style="color: #00FFFF; font-family: 'Times New Roman', Times, serif;">Search Bug Details</h1>
            <table style="font-family: 'Times New Roman', Times, serif; color: #000000">
                <%--<tr>
                    <td>BugID
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlbugid" runat="server" Height="26px" Width="154px" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlbugid_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>--%>

                <tr>
                    <td>Program
                    </td>
                    <td>
                        <asp:TextBox ID="txtprogram" runat="server" Height="26px" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Report Type
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlRpttype" runat="server" Height="26px" Width="156px" >
                            <asp:ListItem>----Select----</asp:ListItem>
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
                    <td>Sevirity
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlsevirity" runat="server" Height="26px" Width="156px">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Fatal</asp:ListItem>
                            <asp:ListItem>Serious</asp:ListItem>
                            <asp:ListItem>Minor</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Functional Area
                    </td>
                    <td>
                        <asp:TextBox ID="txtfunArea" runat="server" Height="26px" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>AssignedTo
                    </td>
                    <td>
                        <asp:TextBox ID="txtassignTo" runat="server" Height="26px" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Status
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlstatus" runat="server" Height="26px" Width="156px">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Open</asp:ListItem>
                            <asp:ListItem>Close</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Priority
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlprority" runat="server" Height="26px" Width="156px">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Fix Immediately</asp:ListItem>
                            <asp:ListItem>Fix As Soon As possible</asp:ListItem>
                            <asp:ListItem>Fix Before Next MileStone</asp:ListItem>
                            <asp:ListItem>Fix Before Release</asp:ListItem>
                            <asp:ListItem>Fix It Possible</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Resolution
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlresolution" runat="server" Height="26px" Width="156px">
                            <asp:ListItem>----Select----</asp:ListItem>
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>Fix</asp:ListItem>
                            <asp:ListItem>Deferred</asp:ListItem>
                            <asp:ListItem>Cant be Fixed</asp:ListItem>
                            <asp:ListItem>Need More Info</asp:ListItem>
                            <asp:ListItem>Withdrawn By Reporter</asp:ListItem>
                            <asp:ListItem>Design With Suggestion</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Reported By
                    </td>
                    <td>
                        <asp:TextBox ID="txtrptby" runat="server" Height="26px" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Reported Date
                    </td>
                    <td>
                        <asp:TextBox ID="txtreporteddate" runat="server" Height="26px" Width="154px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/calender.jpg"
                            Height="16px" OnClick="ImageButton1_Click" />
                        <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Resolved By
                    </td>
                    <td>
                        <asp:TextBox ID="txtresolvedby" runat="server" Height="26px" Width="154px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnSearchBug" runat="server" Text="SearchBug"
                            OnClick="btnSearchBug_Click" BackColor="#00CC99" Height="34px" Style="font-weight: 700" Width="123px" />
                    </td>
                    <td>
                        
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <div align="center">
            <asp:GridView ID="gdview" runat="server" DataKeyNames="BugId" AutoGenerateColumns="false" OnRowCommand="gdview_RowCommand"
                OnSelectedIndexChanged="gdview_SelectedIndexChanged" BackColor="White">
                <Columns>
                    <asp:TemplateField HeaderText="BugId">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkId" runat="server" CommandName="Id" Text='<%#Eval("BugId")%>' CommandArgument='<%#Eval("BugId")%>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <%--<tr>
    <td>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </td>
    <td>
        <asp:Button ID="btnupdate" runat="server" Text="Update" Font-Bold="True" 
            Font-Size="Medium" ForeColor="#000099" onclick="btnupdate_Click1" /></td>
    </tr>--%>

        <%--    <table>
    <tr>
    <td>
            <asp:Button ID="btnview" runat="server" Text="View Bug Report" Font-Bold="True" 
            Font-Size="Medium" ForeColor="#000099" onclick="btnview_Click"  /></td>
    </tr>--%>
        <%-- <tr>
    <td>
    <asp:GridView ID="gdview" runat="server" AutoGenerateColumns="false" DataKeyNames="BugId" 
            onrowcancelingedit="gdview_RowCancelingEdit" onrowdeleting="gdview_RowDeleting" 
            onrowediting="gdview_RowEditing" onrowupdating="gdview_RowUpdating" 
            onrowdatabound="gdview_RowDataBound">
     <Columns>
        <asp:BoundField DataField="Bugid" HeaderText="BugId" />
        <asp:BoundField DataField="Program" HeaderText="Program" />
        <%--<asp:BoundField DataField="ReportedType" HeaderText="ReportedType" />--%>
        <%--<asp:TemplateField HeaderText="ReportedType">
        <EditItemTemplate>
         <asp:DropDownList ID="c" runat="server" DataSourceID="BUG_HOUND" DataTextField="city" DataValueField="ReportedType"
			SelectedValue='<%# Bind("select ReportedType from ADDNewBug") %>'
          Width="100px"/>
        </EditItemTemplate>
         
      </asp:TemplateField>
        <asp:BoundField DataField="Sevirity" HeaderText="Sevirity" />
        <asp:BoundField DataField="FunctionalArea" HeaderText="FunctionalArea" />
        <asp:BoundField DataField="AssignedTo" HeaderText="AssignedTo" />
        <asp:BoundField DataField="Status" HeaderText="Status" />
        <asp:BoundField DataField="Priority" HeaderText="Priority" />
        <asp:BoundField DataField="Resolution" HeaderText="Resolution" />
        <asp:BoundField DataField="ReportedBy" HeaderText="ReportedBy" />
        <asp:BoundField DataField="ReportedDate" HeaderText="ReportedDate" />--%>
        <%--        <asp:BoundField DataField="ResolvedBy" HeaderText="ResolvedBy" />
        <asp:CommandField ShowEditButton="true" />
        <asp:CommandField ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>--%>
        <%-- </td>
    </tr>
    </table>
    </div>--%>
        <div>
        </div>
        <div  style="margin-left:80%">
                        <table><tr><td>          <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Employeemain.aspx" ForeColor="Black" style="font-weight: 700">Back</asp:HyperLink></td>
                            <td>  <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Main.aspx" CssClass="auto-style1" ForeColor="Black">SignOut</asp:HyperLink></td></tr></table>
               
           </div>  </div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>  </div>
    </form>
</body>
</html>
