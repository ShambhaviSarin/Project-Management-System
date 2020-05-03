using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void reject_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;

        if (gvr.RowType == DataControlRowType.DataRow)
        {
            (gvr.FindControl("Label1") as Label).Text = "Rejected";
            (gvr.FindControl("approve") as Button).Visible = false;
            (gvr.FindControl("reject") as Button).Visible = false;
        }

        string value = gvr.Cells[2].Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select id from Comments where comm=@c", con);
        cmd.Parameters.AddWithValue("@c", value);
        con.Open();
        SqlDataReader r = cmd.ExecuteReader();
        r.Read();
        int id = Convert.ToInt32(r["Id"]);
        con.Close();
        SqlCommand cmd1 = new SqlCommand("Update Comments set status='0' where id=@i", con);
        cmd1.Parameters.AddWithValue("@i", id);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        Label2.Text = "Updated Successfully";
    }

    protected void approve_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        
        if(gvr.RowType == DataControlRowType.DataRow)
        {
            (gvr.FindControl("Label1") as Label).Text = "Approved";
            (gvr.FindControl("approve") as Button).Visible = false;
            (gvr.FindControl("reject") as Button).Visible = false;
        }

        string value = gvr.Cells[2].Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["ProjectCS"].ConnectionString;
        SqlCommand cmd = new SqlCommand("Select id from Comments where comm=@c", con);
        cmd.Parameters.AddWithValue("@c", value);
        con.Open();
        SqlDataReader r = cmd.ExecuteReader();
        r.Read();
        int id = Convert.ToInt32(r["Id"]);
        con.Close();
        SqlCommand cmd1 = new SqlCommand("Update Comments set status='1' where id=@i", con);
        cmd1.Parameters.AddWithValue("@i", id);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        Label2.Text = "Updated Successfully";
    }
} 