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
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
           print();
    //     DeleteCommand="DELETE FROM [users] WHERE [id] = @id" 
    //    InsertCommand="INSERT INTO [users] ([fullname], [password]) VALUES (@fullname, @password)" 
    //    ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
    //    SelectCommand="SELECT [id], [fullname], [password] FROM [users]" 
    //    UpdateCommand="UPDATE [users] SET [fullname] = @fullname, [password] = @password WHERE [id] = @id">
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "update")
        {
            SqlCommand q = new SqlCommand("UPDATE [category] SET [name] = @name WHERE [id] = " + ViewState["id"], con);
            q.Parameters.AddWithValue("@name", TextBox2.Text);
            con.Open();
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
            con.Close();
            Button1.Text = "insert";
        }
        else
        {
            SqlCommand s = new SqlCommand("INSERT INTO [category] ([name]) VALUES (@nm)", con);
            s.Parameters.AddWithValue("@nm", TextBox2.Text.Trim());
            con.Open();
            int a = s.ExecuteNonQuery();
            if (a == 1)
            {

                TextBox2.Text = "";
                print();
                Response.Write("<script>alert('Inserted')</script>");

            }
            else
            {
                Response.Write("<script>alert('Error............')</script>");
            }
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //update
        Button btn = (Button)sender;
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM  [category] WHERE id= " + btn.CommandArgument, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        TextBox2.Text = dt.Rows[0][1].ToString();
        ViewState["id"] = btn.CommandArgument;
        Button1.Text = "update";
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //delete
        Button btn = (Button) sender;
        SqlCommand q = new SqlCommand("DELETE FROM [category] WHERE [id] = "+btn.CommandArgument,con);
        con.Open();
        int i = q.ExecuteNonQuery();
        if (i == 1)
        {
          
            Response.Write("<script>alert('Data Deleted Deleted.')</script>");
            print();
        }
        else
        {
            print();
            Response.Write("<script>alert('Error!.')</scrpit>"); 
        }
        con.Close();
    }
    public void print()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT * FROM  [category] ", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    
}