using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Windows.Forms;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["umassid"] != null)
        {
            if (!IsPostBack)
            {
                if (Session["umassid"] != null)
                {
                   int loginid = Int32.Parse(Session["umassid"].ToString());

                    DataTable info = CatalogAccess.GetUserInfo(loginid);
                    DataRow r = info.Rows[0];
                    //MessageBox.Show(info.Rows[0].ToString());
                    this.TextBoxUmassId.Text = r[0].ToString();
                    this.TextBoxEmail.Text = r[4].ToString();
                    this.TextBoxUsername.Text = r[1].ToString();
                    this.TextBoxLastName.Text = r[2].ToString();
                    this.TextBoxGender.Text = r[5].ToString();
                    this.ImageEditProfile.ImageUrl = r[6].ToString();
                    //MessageBox.Show(ImageEditProfile.ImageUrl.ToString());
                    this.TextBoxDescription.Text = r[7].ToString();
                    this.TextBoxDepatment.Text = r[9].ToString();
                    this.TextBoxMajor.Text = r[8].ToString();
                    this.TextBoxCollege.Text = r[10].ToString();
                    string usertype = r[11].ToString();
                }
                //  this.TextBoxUmassId.Text = loginid.ToString();

            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    //  }
    // }


    protected void ButtonCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("MyAccount.aspx");

    }


    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        if (TextBoxUsername.Text.Length != 0 && TextBoxLastName.Text.Length != 0)
        {
            

            try
            {
                string desc, dept, major, colg, uid, fname, lname, img=null;
                uid = this.TextBoxUmassId.Text;
                int a= Int32.Parse(uid);
                //MessageBox.Show(a);
                fname = this.TextBoxUsername.Text;
                lname = this.TextBoxLastName.Text;

                desc = this.TextBoxDescription.Text;
                dept = this.TextBoxDepatment.Text;
                major = this.TextBoxMajor.Text;
                colg = this.TextBoxCollege.Text;
                if (ImageEditProfile.ImageUrl != null || FileUpload1.HasFile)
                {
                    if(FileUpload1.HasFile)
                    {
                        string sfilename = Server.MapPath("~/User_Image/") + uid + ".jpg";
                        FileUpload1.SaveAs(sfilename);
                        img = "User_Image" + "/" + uid + ".jpg";
                    }
                    else{
                    System.IO.File.Copy(Server.MapPath("~/Folder/") + uid + ".jpg", Server.MapPath("~/User_Image/") + uid + ".jpg", true);
                   // img = "~//User_Image//" + uid + ".jpg".ToString();
                    img = "User_Image" + "/" + uid + ".jpg";
                 
                    }

                }

               // MessageBox.Show
                CatalogAccess.updateUserInfo(a, fname, lname, img, desc, major, dept, colg);
                MessageBox.Show("Save successful!!", "Message");
            }
            catch (Exception e1)
            {
                //MessageBox.Show(e1.ToString(),null);
            }
        }
        
      }
    protected void ButtonPreview_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                string filename = System.IO.Path.GetFileName(FileUpload1.FileName);
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                string id = this.TextBoxUmassId.Text;
                string sfilename = Server.MapPath("~/Folder/") + id + ".jpg";
                FileUpload1.SaveAs(sfilename);
                // System.IO.File.Replace(Server.MapPath("~/Folder/") + filename, "1.jpg", "true");
                /*Uploaded file path*/

                string filePath = "Folder/" + id + ".jpg";
                //Response.Write(filePath);
                /*******************************************/
                /*Code to save the file path into data base*/
                /*******************************************/
                // lblmessage.Text = "File uploaded successfully.";
                ImageEditProfile.ImageUrl = filePath;
                this.LabelPreview.Visible = false;
                //this.LabelPreview.Text = filePath;
            }
            else
            {

                this.LabelPreview.Visible = true;

            }
        }
        catch (Exception e2)
        {
            MessageBox.Show("Could not provide Preview");
        }


    }
        protected void FileUpload1_Click(object sender, EventArgs e)
    {
        //  this.LabelPreview.Visible = false;

    }
    protected void TextBoxEmail_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
    {
       
    }


}