using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using WebApplication1.Class;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {

        

        public string StrCon = "Data Source=VISHAL;  Initial Catalog = Users; User Id=sa; Password=9818";
        EncryptionAndDecryption obj = new EncryptionAndDecryption();

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            try
            {
                    SqlConnection conn = new SqlConnection(StrCon);
                DataSet ds = new DataSet();
                SqlDataAdapter adapter = new SqlDataAdapter("select 1 from dbo._User Where Name = '" + txtUserId.Text + " ' and [password] = '" + obj.EnryptString(txtPassword.Text) + "'", conn);
                conn.Open();
                adapter.Fill(ds);
                conn.Close();

                if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count >0)
                {
                    Session["UserId"] = txtUserId.Text; // Create or update session
                    Session.Add("UserId", txtUserId.Text);// Create new session
                    Response.Redirect("dashboard.aspx", true);


                    /////////////////////////////////////////////////////////
                    ///1. Query String
                    ///2. Session
                    ///3. Cookies
                    ///-----same page - 4. ViewState

          
                }
                else
                {
                    lblError.Text = "Invalid UserId/ Password";
                }
            }
            catch(Exception ex)
            {
                string aa = ex.ToString();
            }
        }

        protected void btnRegister_Click( object Sender , EventArgs e)
        {
            Response.Redirect("Signup.aspx", true);
        }
    }
}