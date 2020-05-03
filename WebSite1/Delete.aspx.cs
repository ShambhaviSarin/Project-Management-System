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
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select Title from Projects", con);
        SqlDataReader reader;
        con.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
            ddl1.Items.Add(reader["Title"].ToString());
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Delete from Projects where Title=@t", con);
        cmd.Parameters.AddWithValue("@t", ddl1.SelectedValue);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = ddl1.SelectedValue + " deleted successfully";
    }
}