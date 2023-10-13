using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Open();
            }
            else
            {

                con.Open();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
 

            cmd.CommandType = CommandType.Text;
            String h = cmd.CommandText = "Select username,password from [Table] where username='"+TextBox1.Text+ "' and password='"+TextBox2.Text+"'";

            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(h, con);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                Response.Redirect("home.aspx");
            }
            else
            {
                Label3.Text = "INVALID PASSWORD";
            }

        }


    }
    }