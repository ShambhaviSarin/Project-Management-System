using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    //HttpCookie cook;
    protected void Page_Load(object sender, EventArgs e)
    {
        ddl2.Visible = false;
        if(!IsPostBack)
        {
            string[] cats = {"", "Project Title", "Status", "Duration", "Client", "DeveloperID"};
            for(int i=0; i<6; i++)
            {
                ddl1.Items.Add(cats[i]);
            }
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        if (Equals(ddl1.SelectedValue, "Project Title") || Equals(ddl1.SelectedValue, "Status") || Equals(ddl1.SelectedValue, "Duration") || Equals(ddl1.SelectedValue, "Client"))
        {
            Response.Redirect("Results.aspx?key="+Server.UrlEncode(ddl1.SelectedValue)+"&value="+Server.UrlEncode(ddl2.SelectedValue));
        }
        else if(Equals(ddl1.SelectedValue, "DeveloperID"))
        {
            Response.Redirect("Results_Dev.aspx?key=" + Server.UrlEncode(ddl1.SelectedValue) + "&value=" + Server.UrlEncode(ddl2.SelectedValue));
        }
    }

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        if (Equals(ddl1.SelectedValue, "Project Title"))
        {
            ddl2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select Title from Projects", con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
                ddl2.Items.Add(r["Title"].ToString());
            con.Close();
        }
        else if (Equals(ddl1.SelectedValue, "Status"))
        {
            ddl2.Items.Clear();
            ddl2.Items.Add("1");
            ddl2.Items.Add("0");
            con.Close();
        }
        else if (Equals(ddl1.SelectedValue, "Duration"))
        {
            ddl2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select distinct Duration from Projects", con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
                ddl2.Items.Add(r["Duration"].ToString());
            con.Close();
        }
        else if (Equals(ddl1.SelectedValue, "Client"))
        {
            ddl2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select distinct Client from Projects", con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
                ddl2.Items.Add(r["Client"].ToString());
            con.Close();
        }
        else if (Equals(ddl1.SelectedValue, "DeveloperID"))
        {
            ddl2.Items.Clear();
            SqlCommand cmd = new SqlCommand("Select Id from Login", con);
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                if(!Equals(r["Id"].ToString(), "1"))
                {
                    ddl2.Items.Add(r["Id"].ToString());
                }
            }
            con.Close();
        }
        ddl2.Visible = true;
    }
}