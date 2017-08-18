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
    public partial class ModifyBugReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        SqlCommand cmd;
        SqlDataReader dr;
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtreporteddate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void btnSearchBug_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select BugId from ADDNewBug where Program ='" + txtprogram.Text + "' and ReportedType='" + ddlRpttype.Text + "' and Sevirity='" + ddlsevirity.Text + "'or FunctionalArea='" + txtfunArea.Text + "' and AssignedTo='" + txtassignTo.Text + "' and Status='" + ddlstatus.Text + "' and Priority='" + ddlprority.Text + "' and Resolution='" + ddlresolution + "' and ReportedBy='" + txtrptby.Text + "' and ReportedDate='" + txtreporteddate.Text + "' and ResolvedBy='" + txtresolvedby.Text + "'", con);

            ////SqlDataAdapter da = new SqlDataAdapter(cmd);
            //SqlDataReader dr = cmd.ExecuteReader();

            //DataTable dt = new DataTable();
            //dt.Load(dr);


            ////DataSet ds = new DataSet();
            ////da.Fill(ds);
            //if (dt.Rows.Count == 0)
            //{
            //    dt.Rows.Add(dt.NewRow());
            //    gdview.DataSource = dt;
            //    gdview.DataBind();
            //    int columncount = gdview.Rows[0].Cells.Count;
            //    gdview.Rows[0].Cells.Clear();
            //    gdview.Rows[0].Cells.Add(new TableCell());
            //    gdview.Rows[0].Cells[0].ColumnSpan = columncount;
            //    gdview.Rows[0].Cells[0].Text = "No Records Found";
            //}
            //else
            //{
            //    gdview.DataSource = dt;
            //    gdview.DataBind();
            //}

            con.Open();

            string qry = "select BugId from ADDNewBug where";
            string subQry = "";
            if (txtprogram.Text != "")
            {
                subQry += " Program ='" + txtprogram.Text + "' and";
            }
            if (ddlRpttype.SelectedIndex > 0)
            {
                subQry += " ReportedType ='" + ddlRpttype.Text + "' and";
            }
            if (ddlsevirity.SelectedIndex > 0)
            {
                subQry += " Sevirity='" + ddlsevirity.Text + "' and";
            }
            if (txtfunArea.Text != "")
            {
                subQry += " FunctionalArea='" + txtfunArea.Text + "' and";
            }
            if (txtassignTo.Text != "")
            {
                subQry += " AssignedTo='" + txtassignTo.Text + "' and";
            }
            if (ddlstatus.SelectedIndex > 0)
            {
                subQry += " Status='" + ddlstatus.Text + "' and";
            }
            if (ddlprority.SelectedIndex > 0)
            {
                subQry += " Priority='" + ddlprority.Text + "' and";
            }
            if (ddlresolution.SelectedIndex > 0)
            {
                subQry += " Resolution='" + ddlresolution.Text + "' and";
            }

            if (txtrptby.Text != "")
            {
                subQry += " ReportedBy='" + txtrptby.Text + "' and";
            }

            if (txtreporteddate.Text != "")
            {
                subQry += " ReportedDate='" + txtreporteddate.Text + "' and";
            }

            if (txtresolvedby.Text != "")
            {
                subQry += " ResolvedBy='" + txtresolvedby.Text + "' and";
            }


            subQry = subQry.TrimEnd(new char[] { 'a', 'n', 'd' });
            cmd = new SqlCommand(qry + subQry, con);
            dr = cmd.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count == 0)
            {
                dt.Rows.Add(dt.NewRow());
                gdview.DataSource = dt;
                gdview.DataBind();
                int columncount = gdview.Rows[0].Cells.Count;
                gdview.Rows[0].Cells.Clear();
                gdview.Rows[0].Cells.Add(new TableCell());
                gdview.Rows[0].Cells[0].ColumnSpan = columncount;
                gdview.Rows[0].Cells[0].Text = "No Records Found";
            }
            else
            {
                gdview.DataSource = dt;
                gdview.DataBind();
            }
            con.Close();

        }

        protected void gdview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Id")
            {
                //string bId = e.CommandArgument.ToString();
                LinkButton lnkId = (LinkButton)e.CommandSource;
                string BugId = lnkId.CommandArgument;
                Session["BugId"] = BugId;
                Response.Redirect("EmpSearchBugId.aspx");
            }
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employeemain.aspx");
        }

        protected void gdview_SelectedIndexChanged(object sender, EventArgs e)
        {
        
        }
    }
}