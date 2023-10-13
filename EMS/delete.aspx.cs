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
    public partial class WebForm1 : System.Web.UI.Page
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
            cmd.CommandText = "Delete from [Table] where username=@Value1";
            cmd.Parameters.AddWithValue("@Value1", TextBox1.Text);

            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Delete from [extraInfo] where username=@Value8";
            cmd1.Parameters.AddWithValue("@Value8", TextBox1.Text);

            cmd1.ExecuteNonQuery();
            TextBox1.Text = " ";

            Response.Redirect("home.aspx");
        }
    }
}