using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace ERPAssignmentModule
{
    public partial class PasswordReset : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["assignment"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void updatePassBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    if (con.State == System.Data.ConnectionState.Closed) con.Open();

                    SqlCommand cmd = new SqlCommand("update LoginMaster set UserPass = @pass where userID = 1", con);
                    cmd.Parameters.AddWithValue("@pass", pass.Text.Trim());

                    cmd.ExecuteNonQuery();

                    label1.Text = "Password Updated Successfully";
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                    label1.Text = "Password Cannot be Updated";
                    label1.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }
}

//validate the email sent as query string during sending mail for password link.
// check if the user with erp id has same email sent in query string. then update.