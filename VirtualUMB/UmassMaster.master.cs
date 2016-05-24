using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UmassMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Check if a user is logged in
        if (Session["login"] != null)
        {
            lblLogin.Text = "Hello, " + Session["login"];
            lblLogin.Visible = true;
            Button2.Visible = false;
            Button1.Text = "Logout";
        }
        else
        {
            lblLogin.Visible = false;
            Button1.Text = "Login";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //User logs in 
        if (Button1.Text == "Login")
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            //User logs out
            Session.Clear();
            Response.Redirect("index.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //User logs in 
        if (Button2.Text == "Register")
        {
            Response.Redirect("Registration.aspx");
        }
    }
}
