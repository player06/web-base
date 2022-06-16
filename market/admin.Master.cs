using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String name = "";
            if (Request.Cookies["user"] != null)
            {
                name = Request.Cookies["user"].Values["name"];

            }

            msg.Text = "yooooo " + name + " how are u pro";
        }
    }
}