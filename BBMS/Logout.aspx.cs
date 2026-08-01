using System;
using System.Web.Security;

namespace BBMS
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Tirtirista Authentication Cookie-ga
            FormsAuthentication.SignOut();

            // Nadiifinta Session-ka
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();

            // Dib ugu celinta bogga login-ka
            Response.Redirect("login.aspx");
        }
    }
}