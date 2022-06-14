using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class logIn : System.Web.UI.Page
    {

        protected void submit_Click(object sender, EventArgs e)
        {
            //SqlConnection connection = new SqlConnection();
            //connection.ConnectionString ="Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            //String select = "select * from member " + "where userName =" +"'"+ TxtUserName.Text+ "'"
            //    +" and password ="+"'" + TxtPass.Text + "'";

            //SqlCommand cmd = new SqlCommand(select,connection);

            //SqlDataReader reader;

            //try
            //{
            //    connection.Open();
            //    reader = cmd.ExecuteReader();
            //    if (reader.Read())
            //    {
            //        HttpCookie cookie = new HttpCookie("User");
            //        cookie.Values.Add("name",TxtUserName.Text);
            //        cookie.Values.Add("password",TxtPass.Text);
            //        cookie.Expires = DateTime.Now.AddDays(1);

            //        Response.Cookies.Add(cookie);
            //        Response.Redirect("~/userHome.aspx");
            //    }
            //    connection.Close();
            //    gg.Text = "it's work";
            //}
            //catch (Exception error)
            //{
            //    gg.Text = error.Message;
            //}

            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            String select = "select * from member " + "where userName = " + "'" +TxtUserName.Text +"'"
                + "and password = " + "'" + TxtPass.Text + "'";

            SqlCommand cmd = new SqlCommand(select,connection);

            SqlDataReader reader;

            try {

                connection.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read()){

                    HttpCookie cookie = new HttpCookie("pro");
                    cookie.Values.Add("name",TxtUserName.Text);
                    cookie.Values.Add("password",TxtPass.Text);
                    
                    cookie.Expires = DateTime.Now.AddDays(1);
                    Response.Cookies.Add(cookie);

                    Response.Redirect("~/userHome.aspx");
                }
                
           
                connection.Close();
            } 
            catch (Exception error) {
                gg.Text = error.Message;
            }
        }
    }
}