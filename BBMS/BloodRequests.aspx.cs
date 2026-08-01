using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class BloodRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRequests();
            }
        }

        private void BindRequests()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Requester");
            dt.Columns.Add("Group");
            dt.Columns.Add("Units");
            dt.Columns.Add("Hospital");
            dt.Columns.Add("Date");
            dt.Columns.Add("Status");

            dt.Rows.Add("Xasan Cabdi", "O+", 2, "Madina Hospital", "24 Jul 2026", "Pending");
            dt.Rows.Add("Sahra Maxamed", "A-", 1, "Deka Hospital", "23 Jul 2026", "Approved");
            dt.Rows.Add("Cali Warsame", "B+", 3, "Banadir Hospital", "20 Jul 2026", "Rejected");

            rptRequests.DataSource = dt;
            rptRequests.DataBind();
        }

        protected string GetStatusClass(string status)
        {
            switch (status)
            {
                case "Approved": return "badge badge-approved";
                case "Rejected": return "badge badge-rejected";
                default: return "badge badge-pending";
            }
        }
    }
}
