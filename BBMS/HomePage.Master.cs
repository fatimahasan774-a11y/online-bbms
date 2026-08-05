using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BBMS
{
    public partial class HomePage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = Path.GetFileName(Request.Url.AbsolutePath).ToLower();

            navHome.CssClass = (currentPage == "default.aspx" || currentPage == "") ? "active-link" : "";
            navAbout.CssClass = (currentPage == "aboutus.aspx") ? "active-link" : "";
            navServices.CssClass = (currentPage == "services.aspx") ? "active-link" : "";
        }
    }
    
}