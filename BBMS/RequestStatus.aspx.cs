using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BBMS
{
    public partial class RequestStatus : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null && Session["UserEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    LoadUserRequests();
                }
            }
        }

        private void LoadUserRequests()
        {
            string userEmail = "";

            if (Session["Username"] != null)
            {
                userEmail = Session["Username"].ToString();
            }
            else if (Session["UserEmail"] != null)
            {
                userEmail = Session["UserEmail"].ToString();
            }

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT RequestType, BloodGroup, Units, HospitalLocation, RequestDate, Status FROM BloodRequests WHERE UserEmail = @Email ORDER BY RequestId DESC";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", userEmail);
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        rptStatus.DataSource = dt;
                        rptStatus.DataBind();
                    }
                }
            }
        }
    }
}