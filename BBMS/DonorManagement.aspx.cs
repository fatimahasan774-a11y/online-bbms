using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BBMS
{
    public partial class DonarManagement : System.Web.UI.Page
    {
        string connStr = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=BloodBankDB;Integrated Security=True";
        string query = "SELECT DonorId, FullName, Email, BloodGroup, Age, LastDonationDate, Phone, City FROM Donors";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDonors();
            }
        }

        private void BindDonors()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                // Hubi in magacyada tiirarka (Columns) iyo miiska (Table) ay is leeyihiin database-kaaga
                string query = "SELECT DonorId, FullName, Email, BloodGroup, Phone, City FROM Donors";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptDonors.DataSource = dt;
                        rptDonors.DataBind();
                    }
                }
            }
        }
    }
}