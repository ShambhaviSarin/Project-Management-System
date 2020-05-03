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

    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        Response.Redirect("create.aspx");
    }

    protected void Btn2_Click(object sender, EventArgs e)
    {
        Response.Redirect("comments.aspx");
    }

    protected void Btn3_Click(object sender, EventArgs e)
    {
        Response.Redirect("display.aspx");
    }

    protected void Btn4_Click(object sender, EventArgs e)
    {
        Response.Redirect("search.aspx");
    }

    protected void Btn5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete.aspx");
    }
}