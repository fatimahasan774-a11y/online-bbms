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

            dt.Rows.Add("Nadiifo Hassan", "nadiifo@example.com", "Is O- blood available urgently at your center?", "25 Jul 2026");
            dt.Rows.Add("Sharmarke Ali", "sharmarke@example.com", "I want to become a donor. How do I get started?", "24 Jul 2026");
            dt.Rows.Add("Ifrah Mohamed", "ifrah@example.com", "Can I reschedule my donation appointment?", "22 Jul 2026");
            rptMessages.DataSource = dt;
            rptMessages.DataBind();
        }
    }
    
}