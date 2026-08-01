using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class ContactMessages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMessages();
            }
        }

        private void BindMessages()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Email");
            dt.Columns.Add("Message");
            dt.Columns.Add("Date");

            dt.Rows.Add("Nadiifo Xasan", "nadiifo@example.com", "Ma jira blood group O- oo aad heli karto degdeg ah?", "25 Jul 2026");
            dt.Rows.Add("Sharmarke Cali", "sharmarke@example.com", "Waxaan rabaa inaan noqdo donor, sidee ku bilaabaa?", "24 Jul 2026");
            dt.Rows.Add("Ifrah Maxamed", "ifrah@example.com", "Ma dhici karaan appointment-ka waqti kale?", "22 Jul 2026");

            rptMessages.DataSource = dt;
            rptMessages.DataBind();
        }
    }
    
}