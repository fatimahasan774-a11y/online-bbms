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
                string sessionUser = Session["Username"] != null ? Session["Username"].ToString() :
                                     (Session["UserEmail"] != null ? Session["UserEmail"].ToString() : "");

                if (!string.IsNullOrEmpty(sessionUser))
                {
                    LoadUserData(sessionUser);
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        private void LoadUserData(string userEmail)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Waxaan isticmaaleynaa Email halkii Username la oran lahaa
                string query = "SELECT FullName, Email, Phone, BloodGroup FROM Users WHERE Email = @User OR FullName = @User";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@User", userEmail);
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtName.Text = reader["FullName"] != DBNull.Value ? reader["FullName"].ToString() : "";
                            txtEmail.Text = reader["Email"] != DBNull.Value ? reader["Email"].ToString() : "";
                            txtPhone.Text = reader["Phone"] != DBNull.Value ? reader["Phone"].ToString() : "";

                            string bloodGroup = reader["BloodGroup"] != DBNull.Value ? reader["BloodGroup"].ToString() : "";
                            if (!string.IsNullOrEmpty(bloodGroup) && ddlBloodGroup.Items.FindByValue(bloodGroup) != null)
                            {
                                ddlBloodGroup.SelectedValue = bloodGroup;
                            }
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string oldEmail = Session["Username"] != null ? Session["Username"].ToString() : txtEmail.Text.Trim();

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "UPDATE Users SET FullName = @FullName, Email = @NewEmail, Phone = @Phone, BloodGroup = @BloodGroup WHERE Email = @OldEmail";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@NewEmail", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue);
                    cmd.Parameters.AddWithValue("@OldEmail", oldEmail);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Session["Username"] = txtEmail.Text.Trim();
                        lblMsg.Text = "Profile updated successfully!";
                        lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
                    }
                    else
                    {
                        lblMsg.Text = "Error: Could not update profile.";
                        lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
                    }
                }
            }
        }
    }
}