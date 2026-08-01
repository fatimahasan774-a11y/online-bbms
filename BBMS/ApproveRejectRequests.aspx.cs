using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class ApproveRejectRequests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPending();
            }
        }

        private void BindPending()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("Requester");
            dt.Columns.Add("Group");
            dt.Columns.Add("Units");
            dt.Columns.Add("Hospital");
            dt.Columns.Add("Status");

            dt.Rows.Add(1, "Xasan Cabdi", "O+", 2, "Madina Hospital", "Pending");
            dt.Rows.Add(2, "Sahra Maxamed", "A-", 1, "Deka Hospital", "Pending");
            dt.Rows.Add(3, "Cali Warsame", "B+", 3, "Banadir Hospital", "Pending");

            ViewState["RequestsTable"] = dt;

            rptPending.DataSource = dt;
            rptPending.DataBind();
        }

        protected void rptPending_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Approve")
            {
                lblMsg.Text = "Request #" + id + " waa la ansixiyay ✔ (Approved)";
                lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
            }
            else if (e.CommandName == "Reject")
            {
                lblMsg.Text = "Request #" + id + " waa la diiday ✘ (Rejected)";
                lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 72);
            }

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