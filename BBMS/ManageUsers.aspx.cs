using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDemoUsers();
            }
        }

        private void BindDemoUsers()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("FullName");
            dt.Columns.Add("Email");
            dt.Columns.Add("Phone");
            dt.Columns.Add("Status");

            dt.Rows.Add("Ahmed Ali", "ahmed@example.com", "0611234567", "Active");
            dt.Rows.Add("Faadumo Cabdi", "faadumo@example.com", "0629876543", "Active");
            dt.Rows.Add("Yusuf Xasan", "yusuf@example.com", "0637654321", "Inactive");

            rptUsers.DataSource = dt;
            rptUsers.DataBind();
        }
    }
    
}