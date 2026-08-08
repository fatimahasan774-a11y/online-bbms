using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace BBMS
{
    public partial class PatientDashboard : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null && Session["Username"] == null && Session["UserEmail"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                string currentUser = Session["UserEmail"] != null ? Session["UserEmail"].ToString() :
                                     (Session["Username"] != null ? Session["Username"].ToString() : "");

                if (!string.IsNullOrEmpty(currentUser))
                {
                    LoadDashboardData(currentUser);
                }
            }
        }

        private void LoadDashboardData(string emailOrUser)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // 1. Soo akhriso Blood Group-ka user-ka ee miiska Users
                string userQuery = "SELECT BloodGroup FROM Users WHERE Email = @Email OR FullName = @Email";
                using (SqlCommand cmdUser = new SqlCommand(userQuery, conn))
                {
                    cmdUser.Parameters.AddWithValue("@Email", emailOrUser);
                    using (SqlDataReader reader = cmdUser.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string bloodGroup = reader["BloodGroup"]?.ToString();
                            lblBloodGroup.Text = !string.IsNullOrEmpty(bloodGroup) ? bloodGroup : "N/A";
                        }
                    }
                }

                // 2. Tirada codsiyada dhiigga adigoo isticmaalaya miiskaaga BloodRequests1
                string reqQuery = "SELECT COUNT(*) FROM BloodRequests1 WHERE UserEmail = @Email";
                using (SqlCommand cmdReq = new SqlCommand(reqQuery, conn))
                {
                    cmdReq.Parameters.AddWithValue("@Email", emailOrUser);
                    int requestCount = (int)cmdReq.ExecuteScalar();
                    lblRequestCount.Text = requestCount.ToString();
                }

                // 3. Hubi inuu yahay Donor iyo in kale
                string donorQuery = "SELECT COUNT(*) FROM Donors WHERE Email = @Email";
                using (SqlCommand cmdDonor = new SqlCommand(donorQuery, conn))
                {
                    cmdDonor.Parameters.AddWithValue("@Email", emailOrUser);
                    int donorCount = (int)cmdDonor.ExecuteScalar();

                    if (donorCount > 0)
                    {
                        lblDonorStatus.Text = "Active Donor";
                        lnkDonorAction.Text = "View Donor Info";
                        lnkDonorAction.NavigateUrl = "RegisterAsDonor.aspx";
                    }
                    else
                    {
                        lblDonorStatus.Text = "Not a Donor";
                        lnkDonorAction.Text = "Register Now";
                        lnkDonorAction.NavigateUrl = "RegisterAsDonor.aspx";
                    }
                }
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();

            Response.Redirect("login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}