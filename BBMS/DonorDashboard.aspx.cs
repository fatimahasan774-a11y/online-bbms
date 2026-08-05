using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class DonorDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Hubi in qofku soo galay iyo in doorkiisu yahay Donor
            if (Session["LoggedIn"] == null || Session["Role"] == null || Session["Role"].ToString() != "Donor")
            {
                // Haddii uusan ahayn Donor ama uusan soo gelin, dib ugu celi bogga Login-ka
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                // Halkan ku qor koodhka ku soo bandhigaya xogta Donor-ka (Tusaale: Taariikhda uu dhiig bixiyay, codsiyada, iwm.)
            }
        }
    }
}