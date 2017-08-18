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
    public partial class ADDEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        protected void btnadd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_ADDEmployee", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserId", txtid.Text);
            cmd.Parameters.AddWithValue("@Name", txtname.Text);
            cmd.Parameters.AddWithValue("@Password", txtpwd.Text);
            cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Employee Details Added Successfully') </script>");
                // lblmsg.Text = "Employee Details Added Successfully";

               // Response.Redirect("Employee.aspx");
            }
            else
            {
                Response.Write("<script>alert('Employee Details Not Added....') </script>");
            } con.Close();

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeManagement.aspx");
        }
    }
}