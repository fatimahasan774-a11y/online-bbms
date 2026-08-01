using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class DonorManagement : System.Web.UI.Page
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
            dt.Columns.Add("FullName");
            dt.Columns.Add("BloodGroup");
            dt.Columns.Add("LastDonation");
            dt.Columns.Add("Eligible", typeof(bool));

            dt.Rows.Add("Mohamed Nur", "O+", "12 May 2026", true);
            dt.Rows.Add("Amina Xasan", "A+", "20 Jul 2026", false);
            dt.Rows.Add("Cabdirisaaq Cali", "B-", "01 Mar 2026", true);

            rptDonors.DataSource = dt;
            rptDonors.DataBind();
        }
    }
    
}