using System;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HighlightRole("Admin");
            }
        }

        protected void RoleTab_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            hidSelectedRole.Value = btn.CommandArgument;
            HighlightRole(btn.CommandArgument);
        }
        private void HighlightRole(string role)
        {
            hidSelectedRole.Value = role;

            btnRoleAdmin.Style["background"] = role == "Admin" ? "#172a4f" : "#f3f5fa";
            btnRoleAdmin.Style["color"] = role == "Admin" ? "#fff" : "#172a4f";

            btnRoleUser.Style["background"] = role == "User" ? "#0e4f4a" : "#f3f5fa";
            btnRoleUser.Style["color"] = role == "User" ? "#fff" : "#0e4f4a";

            btnRoleDonor.Style["background"] = role == "Donor" ? "#3a1f5d" : "#f3f5fa";
            btnRoleDonor.Style["color"] = role == "Donor" ? "#fff" : "#3a1f5d";
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblError.Text = "Please enter your email/username and password.";
                return;
            }

            // TODO: connect to database later
            Session["Username"] = txtUsername.Text;
            Session["Role"] = hidSelectedRole.Value;
            Session["LoggedIn"] = true;

            switch (hidSelectedRole.Value)
            {
                case "Admin":
                    Response.Redirect("AdminDashboard.aspx");
                    break;
                case "User":
                    Response.Redirect("PatientDashboard.aspx");
                    break;
                case "Donor":
                    Response.Redirect("DonorDashboard.aspx");
                    break;
            }
        }
    }
}