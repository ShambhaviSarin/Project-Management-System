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
    HttpCookie cook;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Request.Cookies["Username"] != null)
            {
                username.Text = Request.Cookies["Username"].Value;
            }
        }
    }

    protected void login_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {

            if (CheckBox1.Checked)
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddYears(30);
            }
            else
            {
                Response.Cookies["Username"].Expires = DateTime.Now.AddYears(-1);
            }

            Response.Cookies["Username"].Value = username.Text.Trim();

            if (Equals(username.Text, "admin"))
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                Session["Name"] = username.Text;
                Response.Redirect("dev.aspx");
            }
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select * from Login where Username = @uname", con);
        cmd.Parameters.AddWithValue("@uname", username.Text);
        SqlDataReader reader;
        con.Open();
        reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            if (Equals(reader["Password"].ToString(), password.Text))
            {

                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        else
        {
            args.IsValid = false;
        }
        con.Close();
    }
}