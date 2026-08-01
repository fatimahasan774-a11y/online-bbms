using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class RegisterAsDonor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Waad ku guulaysatay diiwaangelinta Donor ahaan ✔ (" + ddlGroup.SelectedValue + ")";
            lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
        }
    }
}