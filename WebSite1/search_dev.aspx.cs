﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
            SqlCommand cmd = new SqlCommand("Select Username from Login where Username!=@uname and Username!=@a", con);
            cmd.Parameters.AddWithValue("@uname", Session["Name"].ToString());
            cmd.Parameters.AddWithValue("@a", "admin");
            con.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
                ddl1.Items.Add(r["Username"].ToString());
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search_res.aspx?key=" + Server.UrlEncode("DeveloperName") + "&value=" + Server.UrlEncode(ddl1.SelectedValue));
    }

}