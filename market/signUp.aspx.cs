using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e){
            //create connectoin object
            SqlConnection sql = new SqlConnection();
            sql.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
          
            string insert = string.Format("insert into member('{0}', '{1}', '{2}', '{3}')",TxtName.Text,TxtEmail.Text,TxtUserName.Text,Txtpassword.Text);

            SqlCommand cmd = new SqlCommand(insert,sql);
            
            sql.Open();

            cmd.ExecuteNonQuery();

            sql.Close();
           
        }
    }
}