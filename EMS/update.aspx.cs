using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class update : System.Web.UI.Page
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
            cmd.CommandText = "UPDATE [Table] set firstname=@Value1, lastname=@Value2, email=@Value4, password=@Value5 where username=@Value3";
            cmd.Parameters.AddWithValue("@Value1", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Value2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Value3", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Value4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Value5", TextBox5.Text);
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