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
    public partial class WebForm2 : System.Web.UI.Page
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
            cmd.CommandText = "INSERT INTO [Table] (firstname, lastname, username, email, password) VALUES (@Value1, @Value2, @Value3, @Value4, @Value5)";
            cmd.Parameters.AddWithValue("@Value1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Value2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Value3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Value4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Value5", TextBox5.Text);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "INSERT INTO [extraInfo] (username) VALUES (@Value8)";
            cmd1.Parameters.AddWithValue("@Value8", TextBox3.Text);

            cmd1.ExecuteNonQuery();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";

            Response.Redirect("home.aspx");
        }
    }
}