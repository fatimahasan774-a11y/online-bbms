using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class SearchBloodGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindResults();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Hadhow: SQL WHERE Group = ddlGroup.SelectedValue
            BindResults();
        }

        private void BindResults()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("BankName");
            dt.Columns.Add("Group");
            dt.Columns.Add("Units", typeof(int));
            dt.Columns.Add("Location");
            dt.Columns.Add("Contact");

            dt.Rows.Add("Central Blood Bank", ddlGroup.SelectedValue, 45, "Xamar Weyne, Mogadishu", "0611000000");
            dt.Rows.Add("Banadir Hospital Bank", ddlGroup.SelectedValue, 12, "Banadir, Mogadishu", "0612000000");
            dt.Rows.Add("Digfer Blood Center", ddlGroup.SelectedValue, 8, "Wadajir, Mogadishu", "0613000000");

            rptResults.DataSource = dt;
            rptResults.DataBind();
        }
    }
}