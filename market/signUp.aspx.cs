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


            string insert = string.Format("insert into member (name, email, userName, password) values ('{0}', '{1}', '{2}', '{3}')",TxtName.Text,TxtEmail.Text,TxtUserName.Text,Txtpassword.Text);
            //string strInsert = "Insert Into member" +"values (" + TxtName.Text+"," +TxtEmail.Text+","+TxtUserName.Text+","+Txtpassword.Text+")";


            SqlCommand cmd = new SqlCommand(insert,sql);
     
            try
            {
                sql.Open();

                cmd.ExecuteNonQuery();

                sql.Close();

                if (pic.HasFile)
                {
                    pic.SaveAs(Server.MapPath("userPic" + "\\" + TxtUserName.Text + ".jpg"));
                }
            
            }
            catch (Exception err) {
                error.Text = err.Message;
            }
            confirm.Text = "yOoo how are u " + TxtName.Text;

        }
    }
}