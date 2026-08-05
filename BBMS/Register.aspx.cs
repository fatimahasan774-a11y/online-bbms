using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblMsg.Text = "Please fill in all required fields.";
                lblMsg.ForeColor = System.Drawing.Color.FromArgb(225, 29, 46);
                return;
            }

            // Halkan waxaad ka heli kartaa dookhagii uu isticmaaluhu doortay (User, Hospital, ama Donor)
            string selectedRole = ddlRole.SelectedValue;

            // TODO: Ku dar database-kaaga hadhow adoo isticmaalaya 'selectedRole'

            lblMsg.Text = "Your account has been created successfully as a " + selectedRole + " — you can now sign in.";
            lblMsg.ForeColor = System.Drawing.Color.FromArgb(22, 163, 74);
        }
    }
}