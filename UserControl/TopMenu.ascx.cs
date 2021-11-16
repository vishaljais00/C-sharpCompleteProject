using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.UserControl
{
    public partial class TopMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Convert.ToString(Session["UserId"])))
            {
                Logout.Visible = false;
                Login.Visible = true;
                Signup.Visible = true;
            }
            else
            {
                Logout.Visible = true;
                Login.Visible = false;
                Signup.Visible = false;
            }

        }

        public void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx", false); 
        }
        public void Login_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx", false);
        }
        public void Signup_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Signup.aspx", false);
        }

    }
}