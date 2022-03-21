using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sub(object sender, EventArgs e)
    {
        SqlCommand s = new SqlCommand("INSERT INTO [users] ([fullname],[password]) VALUES (@nm,@pw)", con);
        s.Parameters.AddWithValue("@nm", TextBox1.Text.Trim());
        s.Parameters.AddWithValue("@pw", TextBox2.Text.Trim());
        con.Open();
        int a = s.ExecuteNonQuery();
        if (a == 1)
        {
            Session["name"] = TextBox1.Text;
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("Login.aspx");
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Write("<script>alert('Error............')</script>");
        }
        con.Close();
    }
}