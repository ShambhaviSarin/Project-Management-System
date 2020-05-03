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
        if(!IsPostBack)
        {
            ddl1.Items.Add("0");
            ddl1.Items.Add("1");
        }
    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString; ;
        SqlCommand cmd = new SqlCommand("Select * from Projects where Title = @title", con);
        cmd.Parameters.AddWithValue("@title", title.Text);
        SqlDataReader reader;
        con.Open();
        reader = cmd.ExecuteReader();
        if(reader.HasRows)
        {
            lbl1.Text = "Duplicate projects not allowed";
        }
        else
        {
            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Insert into Projects(Title, Duration, Client, Status, Rcount) values (@t1, @d1, @c1, @s, '0')", con);
            cmd1.Parameters.AddWithValue("@t1", title.Text);
            cmd1.Parameters.AddWithValue("@d1", duration.Text);
            cmd1.Parameters.AddWithValue("@c1", client.Text);
            cmd1.Parameters.AddWithValue("@s", Convert.ToInt32(ddl1.SelectedValue));
            cmd1.ExecuteNonQuery();
            lbl1.Text = "Project added successfully";
        }
        con.Close();
    }
}