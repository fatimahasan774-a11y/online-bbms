using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class DonarManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDemoDonors();
            }
        }

        private void BindDemoDonors()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("DonorId");
            dt.Columns.Add("FullName");
            dt.Columns.Add("Email");
            dt.Columns.Add("BloodGroup");
            dt.Columns.Add("Phone");
            dt.Columns.Add("City");

            dt.Rows.Add("D-1001", "Ahmed Mohamed", "ahmed@example.com", "O+", "+252 61 1234567", "Mogadishu");
            dt.Rows.Add("D-1002", "Fatima Ali", "fatima@example.com", "A+", "+252 63 7654321", "Hargeisa");
            dt.Rows.Add("D-1003", "Yusuf Hassan", "yusuf@example.com", "B-", "+252 65 9988776", "Kismayo");

            rptDonors.DataSource = dt;
            rptDonors.DataBind();
        }
    }
}