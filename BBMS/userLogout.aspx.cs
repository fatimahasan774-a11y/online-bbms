using System;
using System.Web;
using System.Web.Security;

namespace BBMS
{
    public partial class userLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            FormsAuthentication.SignOut();

            Response.Redirect("userLogin.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}