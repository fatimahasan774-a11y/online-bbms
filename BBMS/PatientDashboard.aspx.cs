using System;
using System.Web;
using System.Web.Security;

namespace BBMS
{
    public partial class PatientDashboard : System.Web.UI.Page
    {
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            // Ku hubiso inuu si toos ah ugu laabanayo userLogin.aspx
            Response.Redirect("userLogin.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}