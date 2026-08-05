using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Default ahaan haddii aysan dooran, ka dhig User
                if (string.IsNullOrEmpty(hidSelectedRole.Value))
                {
                    hidSelectedRole.Value = "User";
                }
            }
        }

        // Marka la gujiyo tab-ka doorashada (Admin, Donor, User)
        protected void RoleTab_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            hidSelectedRole.Value = btn.CommandArgument;
        }

        // Marka la gujiyo badhanka Login-ka
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string selectedRole = hidSelectedRole.Value;

            // Waxaan kaydinaynaa Session-ka si uusan barnaamijku kuugu dhibin
            Session["Username"] = string.IsNullOrEmpty(txtUsername.Text) ? "Tijaabo" : txtUsername.Text;
            Session["Role"] = selectedRole;
            Session["LoggedIn"] = true;

            // Iyadoo la eegayo dookhagaaga, wuxuu ku geeynayaa bogga saxda ah
            switch (selectedRole)
            {
                case "Admin":
                    Response.Redirect("AdminDashboard.aspx");
                    break;
                case "Donor":
                    Response.Redirect("DonorDashboard.aspx");
                    break;
                case "User":
                default:
                    Response.Redirect("PatientDashboard.aspx");
                    break;
            }
        }
    }
}