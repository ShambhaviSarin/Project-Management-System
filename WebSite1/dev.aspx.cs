using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "WELCOME TO PROJECT MANAGEMENT SYSTEM " + Session["Name"];
    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("search_dev.aspx");
    }

    protected void Btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_proj.aspx");
    }

    protected void Btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("proj_status.aspx");
    }
}