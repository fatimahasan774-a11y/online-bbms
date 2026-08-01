using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class RequestStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindStatus();
        }

        private void BindStatus()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Group");
            dt.Columns.Add("Units", typeof(int));
            dt.Columns.Add("Hospital");
            dt.Columns.Add("Date");
            dt.Columns.Add("Status");

            dt.Rows.Add("A+", 2, "Madina Hospital", "24 Jul 2026", "Pending");
            dt.Rows.Add("A+", 1, "Deka Hospital", "10 Jul 2026", "Approved");

            rptStatus.DataSource = dt;
            rptStatus.DataBind();
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