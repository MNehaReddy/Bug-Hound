using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace BUGHOUND
{
    public partial class ModifyBugReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        //var con=      ConfigurationManager.ConnectionStrings["Yourconnection"].ToString();

        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");   
        SqlDataReader dr; SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //con.Open();

            //if (!IsPostBack == true)
            //{
            //    SqlCommand cmd = new SqlCommand("Sp_BindBug", con);
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    SqlDataReader dr = cmd.ExecuteReader();
            //    while (dr.Read() == true)
            //    {
            //        ddlbugid.Items.Add(dr[0].ToString());
            //    }
            //}
            //con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {

            //    SqlCommand cmd = new SqlCommand("SP_ModBug", con);
            //    cmd.CommandType = CommandType.StoredProcedure;
            //    cmd.Parameters.AddWithValue("@BugID", ddlbugid.Text);
            //    cmd.Parameters.AddWithValue("@ProblemSummary", txtprbsum.Text);
            //    cmd.Parameters.AddWithValue("@Problem", txtprb.Text);
            //    cmd.Parameters.AddWithValue("@Suggested",txtsuggFix.Text);
            //    cmd.Parameters.AddWithValue("@FunctionalArea", txtfuncArea.Text );
            //    cmd.Parameters.AddWithValue("@AssignedTo", txtassignto.Text);
            //    cmd.Parameters.AddWithValue("@Comments",txtcomments.Text);
            //    cmd.Parameters.AddWithValue("@Status", ddlstatus.Text);
            //    cmd.Parameters.AddWithValue("@Priority", ddlprority.Text);
            //    cmd.Parameters.AddWithValue("@Resolution", ddlresolution.Text);
            //    cmd.Parameters.AddWithValue("@ResolutionVersion", txtresversion.Text);
            //    cmd.Parameters.AddWithValue("@ResolvedBy", txtresovedby.Text);
            //    cmd.Parameters.AddWithValue("@ResolvedTestedBy", txtprbsum.Text);
            //    cmd.Parameters.AddWithValue("@Deffered", ddldefered.Text);
            //    cmd.ExecuteNonQuery();
            //    lblmsg.Text = "Data Updated Successfully";
            //    con.Close();
        }

        protected void img_Click(object sender, ImageClickEventArgs e)
        {
            //Cal.Visible = true;
        }

        protected void Cal_SelectionChanged(object sender, EventArgs e)
        {
            //txtresovedby. Text = Cal.SelectedDate.ToShortDateString();
            //Cal.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtreporteddate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        //protected void ddlbugid_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("SP_BIndFroADD", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@BugId", ddlbugid.Text);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    //txtprbsum.Text = dt.Rows[0][0].ToString();
        //    //txtprb.Text = dt.Rows[0][1].ToString();
        //    //txtsuggFix.Text= dt.Rows[0][2].ToString();
        //    con.Close();
        //}

        //    cmd.Parameters.AddWithValue("@FunctionalArea", txtfunArea.Text);
        //    cmd.Parameters.AddWithValue("@AssignedTo", txtassignTo.Text);
        //    cmd.Parameters.AddWithValue("@Status", ddlstatus.Text);
        //    cmd.Parameters.AddWithValue("@Priority", ddlprority.Text);
        //    cmd.Parameters.AddWithValue("@Resolution", ddlresolution.Text);
        //    cmd.Parameters.AddWithValue("@ReportedBy", txtrptby.Text);
        //    cmd.Parameters.AddWithValue("@ReportedDate", txtreporteddate.Text);
        //    cmd.Parameters.AddWithValue("@ResolvedBy", txtresolvedby.Text);
        //    cmd.ExecuteNonQuery();
        //    //lblmsg.Text = " Bug Details Updated Sucessfully";
        //    con.Close();
        //}

        protected void btnview_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_ViewBugDetails", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            da.Fill(ds);

            //gdview.DataSource = ds.Tables[0];
            //gdview.DataBind();
            con.Close();
        }
        protected void gvbind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from ADDNewBug", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                //gdview.DataSource = ds;
                //gdview.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                //gdview.DataSource = ds;
                //gdview.DataBind();
                //int columncount = gdview.Rows[0].Cells.Count;
                //gdview.Rows[0].Cells.Clear();
                //gdview.Rows[0].Cells.Add(new TableCell());
                //gdview.Rows[0].Cells[0].ColumnSpan = columncount;
                //gdview.Rows[0].Cells[0].Text = "No Records Found";
                ////con.Close();
            }
            con.Close();
        }

        protected void gdview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //gdview.EditIndex = e.NewEditIndex;
            //gvbind();

        }

        protected void gdview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //    int BugId = Convert.ToInt32(gdview.DataKeys[e.RowIndex].Value.ToString());
            //    GridViewRow row = (GridViewRow)gdview.Rows[e.RowIndex];
            //    Label lblID = (Label)row.FindControl("lblID");
            //    //TextBox txtname=(TextBox)gr.cell[].control[];
            //    TextBox  txtprogram= (TextBox)row.Cells[0].Controls[0];
            //    DropDownList ddlRpttype = (DropDownList)row.Cells[1].Controls[0];
            //    DropDownList ddlsevirity = (DropDownList)row.Cells[2].Controls[0];
            //    TextBox txtfunArea = (TextBox)row.Cells[3].Controls[0];
            //    TextBox txtassignTo = (TextBox)row.Cells[4].Controls[0];
            //    DropDownList ddlstatus = (DropDownList)row.Cells[5].Controls[0];
            //    DropDownList ddlprority = (DropDownList)row.Cells[6].Controls[0];
            //    DropDownList ddlresolution = (DropDownList)row.Cells[7].Controls[0];
            //    TextBox txtrptby = (TextBox)row.Cells[8].Controls[0];
            //    TextBox txtreporteddate = (TextBox)row.Cells[9].Controls[0];
            //    TextBox txtresolvedby = (TextBox)row.Cells[10].Controls[0];

            //    gdview.EditIndex = -1;
            //    con.Open();
            //    //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);
            //    SqlCommand cmd = new SqlCommand("update ADDNewBug set Program='" + txtprogram.Text + "',ReportedType='" + ddlRpttype.Text + "',Sevirity='" + ddlsevirity.Text + "',FunctionalArea='" + txtfunArea.Text + "',AssignedTo='" + txtassignTo.Text + "',Status='" + ddlstatus.Text + "',Priority='" + ddlprority.Text + "',Resolution='" + ddlresolution.Text + "',ReportedBy='" + txtrptby.Text + "',ReportedDate='" + txtreporteddate.Text + "',ResolvedBy='" + txtresolvedby.Text + "'  where BugId='" + ddlbugid + "'", con);
            //    cmd.ExecuteNonQuery();
            //    con.Close();
            //    gvbind();
        }

        //protected void gdview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    gdview.EditIndex = -1;
        //    gvbind();
        //}

        protected void gdview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //GridViewRow row = (GridViewRow)gdview.Rows[e.RowIndex];
            //Label lbldeleteid = (Label)row.FindControl("lblID");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("delete FROM ADDNewBug where BugId='" + Convert.ToInt32(gdview.DataKeys[e.RowIndex].Value.ToString()) + "'", con);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //gvbind();

        }

        protected void gdview_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{

            //    SqlCommand cmd = new SqlCommand("select ReportedType from ADDNewBug", con);
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);
            //    da.SelectCommand = cmd;
            //    DataTable dt = new DataTable();
            //    da.Fill(dt);
            //    //if (dt.Rows.Count > 0)
            //    //{
            //        DropDownList ddlRpttype = (DropDownList)e.Row.FindControl("ddlRpttype");
            //        ddlRpttype.DataSource = dt;
            //        ddlRpttype.DataTextField = "BugId";
            //        ddlRpttype.DataValueField = "ReportedType";
            //        ddlRpttype.DataBind();
            //   // }

        }

        protected void btnsearchbyclm_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("select BugId from ADDNewBug where Program ='" + txtprogram.Text + "' or ReportedType='" + ddlRpttype.Text + "' or Sevirity='" + ddlsevirity.Text + "'or FunctionalArea='" + txtfunArea.Text + "' or AssignedTo='" + txtassignTo.Text + "' or Status='" + ddlstatus.Text + "' or Priority='" + ddlprority.Text + "' or Resolution='" + ddlresolution + "' or ReportedBy='" + txtrptby.Text + "' or ReportedDate='" + txtreporteddate.Text + "' or ResolvedBy='" +txtresolvedby.Text+ "' ", con);

            //SqlDataReader dr = cmd.ExecuteReader();
            //DataTable dt = new DataTable();
            //dt.Load(dr);
            //gdview.DataSource = dt;
            //gdview.DataBind();
            //con.Close();
            //Session["bugid"] = ddlbugid.Text;
            //Session["str"] = txtprogram.Text;
            //Response.Redirect("firm1.aspx");



        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminForm.aspx");
        }

        protected void txtprogram_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlRpttype_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gdview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Id")
            {
                //string bId = e.CommandArgument.ToString();
                LinkButton lnkId = (LinkButton)e.CommandSource;
                string BugId = lnkId.CommandArgument;
                Session["BugId"] = BugId;
                Response.Redirect("SearchBugId.aspx");
            }
        }

        protected void gdview_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void btnsearh_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select BugId from ADDNewBug where Program ='" + txtprogram.Text + "' or ReportedType='" + ddlRpttype.Text + "' or Sevirity='" + ddlsevirity.Text + "'or FunctionalArea='" + txtfunArea.Text + "' or AssignedTo='" + txtassignTo.Text + "' or Status='" + ddlstatus.Text + "' or Priority='" + ddlprority.Text + "' or Resolution='" + ddlresolution + "' or ReportedBy='" + txtrptby.Text + "' or ReportedDate='" + txtreporteddate.Text + "' or ResolvedBy='" + txtresolvedby.Text + "' ", con);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    DataTable dt = new DataTable();
        //    dt.Load(dr);
        //    gdview.DataSource = dt;
        //    gdview.DataBind();
        //    con.Close();
        //}

        protected void btnSearchBug_Click(object sender, EventArgs e)
        {

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
    }
}

