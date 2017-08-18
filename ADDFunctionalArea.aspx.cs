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
    public partial class ADDFunctionalArea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        protected void btnadd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_FArea", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@FName", txtname.Text);
            cmd.Parameters.AddWithValue("@ProgramId",txtpid.Text);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "New Functional Area Added Successfully";
            con.Close();
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FunctionalArea.aspx");
        }
    }
}