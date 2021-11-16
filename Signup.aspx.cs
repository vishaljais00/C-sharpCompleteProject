using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
    {
        public string StrCon = "Data Source=VISHAL;  Initial Catalog = Users; User Id=sa; Password=9818";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signup_click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(StrCon);
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter("select 1 from dbo._User Where Name = '" + Name.Text + " ' and [password] = '" + password1.Text + "'", conn);
                string sql = null;
                sql = "insert into _User (Name,Email,password,Phone) values('"+ Name.Text + "', '" + Email.Text + "', '" + password1.Text + "','" + Phone.Text + "')";

                conn.Open();
                adapter.Fill(ds);
                conn.Close();

                if(Name.Text == "" || password1.Text== "" || password2.Text == "" || Email.Text == "" || Phone.Text == "" )

                {
                    lblError.Text = " please fill form correctly";
                }
                else if (password1.Text != password2.Text)
                {
                    lblError1.Text = "password dos not match"; 
                }

                else if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    //Session["UserId"] = txtUserId.Text; // Create or update session
                    //Session.Add("UserId", txtUserId.Text);// Create new session
                    //Response.Redirect("dashboard.aspx", true);

                    /////////////////////////////////////////////////////////
                    ///1. Query String
                    ///2. Session
                    ///3. Cookies
                    ///-----same page - 4. ViewState

                    lblError.Text = "User alreday available";

                }
                else
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    int i = cmd.ExecuteNonQuery();
                    conn.Close();

                    if (i == 1)
                    {
                        lblError.ForeColor = System.Drawing.Color.Green;
                        lblError.Text = "User Succefully Register";
                        Session["UserId"] = Name.Text; // Create or update session
                        Response.Redirect("index.aspx", false);
                    }
                    else
                    {
                        lblError.ForeColor = System.Drawing.Color.Red;
                        lblError.Text = "Error in user creation";
                    }

                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.ToString();
            }
        }

        protected void btnLogin_Click(object Sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", true);
        }
    }
}