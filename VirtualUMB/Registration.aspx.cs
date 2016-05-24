using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI.HtmlControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["umassid"] != null)
        {
            Response.Redirect("index.aspx");
        }
    }

    private void ClearTextFields()
    {
        txtName.Text = "";
        txtLast.Text = "";
        txtPassword.Text = "";
        txtPassConfirm.Text = "";
        txtEmail.Text = "";
        txtEmailConfirm.Text = "";
        txtRadio1.Text = "Male";
        txtRadio2.Text = "Female";
        DropDownList1.SelectedItem.Text = "";
        txtDepartment.Text = "";
        txtCollege.Text = "";
        txtDescription.Text = "";
    }


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        bool invalid;
        string email = txtEmail.Text;
        string email1 = txtEmailConfirm.Text;
        Regex regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
        Match match = regex.Match(email);
        Match match1 = regex.Match(email1);
        if (email==email1 && match.Success)
         invalid = true; 
        else
         invalid = false; 
       
        string strpassword = Encryptdata(txtPassword.Text);
        string strpassword1 = Encryptdata(txtPassConfirm.Text);

         string txtGender;

            if (txtRadio1.Checked == true)
            {
                txtGender = txtRadio1.Text;
            }
            else if (txtRadio2.Checked == true)
            {
                txtGender = txtRadio2.Text;
            }
            else
            {
                txtGender = "";
            }
            
            string txtMajor = DropDownList1.SelectedItem.Text.ToString();

            if (txtName.Text != "" && txtLast.Text != "" && invalid != false && strpassword != "" && (strpassword == strpassword1) && txtEmail.Text != "" && txtGender != "" && txtMajor != "" && txtDepartment.Text != "" && txtCollege.Text != "" && txtDescription.Text != "") 
        {           
           //Create a new user
            Register user = new Register(txtName.Text, txtLast.Text, strpassword, txtEmail.Text, txtGender, "Images/user.jpg", txtDepartment.Text, txtMajor, txtCollege.Text, txtDescription.Text, "user");

            //Register the user and return a result message
            lblLabel.Text = ConnectionClass.RegisterUser(user);

            if (lblLabel.Text == "User Account registered Successfully...!!")
            {
            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "5;url=login.aspx";
            this.Page.Controls.Add(meta);
            Label1.Text = "You will now be redirected in 5 seconds";
            }
            ClearTextFields();
        }
      else
        {
            lblLabel.Text = "Enter all the missing fields";
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