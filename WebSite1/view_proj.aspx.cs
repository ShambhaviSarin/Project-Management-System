using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "WELCOME TO PROJECT MANAGEMENT SYSTEM " + Session["Name"];
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

    protected void Btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert_Comment.aspx?proj="+Server.UrlEncode(ddl1.SelectedValue.ToString()));
    }
}