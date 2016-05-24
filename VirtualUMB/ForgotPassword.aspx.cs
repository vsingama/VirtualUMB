using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Windows.Forms;
using System.Web.UI.HtmlControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillCapctha();
        }
    }

    void FillCapctha()
    {
        try
        {
            Random random = new Random();
            string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch
        {

            throw;
        }
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        FillCapctha();
    }

    private void ClearTextFields()
    {
        txtEmailID.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        txtCaptcha.Text = "";
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        if (Session["captcha"].ToString() != txtCaptcha.Text)
            lblLabel.Text  = "Invalid Captcha Code";
        else
        {
            string strpassword = Encryptdata(txtPassword.Text);
            Register reset = new Register(txtEmailID.Text, strpassword);

            //Register the user and return a result message
            lblMessage.Text = ConnectionClass.updatePassword(reset);

            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;url=login.aspx";
            this.Page.Controls.Add(meta);
            Label1.Text = "You will now be redirected in 5 seconds";
            ClearTextFields();
        }
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