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
    public partial class AddNewBugReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToShortDateString();   
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        protected void btnadd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_ADDNewBug", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Program", txtprogram.Text);
            cmd.Parameters.AddWithValue("@ReportedType", ddlRpttype.Text);
            cmd.Parameters.AddWithValue("@Sevirity", ddlsevirity.Text);
            cmd.Parameters.AddWithValue("@ProblemSummary", txtProblemSummary.Text);
            cmd.Parameters.AddWithValue("@Reproducible", ddlRepoducible.Text);
            cmd.Parameters.AddWithValue("@Version", txtVersion.Text);
            cmd.Parameters.AddWithValue("@Release", txtRelese.Text);
            cmd.Parameters.AddWithValue("@Problem", txtProblem.Text);
            cmd.Parameters.AddWithValue("@SuggetedFix", txtSuggestFix.Text);
            cmd.Parameters.AddWithValue("@ReportedBy", txtrptby.Text);
            cmd.Parameters.AddWithValue("@ReportedDate", Label1.Text);
            cmd.ExecuteNonQuery();

            //lblmsg.Text = "New Bug Details Added Sucessfully";
            con.Close();
            Response.Write("<script>alert('New Bug Details Added Sucessfully')</script>");

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employeemain.aspx");
        }

        //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        //{
        //    Calendar1.Visible = true;
        //}

        //protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        //{
        //    txtreporteddate.Text = Calendar1.SelectedDate.ToShortDateString();
        //    Calendar1.Visible = false;
        //}
    }
}