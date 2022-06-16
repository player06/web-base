using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) {
            //    String name = "";
            //    if (Request.Cookies["pro"] != null) {
            //        name = Request.Cookies["pro"].Values["name"];
            //    }
            //    ViewState["u"] = name;
            //    Image1.ImageUrl = "~/userPic/" + name + ".jpg";

            //    SqlConnection connection = new SqlConnection();
            //    connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            //    String select = "select * from member where userName = '" +name+ "'"  ;

            //    SqlCommand cmd = new SqlCommand(select,connection);
            //    SqlDataReader reader;

            //    connection.Open();

            //    reader = cmd.ExecuteReader();

            //    if (reader.Read()){

            //        txtName.Text = (string)reader.GetValue(1);
            //        txtEmail.Text = (string)reader.GetValue(2);
            //        txtUserName.Text = (string)reader.GetValue(3);
            //        txtPassword.Text = (string)reader.GetValue(4);
            //        //txtBirth.Text = (string)reader.GetValue(5);
            //    }

            //}

            if (!IsPostBack)
            {
                String name = "";
                if (Request.Cookies["pro"] != null) {
                    name = Request.Cookies["pro"].Values["name"];
                }
                ViewState["u"] = name;
                Image1.ImageUrl = "~/userPic/"+name+".jpg";

                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

                String select = "select * from member where userName = " + "'" + name + "'";

                SqlCommand cmd = new SqlCommand(select,connection);
                try
                {
                    connection.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read()) {

                        txtName.Text = (string)reader.GetValue(1);
                        txtEmail.Text = (string)reader.GetValue(2);
                        txtUserName.Text = (string)reader.GetValue(3);
                        txtPassword.Text = (string)reader.GetValue(4);
                        //txtBirth.Text = (string)reader.GetValue(5);
                    }
                }
                catch (Exception error)
                {
                    
                }
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            txtName.Enabled = true;
            txtEmail.Enabled = true;
            txtUserName.Enabled = true;
            txtPassword.Enabled = true;
            txtBirth.Enabled = true;
            Upload.Enabled = true;
            save.Visible = true;
        }

        protected void save_Click(object sender, EventArgs e)
        {
            // SqlConnection conn = new SqlConnection();
            // conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            // String userName = (string)ViewState["u"];

            // String update = "update member " + 
            //     " set name = " + "'"+txtName+"'" + ", "+
            //     "email = " + "'" + txtEmail + "'" + ", "+
            //     "password = " + "'" + txtPassword + "' " +
            //     "where userName = " + "'" + userName + "'" ;

            //SqlCommand cmdUpdate = new SqlCommand(update,conn);
            // try
            // {
            //     conn.Open();

            //     cmdUpdate.ExecuteNonQuery();
            //     if (Upload.HasFile)
            //     {
            //          Upload.SaveAs(Server.MapPath("userpic") + "\\" + txtUserName + ".jpg");
            //     }
            //     conn.Close();

            // }
            // catch (Exception error)
            // {
            //     msg.Text = error.Message;
            // }

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";
            
            String userName = (string)ViewState["u"];

            String update = "update member set " + 
                "name = "+"'" + txtName.Text + "'"+", "+
                "name = " + "'" + txtName.Text + "' " +
                "where userName = " + "'" + userName + "'";

            SqlCommand cmd = new SqlCommand(update,conn);

            try {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();

                if (Upload.HasFile)
                {
                    Upload.SaveAs(Server.MapPath("userPic") + "\\" + userName + ".jpg");
                }
            } 
            catch (Exception error){ 
            }
        }
    }
}