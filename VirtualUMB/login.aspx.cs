using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["umassid"] != null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string strpassword = Encryptdata(txtPassword.Text);
        Register user = ConnectionClass.LoginUser(txtemail.Text, strpassword);

        if (user != null)
        {
            //Store login variables in session
            Session["login"] = (user.FName +" "+user.LName).ToUpper()+ "   ";
            Session["type"] = user.Type;
            Session["email"] = user.Email;
            Session["umassid"] = user.Id;
            Response.Redirect("index.aspx");
        }
        else
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "Invalid Credentials";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }

    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new
        byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
  
}