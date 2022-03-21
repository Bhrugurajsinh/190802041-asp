using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //DeleteCommand="DELETE FROM [users] WHERE [id] = @id" 
        //InsertCommand="INSERT INTO [users] ([fullname], [password]) VALUES (@fullname, @password)" 
        //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
        //SelectCommand="SELECT [id], [fullname], [password] FROM [users]" 
        //UpdateCommand="UPDATE [users] SET [fullname] = @fullname, [password] = @password WHERE [id] = @id">
        print();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button) sender;
        SqlCommand q = new SqlCommand("DELETE FROM [users] WHERE [id] = "+btn.CommandArgument,c);
        c.Open();
        int i = q.ExecuteNonQuery();
        if (i == 1)
        {
            print();
            Response.Write("<script>alert('Data Successfully Deleted.')</script>");
        }
        else
        {
            print();
            Response.Write("<script>alert('Error!.')</scrpit>"); 
        }
        c.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM  [users] WHERE id= " + btn.CommandArgument, c);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox1.Text=dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        ViewState["id"] = btn.CommandArgument;
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM  [users] ",c);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand q = new SqlCommand("UPDATE [users] SET [fullname] = @fullname, [password] = @password WHERE [id] = "+ViewState["id"], c);
        q.Parameters.AddWithValue("@fullname",TextBox1.Text);
        q.Parameters.AddWithValue("@password", TextBox2.Text);
        c.Open();
        int i = q.ExecuteNonQuery();
        if (i == 1)
        {
            print();
            Response.Write("<script>alert('Data Successfully Updated.')</script>");
        }
        else
        {
            print();
            Response.Write("<script>alert('Error!.')</scrpit>");
        }
        c.Close();
    }
}