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
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString ="Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            String select = "select * from member " + "where userName =" +"'"+ TxtUserName.Text+ "'"
                +" and password ="+"'" + TxtPass.Text + "'";

            SqlCommand cmd = new SqlCommand(select,connection);

            SqlDataReader reader;

            try
            {
                connection.Open();
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Response.Redirect("~/homePage.aspx");
                }
                connection.Close();
                gg.Text = "it's work";
            }
            catch (Exception error)
            {
                gg.Text = error.Message;
            }


          
        }
    }
}