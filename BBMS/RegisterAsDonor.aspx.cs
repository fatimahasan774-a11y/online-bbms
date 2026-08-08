using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BBMS
{
    public partial class RegisterAsDonor : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                int age = Convert.ToInt32(txtAge.Text.Trim());
                decimal weight = Convert.ToDecimal(txtWeight.Text.Trim());
                DateTime lastDonation = Convert.ToDateTime(txtLastDonationDate.Text);

                // SHURUudaha Caafimaadka & Diiwaangelinta
                if (age < 18 || age > 65)
                {
                    lblMsg.Text = "Error: Age must be between 18 and 65 to register as a donor.";
                    lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
                    return;
                }

                if (weight < 45)
                {
                    lblMsg.Text = "Error: Weight must be at least 45 KG to donate blood.";
                    lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
                    return;
                }

                // Kaydinta Database-ka (Waxa ay si toos ah uga muuqan doontaa Admin-ka DonorManagement.aspx)
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    string query = "INSERT INTO Donors (FullName, Age, Weight, BloodGroup, LastDonationDate) VALUES (@FullName, @Age, @Weight, @BloodGroup, @LastDonationDate)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FullName", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@Age", age);
                        cmd.Parameters.AddWithValue("@Weight", weight);
                        cmd.Parameters.AddWithValue("@BloodGroup", ddlBloodGroup.SelectedValue);
                        cmd.Parameters.AddWithValue("@LastDonationDate", lastDonation);

                        conn.Open();
                        cmd.ExecuteNonQuery();

                        lblMsg.Text = "Successfully registered as a donor!";
                        lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
                    }
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error: " + ex.Message;
                lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
            }
        }
    }
}