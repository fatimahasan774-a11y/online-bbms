using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class DonorHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindHistory();
        }

        private void BindHistory()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Date");
            dt.Columns.Add("Center");
            dt.Columns.Add("Units", typeof(int));
            dt.Columns.Add("Status");

            dt.Rows.Add("12 May 2026", "Central Blood Bank", 1, "Completed");
            dt.Rows.Add("20 Feb 2026", "Digfer Blood Center", 1, "Completed");
            dt.Rows.Add("15 Nov 2025", "Banadir Hospital Bank", 1, "Completed");

            rptHistory.DataSource = dt;
            rptHistory.DataBind();
        }
    }
}