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
    public partial class ADDNewBugReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_ADDBug", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Program", txtprogram.Text);
            cmd.Parameters.AddWithValue("@ReportType",ddlRpttype.Text);
            cmd.Parameters.AddWithValue("@Sevirity",ddlsevirity.Text);
            cmd.Parameters.AddWithValue("@ProgramSummary", txtprsumm.Text);
            cmd.Parameters.AddWithValue("@Reproductable",ddlre.Text );
            cmd.Parameters.AddWithValue("@Version", txtversion.Text);
            cmd.Parameters.AddWithValue("@Release", txtrelease.Text);
            cmd.Parameters.AddWithValue("@Problem", txtproblem.Text);
            cmd.Parameters.AddWithValue("@SuggestedFix", txtsuggested.Text);
            cmd.Parameters.AddWithValue("@ReportedBy",txtreportedby.Text);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Bug Details ADDED Successfully";
            con.Close();                                                                                            
        }

        protected void img_Click(object sender, ImageClickEventArgs e)
        {
            Cal.Visible = true;
        }

        protected void Cal_SelectionChanged(object sender, EventArgs e)
        {
            txtreportedby.Text = Cal.SelectedDate.ToShortDateString();
            Cal.Visible = false;
        }
    }
}