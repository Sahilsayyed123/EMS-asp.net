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
    public partial class extra : System.Web.UI.Page
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
            cmd.CommandText = "UPDATE [extraInfo] set address=@Value1, jobtitle=@Value2,number=@Value3, attendance=@Value4 where username=@Value5";
            cmd.Parameters.AddWithValue("@Value1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Value2", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Value3", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Value4", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Value5", TextBox1.Text);
            cmd.ExecuteNonQuery();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            Response.Redirect("home.aspx");
        }
    }
}