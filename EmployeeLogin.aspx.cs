using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BUGHOUND
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Name,UserId,Password from ADDEmployee where UserId='" + txtlogin.Text + "' and Password='" + txtpwd.Text + "' ", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()==true)
            {
                Session["Uname"]=dr[0].ToString();
                Response.Redirect("Employeemain.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed....') </script>");
            }
            con.Close();
        }
    }
}