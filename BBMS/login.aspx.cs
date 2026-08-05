using System;
using System.Data.SqlClient;
using System.Configuration;
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
                // Bogga markuu marka hore soo dhaco
                // Default ahaan waxaan u dhigaynaa Admin ama User haddii loo baahdo
                if (string.IsNullOrEmpty(hidSelectedRole.Value))
                {
                    hidSelectedRole.Value = "Admin";
                }
            }
        }

        // Shaqada qabanaysa markaad gujiso badhannada Role-ka (Admin, User, Donor)
        protected void RoleTab_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string selectedRole = btn.CommandArgument;

            // Ku kaydi HiddenField-ka
            hidSelectedRole.Value = selectedRole;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblError.Text = "Fadlan geli email-ka iyo password-ka.";
                return;
            }

            string email = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string selectedRole = hidSelectedRole.Value;

            string connString = ConfigurationManager.ConnectionStrings["BloodBankDB"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT * FROM Users WHERE Email = @Email AND Role = @Role";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Role", selectedRole);

                    try
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string dbPassword = reader["Password"].ToString();

                                if (password == dbPassword)
                                {
                                    Session["Username"] = email;
                                    Session["Role"] = selectedRole;
                                    Session["LoggedIn"] = true;

                                    switch (selectedRole)
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
                                else
                                {
                                    lblError.Text =  "Invalid email or password!";
                                }
                            }
                            else
                            {
                                lblError.Text = "Email ama Password-ka waa qalad!";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Cillad ayaa dhacday: " + ex.Message;
                    }
                }
            }
        }
    }
}