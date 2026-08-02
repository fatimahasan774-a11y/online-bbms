using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class DonorNotifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) BindNotifications();
        }

        private void BindNotifications()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Title");
            dt.Columns.Add("Message");
            dt.Columns.Add("Date");

            dt.Rows.Add("Urgent Blood Needed", "There is an urgent need for O- blood. Please contact us if you're eligible to donate.", "25 Jul 2026");
            dt.Rows.Add("You're Eligible Again", "Your waiting period has ended — you can now book a new donation.", "20 Jul 2026");
            dt.Rows.Add("Thank You!", "Thank you for your last donation. It helped save up to 3 lives.", "12 May 2026");

            rptNotifications.DataSource = dt;
            rptNotifications.DataBind();
        }
    }
}