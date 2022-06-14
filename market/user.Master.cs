using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class user : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["User"] != null)
            //{
            //    String name = Request.Cookies["User"].Values["name"];
            //    userLbl.Text = "Yoooo " + name + " How are u man";
            //}

            if (Request.Cookies["pro"] != null)
            {
                try {
                    String name = Request.Cookies["pro"].Values["name"];
                    userLbl.Text = name;


                    userImage.ImageUrl = "~/userPic/"+name+".jpg";
                }catch(Exception error)
                {
                    userLbl.Text = error.Message;
                }
            }
        }
    }
}