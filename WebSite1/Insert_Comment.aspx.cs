using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = "Enter comment for " + Request.QueryString["proj"];
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int pid, uid;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select Id from Projects where Title = @t", con);
        cmd.Parameters.AddWithValue("@t", Request.QueryString["proj"]);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        pid = Convert.ToInt32(reader["Id"]);
        con.Close();
        SqlCommand cmd1 = new SqlCommand("Select Id from Login where Username = @uname", con);
        cmd1.Parameters.AddWithValue("@uname", Session["Name"]);
        con.Open();
        SqlDataReader reader1 = cmd1.ExecuteReader();
        reader1.Read();
        uid = Convert.ToInt32(reader1["Id"]);
        con.Close();
        string c = TextBox1.Text;
        SqlCommand cmd2 = new SqlCommand("Insert into Comments(Pid, Uid, Comm) values (@pid, @uid, @c)", con);
        cmd2.Parameters.AddWithValue("@pid", pid);
        cmd2.Parameters.AddWithValue("@uid", uid);
        cmd2.Parameters.AddWithValue("@c", TextBox1.Text);
        con.Open();
        cmd2.ExecuteNonQuery();
        con.Close();

        string name = Request.QueryString["proj"];
        SqlCommand cmd3 = new SqlCommand("Update Projects set RCount=RCount+1 where Title=@t", con);
        cmd3.Parameters.AddWithValue("@t", name);
        con.Open();
        cmd3.ExecuteNonQuery();
        con.Close();

        Label2.Text = "Comment posted successfully";
    }
}