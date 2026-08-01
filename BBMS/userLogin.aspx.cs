using System;
using System.Web;
using System.Web.Security;

namespace BBMS
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblError.Text = string.Empty;
            }
        }

        protected void btnUserLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Xogta user-ka caadiga ah
            if (username == "user" && password == "1234")
            {
                FormsAuthentication.SetAuthCookie(username, false);
                Session["RegularUser"] = username;

                // U dir PatientDashboard
                Response.Redirect("PatientDashboard.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                lblError.Text = "Invalid Username or Password!";
            }
        }
    }
}