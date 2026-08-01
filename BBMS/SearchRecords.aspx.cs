using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class SearchRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindResults();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            // Hadhow: SQL WHERE query ku salaysan txtSearch.Text + ddlType.SelectedValue
            BindResults();
        }

        private void BindResults()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Type");
            dt.Columns.Add("BloodGroup");
            dt.Columns.Add("Contact");

            dt.Rows.Add("Ahmed Ali", "User", "A+", "0611234567");
            dt.Rows.Add("Mohamed Nur", "Donor", "O+", "0622334455");
            dt.Rows.Add("Xasan Cabdi", "Request", "O+", "0633445566");

            rptResults.DataSource = dt;
            rptResults.DataBind();
        }
    }
}