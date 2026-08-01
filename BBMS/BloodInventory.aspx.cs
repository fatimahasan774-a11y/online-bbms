using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class BloodInventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStock();
            }
        }

        private void BindStock()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Group");
            dt.Columns.Add("Units", typeof(int));
            dt.Columns.Add("Updated");

            dt.Rows.Add("A+", 45, "25 Jul 2026");
            dt.Rows.Add("A-", 12, "24 Jul 2026");
            dt.Rows.Add("B+", 30, "23 Jul 2026");
            dt.Rows.Add("B-", 8, "20 Jul 2026");
            dt.Rows.Add("AB+", 15, "22 Jul 2026");
            dt.Rows.Add("AB-", 5, "19 Jul 2026");
            dt.Rows.Add("O+", 60, "25 Jul 2026");
            dt.Rows.Add("O-", 18, "21 Jul 2026");

            rptStock.DataSource = dt;
            rptStock.DataBind();

            rptStockTable.DataSource = dt;
            rptStockTable.DataBind();
        }
    }
}