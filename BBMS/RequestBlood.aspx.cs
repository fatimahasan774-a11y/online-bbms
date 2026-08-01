using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class RequestBlood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Codsigaaga (" + ddlGroup.SelectedValue + ", " + txtUnits.Text + " units) waa la diray ✔ — sug ansixinta Admin-ka.";
            lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
        }
    }
}