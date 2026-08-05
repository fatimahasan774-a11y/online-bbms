using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BBMS
{
    public partial class RequestBlood : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null && Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userEmail = "";
            if (Session["Username"] != null)
                userEmail = Session["Username"].ToString();
            else if (Session["UserEmail"] != null)
                userEmail = Session["UserEmail"].ToString();

            string fullName = "";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string getUserQuery = "SELECT FullName FROM Users WHERE Email = @Email OR FullName = @Email";
                using (SqlCommand cmdUser = new SqlCommand(getUserQuery, conn))
                {
                    cmdUser.Parameters.AddWithValue("@Email", userEmail);
                    object result = cmdUser.ExecuteScalar();
                    if (result != null)
                    {
                        fullName = result.ToString();
                    }
                    else
                    {
                        fullName = "Unknown User";
                    }
                }

                string insertQuery = @"INSERT INTO BloodRequests (UserEmail, FullName, BloodGroup, Units, HospitalLocation, Urgency, RequestType, AdditionalNotes, Status) 
                                       VALUES (@UserEmail, @FullName, @BloodGroup, @Units, @HospitalLocation, @Urgency, @RequestType, @AdditionalNotes, 'Pending')";

                using (SqlCommand cmdInsert = new SqlCommand(insertQuery, conn))
                {
                    cmdInsert.Parameters.AddWithValue("@UserEmail", userEmail);
                    cmdInsert.Parameters.AddWithValue("@FullName", fullName);
                    cmdInsert.Parameters.AddWithValue("@BloodGroup", ddlGroup.SelectedValue);
                    cmdInsert.Parameters.AddWithValue("@Units", Convert.ToInt32(txtUnits.Text.Trim()));
                    cmdInsert.Parameters.AddWithValue("@HospitalLocation", txtHospital.Text.Trim());
                    cmdInsert.Parameters.AddWithValue("@Urgency", ddlUrgency.SelectedValue);
                    cmdInsert.Parameters.AddWithValue("@RequestType", ddlRequestType.SelectedValue);
                    cmdInsert.Parameters.AddWithValue("@AdditionalNotes", txtNotes.Text.Trim());

                    cmdInsert.ExecuteNonQuery();
                }
            }

            Response.Redirect("RequestStatus.aspx");
        }
    }
}