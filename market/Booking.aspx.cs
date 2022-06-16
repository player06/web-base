using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace market
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ok_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True";

            String query = sql.Text;
            SqlCommand cmd = new SqlCommand(query,conn);

            DataTable dt = new DataTable();

            try
            {
                conn.Open();

                dt.Load(cmd.ExecuteReader());
                Gv.DataSource = dt;
                Gv.DataBind();
                conn.Close();
            }
            catch (Exception error) { }
        }
    }
}