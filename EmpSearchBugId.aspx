<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpSearchBugId.aspx.cs" Inherits="BUGHOUND.EmpSearchBugId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


        <br />
        <div style="background-color: #808080">
            <br />
            <div align="center">
                <asp:Label runat="server" Text="BUG HOUND" BackColor="#CCCCCC" Font-Size="100px" BorderColor="Silver" BorderStyle="Outset" font-family="Times New Roman"></asp:Label>
            </div>
            <%-- <div>
            <asp:Image ID="img1" runat="server" ImageUrl="~/Images/bug hound.jpg" Height="200px" Width="100%" />
        </div>--%>

            <div align="center" style="overflow: auto">
                <br />
                <h1 style="color: #00FFFF; font-family: 'Times New Roman', Times, serif;">Update Bug Details</h1>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                    DataKeyNames="Bugid" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating"
                    OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound" BackColor="#00CC99">
                    <Columns>
                        <asp:TemplateField HeaderText="BugId">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblBugid" Text='<%#Eval("BugId")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <%-- <asp:BoundField DataField="Bugid" HeaderText="BugID" />--%>

                        <asp:TemplateField HeaderText="Program">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblProgram" Text='<%#Eval("Program")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ReportedType">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblReportedType" Text='<%#Eval("ReportedType")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sevirity">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblSevirity" Text='<%#Eval("Sevirity")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="ProblemSummary" HeaderText="Problem Summary " />
                        <asp:TemplateField HeaderText="Reproducible">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblReproducible" Text='<%#Eval("Reproducible")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Version">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblVersion" Text='<%#Eval("Version")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Release">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblRelease" Text='<%#Eval("Release")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:BoundField DataField="Problem" HeaderText="Problem " />

                        <asp:BoundField DataField="SuggestdFix" HeaderText="SuggestdFix " />

                        <asp:TemplateField HeaderText="ReportedBy">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblReportedBy" Text='<%#Eval("ReportedBy")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ReportedDate">

                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblReportedDate" Text='<%#Eval("ReportedDate")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>





                        <asp:BoundField DataField="FunctionalArea" HeaderText="Functional Area " />
                        <asp:BoundField DataField="AssignedTo" HeaderText="AssignedTo " />
                        <%-- <asp:BoundField DataField="Comment" HeaderText="Comment " />--%>
                        <asp:TemplateField HeaderText="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlStatus" runat="server">
                                    <asp:ListItem>---Select---</asp:ListItem>
                                    <asp:ListItem>Open</asp:ListItem>
                                    <asp:ListItem>Close</asp:ListItem>

                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Priority">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlPriority" runat="server">
                                    <asp:ListItem>----Select----</asp:ListItem>
                                    <asp:ListItem>Fix Immediately</asp:ListItem>
                                    <asp:ListItem>Fix As Soon As possible</asp:ListItem>
                                    <asp:ListItem>Fix Before Next MileStone</asp:ListItem>
                                    <asp:ListItem>Fix Before Release</asp:ListItem>
                                    <asp:ListItem>Fix It Possible</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Priority") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Resolution">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlResolution" runat="server">
                                    <asp:ListItem>----Select----</asp:ListItem>
                                    <asp:ListItem>Pending</asp:ListItem>
                                    <asp:ListItem>Fix</asp:ListItem>
                                    <asp:ListItem>Deferred</asp:ListItem>
                                    <asp:ListItem>Cant be Fixed</asp:ListItem>
                                    <asp:ListItem>Need More Info</asp:ListItem>
                                    <asp:ListItem>Withdrawn By Reporter</asp:ListItem>
                                    <asp:ListItem>Design With Suggestion</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Resolution") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <%--                 <asp:TemplateField HeaderText="ReportedType">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlRpttype" AppendDataBoundItems="true" Width="150px" runat="server"
                        AutoPostBack="True">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="label1" BackColor="BurlyWood" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>
                        <%--   <asp:BoundField DataField="Sevirity" HeaderText="Sevirity" />--%>
                        <%--<asp:TemplateField HeaderText="Sevirity">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlsevirity" AppendDataBoundItems="true" Width="150px" runat="server"
                        AutoPostBack="True">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="label1" BackColor="BurlyWood" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>

                        <%--<asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlstatus" AppendDataBoundItems="true" Width="150px" runat="server"
                        AutoPostBack="True">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="label1" BackColor="BurlyWood" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>

                        <%--             <asp:TemplateField HeaderText="Resolution">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlresolution" AppendDataBoundItems="true" DataTextField="id" DataValueField = "Priority"  Width="150px" runat="server"
                        AutoPostBack="True">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="label1" BackColor="BurlyWood" runat="server" Text=""></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>--%>

                        <asp:BoundField DataField="ResolutionVersion" HeaderText="resolution version " />

                        <asp:BoundField DataField="ResolveBy" HeaderText="ResolveBy" />
                        <asp:BoundField DataField="ResolveDate" HeaderText="ResolveDate" />

                        <asp:BoundField DataField="TesedBy" HeaderText="TestedBy" />
                        <asp:BoundField DataField="TesedByDate" HeaderText="TesedByDate" />

                        <asp:TemplateField HeaderText="Deffered">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddldeffered" runat="server">
                                    <asp:ListItem>----Select----</asp:ListItem>
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>

                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label4" runat="server" Text='<%# Eval("Deffered") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" HeaderText="Edit" />
                        <%--<asp:CommandField ShowDeleteButton="true" />--%>
                    </Columns>
                    <PagerStyle VerticalAlign="Middle" />
                </asp:GridView>
            </div>

            <div>
            </div>

            <br />
            <br />
            <div>




                <div style="margin-left: 80%">
                    <table>
                        <tr>
                            <td>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ModifyBugReport.aspx" ForeColor="Black" Style="font-weight: 700">Back</asp:HyperLink></td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Cancel" BackColor="#00CC66" Height="37px" Style="font-weight: 700" Width="82px" OnClick="btncancel_Click" /></td>
                        </tr>
                    </table>
                </div>

                <div>
                </div>

                <br />
                <br />




            </div>
            <br />
    </form>
</body>
</html>
