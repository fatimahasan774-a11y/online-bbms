using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindReport();
            }
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            // Hadhow: SQL query ku salaysan ddlReportType.SelectedValue, txtFrom.Text, txtTo.Text
            BindReport();
        }

        private void BindReport()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Month");
            dt.Columns.Add("Donations", typeof(int));
            dt.Columns.Add("Requests", typeof(int));
            dt.Columns.Add("UnitsUsed", typeof(int));

            dt.Rows.Add("May 2026", 32, 12, 28);
            dt.Rows.Add("Jun 2026", 40, 15, 35);
            dt.Rows.Add("Jul 2026", 28, 18, 22);

            rptReport.DataSource = dt;
            rptReport.DataBind();
        }
    }
}