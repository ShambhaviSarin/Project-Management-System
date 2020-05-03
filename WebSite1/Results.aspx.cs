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
        
        if (Equals(Request.QueryString["key"], "Project Title"))
        {
            SqlCommand cmd = new SqlCommand("Select * from Projects where Title=@t", con);
            cmd.Parameters.AddWithValue("@t", Request.QueryString["value"]);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Projects");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (Equals(Request.QueryString["key"], "Duration"))
        {
            SqlCommand cmd = new SqlCommand("Select * from Projects where Duration=@d", con);
            cmd.Parameters.AddWithValue("@d", Request.QueryString["value"]);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Projects");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (Equals(Request.QueryString["key"], "Client"))
        {
            SqlCommand cmd = new SqlCommand("Select * from Projects where Client=@c", con);
            cmd.Parameters.AddWithValue("@c", Request.QueryString["value"]);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Projects");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else if (Equals(Request.QueryString["key"], "Status"))
        {
            SqlCommand cmd = new SqlCommand("Select * from Projects where Status=@s", con);
            cmd.Parameters.AddWithValue("@s", Request.QueryString["value"]);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Projects");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}