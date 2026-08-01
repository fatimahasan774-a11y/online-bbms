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

            dt.Rows.Add("Xaajad Degdeg ah", "Waxaa jira baahi degdeg ah oo dhiig O- ah — hadii aad qalanto fadlan naga soo xiriir.", "25 Jul 2026");
            dt.Rows.Add("Waqtigii Deeqda", "Waxaad hadda u qalantaa in aad deeq bixiso mar kale.", "20 Jul 2026");

            rptNotifications.DataSource = dt;
            rptNotifications.DataBind();
        }
    }
}