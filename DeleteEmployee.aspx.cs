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
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Bind", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read() == true)
            {
                ddlid.Items.Add(dr[0].ToString());
            }
            con.Close();
            //con.Open();
            //SqlCommand cmd = new SqlCommand("SP_Bind", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //ddlid.DataSource = ds.Tables[0];
            //ddlid.DataValueField = "UserId";
            //ddlid.DataBind();
            //con.Close();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_DeleteEmployee", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", ddlid.SelectedItem.ToString());
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Employee Details Deleted Successfully";
            con.Close();
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminForm.aspx");
        }

        protected void btnback_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminForm.aspx");
        }
    }
}