using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUGHOUND
{
    public partial class EmpSearchBugId : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                if (Session["BugId"] != null)
                {


                    con.Open();
                    string bid = Session["BugId"].ToString();
                    SqlCommand cmd = new SqlCommand("select * from ADDNewBug where BugId=" + bid + "", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();
                    con.Close();
                }
            }
        }
        protected void gvbind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ADDNewBug where BugId=" + Session["BugId"] + "", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employeemain.aspx");
        }

        //protected void BtnView_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlDataAdapter da = new SqlDataAdapter("select * from ADDNewBug", con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    //GridView2.DataSource = ds.Tables[0];
        //    //GridView2.DataBind();

        //    if (ds.Tables[0].Rows.Count == 0)
        //    {
        //        ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
        //        GridView2.DataSource = ds.Tables[0];
        //        GridView2.DataBind();
        //        int columncount = GridView2.Rows[0].Cells.Count;
        //        GridView2.Rows[0].Cells.Clear();
        //        GridView2.Rows[0].Cells.Add(new TableCell());
        //        GridView2.Rows[0].Cells[0].ColumnSpan = columncount;
        //        GridView2.Rows[0].Cells[0].Text = "No Records Found";
        //    }
        //    else
        //    {
        //        GridView2.DataSource = ds.Tables[0];
        //        GridView2.DataBind();
        //    }




        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int BugId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

            //GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            ////Label lblID = (Label)row.FindControl("lblID");
            ////TextBox txtname=(TextBox)gr.cell[].control[];
            //TextBox txtprogram = (TextBox)row.Cells[1].Controls[0];
            //TextBox ddlRpttype = (TextBox)row.Cells[2].Controls[0];
            //TextBox ddlsevirity = (TextBox)row.Cells[3].Controls[0];
            //TextBox txtfunArea = (TextBox)row.Cells[4].Controls[0];
            //TextBox txtassignTo = (TextBox)row.Cells[5].Controls[0];
            //TextBox ddlstatus = (TextBox)row.Cells[6].Controls[0];
            //TextBox ddlprority = (TextBox)row.Cells[7].Controls[0];
            //TextBox ddlresolution = (TextBox)row.Cells[8].Controls[0];
            //TextBox txtrptby = (TextBox)row.Cells[9].Controls[0];
            //TextBox txtreporteddate = (TextBox)row.Cells[10].Controls[0];
            //TextBox txtresolvedby = (TextBox)row.Cells[11].Controls[0];
            //GridView1.EditIndex = -1;
            //con.Open();
            //SqlCommand cmd = new SqlCommand("update ADDNewBug set Program='" + txtprogram.Text + "',ReportedType='" + ddlRpttype.Text + "',Sevirity='" + ddlsevirity.Text + "',FunctionalArea='" + txtfunArea.Text + "',AssignedTo='" + txtassignTo.Text + "',Status='" + ddlstatus.Text + "',Priority='" + ddlprority.Text + "',Resolution='" + ddlresolution.Text + "',ReportedBy='" + txtrptby.Text + "',ReportedDate='" + txtreporteddate.Text + "',ResolvedBy='" + txtresolvedby.Text + "' where BugId='" + BugId + "'", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //gvbind();

            int BugId = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            //Label lblID = (Label)row.FindControl("lblID");
            Label lblProgram = (Label)row.FindControl("lblProgram");

            Label lblReportedType = (Label)row.FindControl("lblReportedType");
            Label lblSevirity = (Label)row.FindControl("lblSevirity");
            TextBox ProblemSummary = (TextBox)row.Cells[4].Controls[0];

            Label lblReproducible = (Label)row.FindControl("lblReproducible");
            Label lblVersion = (Label)row.FindControl("lblVersion");
            Label lblRelease = (Label)row.FindControl("lblRelease");
            // Label lblRelease = (Label)row.FindControl("lblRelease");
            TextBox txtProblem = (TextBox)row.Cells[8].Controls[0];
            TextBox SuggestdFix = (TextBox)row.Cells[9].Controls[0];
            Label lblReportedBy = (Label)row.FindControl("lblReportedBy");
            Label lblReportedDate = (Label)row.FindControl("lblReportedDate");
            TextBox txtfunArea = (TextBox)row.Cells[12].Controls[0];
            TextBox txtassignTo = (TextBox)row.Cells[13].Controls[0];
            string Status = ((DropDownList)row.FindControl("ddlStatus")).SelectedValue;
            string ddlPriority = ((DropDownList)row.FindControl("ddlPriority")).SelectedValue;
            string ddlResolution = ((DropDownList)row.FindControl("ddlResolution")).SelectedValue;
            TextBox txtResolutionversion = (TextBox)row.Cells[17].Controls[0];
            TextBox ResolveBy = (TextBox)row.Cells[18].Controls[0];
            TextBox ResolveDate = (TextBox)row.Cells[19].Controls[0];
            TextBox TesedBy = (TextBox)row.Cells[20].Controls[0];
            TextBox TesedByDate = (TextBox)row.Cells[21].Controls[0];
            string ddlddldeffered = ((DropDownList)row.FindControl("ddldeffered")).SelectedValue;





            //TextBox txtprogram = (TextBox)row.Cells[1].Controls[0];
            //TextBox ddlRpttype = (TextBox)row.Cells[2].Controls[0];
            //TextBox ddlsevirity = (TextBox)row.Cells[3].Controls[0];
            //TextBox txtfunArea = (TextBox)row.Cells[4].Controls[0];
            //TextBox txtassignTo = (TextBox)row.Cells[5].Controls[0];
            //TextBox ddlstatus = (TextBox)row.Cells[6].Controls[0];
            //TextBox ddlprority = (TextBox)row.Cells[7].Controls[0];
            //TextBox ddlresolution = (TextBox)row.Cells[8].Controls[0];
            //TextBox txtrptby = (TextBox)row.Cells[9].Controls[0];
            //TextBox txtreporteddate = (TextBox)row.Cells[10].Controls[0];
            //TextBox txtresolvedby = (TextBox)row.Cells[11].Controls[0];
            GridView1.EditIndex = -1;
            con.Open();
            SqlCommand cmd = new SqlCommand("update ADDNewBug set Program='" + lblProgram.Text + "',ReportedType='" + lblReportedBy.Text + "',Sevirity='" + lblSevirity.Text + "',  ProblemSummary='" + ProblemSummary.Text + "',Reproducible='" + lblReproducible.Text + "',Version='" + lblVersion.Text + "',Release='" + lblRelease.Text + "',Problem='" + txtProblem.Text + "',SuggestdFix='" + SuggestdFix.Text + "',ReportedBy='" + lblReportedBy.Text + "',ReportedDate='" + lblReportedDate.Text + "', FunctionalArea='" + txtfunArea.Text + "',AssignedTo='" + txtassignTo.Text + "',Status='" + Status + "',Priority='" + ddlPriority + "',Resolution='" + ddlResolution + "',ResolutionVersion='" + txtResolutionversion.Text + "',ResolveBy='" + ResolveBy.Text + "',ResolveDate='" + ResolveDate.Text + "',TesedBy='" + TesedBy.Text + "',TesedByDate='" + TesedByDate.Text + "',Deffered='" + ddlddldeffered + "'  where BugId='" + BugId + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            gvbind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gvbind();
        }
    }
}