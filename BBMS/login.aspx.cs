using System;
using System.Web.Security;

namespace BBMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Validate if fields are empty
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblError.Text = "Please enter both username and password.";
                return;
            }

            // Check if username is 'admin' and password is '12345'
            if (username == "admin" && password == "12345")
            {
                // Create authentication cookie and redirect to the dashboard
                FormsAuthentication.RedirectFromLoginPage(username, false);
            }
            else
            {
                lblError.Text = "Invalid Username or Password!";
            }
        }
    }
}