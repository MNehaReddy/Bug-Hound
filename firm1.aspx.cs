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
    public partial class firm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sql"].ConnectionString);
        //SqlConnection con = new SqlConnection("Data Source=SHIVAREDDY-PC;Initial Catalog=BUG_HOUND;User ID=sa;Password=sa");
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnBack.Visible = false;
            if (Session["bugid"] != "")
            {
                
                    con.Open();
                string field1 = Session["bugid"].ToString();
                txtbugid.Text = field1;
                string start = (string)(Session["str"]);
                SqlCommand cmd = new SqlCommand("select * from ADDNewBug where BugId='" + Session["bugid"] + "'  and Program like'" + start + "%'", con);
                SqlDataReader read = cmd.ExecuteReader();

                //if (read.Read() == false)
                //{

                //    lblmsg.Text = "Not records";
                //}
                //else
                //{


                    //SqlDataReader read = cmd.ExecuteReader();
                    if (read.Read() == true)
                    {
                        txtprogram.Text = read["Program"].ToString();
                        txtreporttype.Text = read["ReportedType"].ToString();
                        txtsevitity.Text = read["Sevirity"].ToString();
                        txtfunArea.Text = read["FunctionalArea"].ToString();
                        txtassignTo.Text = read["AssignedTo"].ToString();
                        ddlstatus.Text = read["Status"].ToString();
                        ddlprority.Text = read["Priority"].ToString();
                        ddlresolution.Text = read["Resolution"].ToString();
                        txtrptby.Text = read["ReportedBy"].ToString();
                        txtreporteddate.Text = read["ReportedDate"].ToString();
                        txtresolvedby.Text = read["ResolvedBy"].ToString();

                    //}
                }
                    else
                    {
                        Response.Write("<script>alert('Enter valied Program Name')</script>");
                      //  lblmsg.Text = "Enter valied Program Name";
                        txtbugid.Text = "";
                        //btnBack.Visible = true;
                    }

                con.Close();
            }



        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_ModBug", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BugID", txtbugid.Text);
            cmd.Parameters.AddWithValue("@Program", txtprogram.Text);
            cmd.Parameters.AddWithValue("@ReportedType", txtrptby.Text);
            cmd.Parameters.AddWithValue("@Sevirity", txtsevitity .Text);
            cmd.Parameters.AddWithValue("@FunctionalArea", txtfunArea.Text);
            cmd.Parameters.AddWithValue("@AssignedTo", txtassignTo.Text);
            cmd.Parameters.AddWithValue("@Status", ddlstatus.Text);
            cmd.Parameters.AddWithValue("@Priority",ddlprority  .Text);
            cmd.Parameters.AddWithValue("@Resolution", ddlresolution .Text);
            cmd.Parameters.AddWithValue("@ReportedBy", txtrptby.Text);
            cmd.Parameters.AddWithValue("@ReportedDate", txtreporteddate.Text);
            cmd.Parameters.AddWithValue("@ResolvedBy", txtresolvedby.Text);
            cmd.ExecuteNonQuery();
            lblmsg.Text = " Bug Details Updated Sucessfully";
            con.Close();
            //Response.Redirect("ModifyBugReport.aspx");
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

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModifyBugReport.aspx");
        }
    }
}