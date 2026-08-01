using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class AddBloodGroup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDemoGroups();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // Hadhow: geli SQL INSERT halkan
            lblMessage.Text = "Blood Group " + ddlBloodGroup.SelectedValue + " (" + txtUnits.Text + " units) waa la kaydiyay ✔";
            lblMessage.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
            BindDemoGroups();
        }

        private void BindDemoGroups()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Group");
            dt.Columns.Add("Units");

            dt.Rows.Add("A+", 45);
            dt.Rows.Add("O+", 60);
            dt.Rows.Add("B+", 30);
            dt.Rows.Add("AB-", 15);

            rptGroups.DataSource = dt;
            rptGroups.DataBind();
        }
    }
    
}