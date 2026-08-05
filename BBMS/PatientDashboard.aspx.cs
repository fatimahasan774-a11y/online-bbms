using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace BBMS
{
    public partial class PatientDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Hubi in qofku soo galay iyo in doorkiisu yahay User
            if (Session["LoggedIn"] == null || Session["Role"] == null || Session["Role"].ToString() != "User")
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // Halkan geli xogta gaarka u ah Patient/User-ka
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            // Ku hubiso inuu si toos ah ugu laabanayo bogga saxda ah
            Response.Redirect("login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}