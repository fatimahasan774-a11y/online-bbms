using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BBMS
{
    public partial class UserUpdateProfile : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    LoadUserData(Session["Username"].ToString());
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void LoadUserData(string emailOrUser)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT FullName, Email, Phone, BloodGroup FROM Users WHERE Email = @Email OR FullName = @Email";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", emailOrUser);
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtName.Text = reader["FullName"].ToString();
                            txtEmail.Text = reader["Email"].ToString();
                            txtPhone.Text = reader["Phone"].ToString();

                            string bloodGroup = reader["BloodGroup"].ToString();
                            if (ddlBloodGroup.Items.FindByValue(bloodGroup) != null)
                            {
                                ddlBloodGroup.SelectedValue = bloodGroup;
                            }

                            // Ku kaydi Email-ka saxda ah Session-ka si hadhow loo raaco
                            Session["UserEmail"] = reader["Email"].ToString();
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Hubi in Session-ka Email-ku jiro
            string originalEmail = Session["UserEmail"] != null ? Session["UserEmail"].ToString() : txtEmail.Text.Trim();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Waxaan ku xirnay raadinta Email-kii hore ee saxda ahaa
                string query = "UPDATE Users SET FullName = @FullName, Email = @NewEmail, Phone = @Phone, BloodGroup = @BloodGroup WHERE Email = @OriginalEmail";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@NewEmail", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue);
                    cmd.Parameters.AddWithValue("@OriginalEmail", originalEmail);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Cusboonaysii Session-ka haddii email-ka la badalay
                        Session["UserEmail"] = txtEmail.Text.Trim();
                        Session["Username"] = txtEmail.Text.Trim();

                        lblMsg.Text = "Profile updated successfully!";
                        lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
                    }
                    else
                    {
                        lblMsg.Text = "Error: User not found to update.";
                        lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
                    }
                }
            }
        }
    }
}