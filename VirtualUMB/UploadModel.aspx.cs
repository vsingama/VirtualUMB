using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.UI.HtmlControls;

public partial class UploadModel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile & FileUpload2.HasFile & DropDownList1.SelectedValue != "Select" & TextBox2.Text != "")
        {
            bool invalid;
            string file1 = FileUpload1.FileName;
            string file2 = FileUpload2.FileName;

            Regex regex = new Regex(@"^.+\.((obj)|(OBJ))$");
            Match match = regex.Match(file2);

            Regex regex1 = new Regex(@"^.+\.((jpg)|(JPG)|(gif)|(GIF)|(jpeg)|(JPEG)|(png)|(PNG)|(bmp)|(BMP))$");
            Match match1 = regex1.Match(file1);


            if (match.Success && match1.Success)
                invalid = true;
            else
                invalid = false;

            if (invalid == true)
            {

                int uid = Convert.ToInt32(Session["umassid"].ToString());

                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "/2D Uploads/" + FileUpload1.FileName);
                FileUpload2.PostedFile.SaveAs(Server.MapPath(".") + "/3D Model/" + FileUpload2.FileName);
                String Imagepath = "2D Uploads/" + FileUpload1.FileName;
                String Threedpath = "3D Model/" + FileUpload2.FileName;
                String Name = TextBox2.Text;
                String catogary = DropDownList1.SelectedValue;
                String comments = TextBox1.Text;
                int views = 0;
                int likes = 0;
                DateTime d = new DateTime();

                Upload upload = new Upload(uid, Name, catogary, Imagepath, Threedpath, comments, views, likes, d);
                ConnectionClass.uploadModel(upload);

                Label1.ForeColor = System.Drawing.Color.Green;

                Label1.Text = "<b>Your file uploaded successfully</b>";

                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "5;url=ViewMyDesign.aspx";
                this.Page.Controls.Add(meta);
                Label2.Text = "You will now be redirected in 5 seconds";


                FileUpload1.Enabled = false;
                FileUpload2.Enabled = false;
                Button1.Enabled = false;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;

                Label1.Text = "<b>Error in 3D Model / 2D Images ..!!</b>";

            }
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "<b>You must choose the Model,Image,Name and category to upload. </b>";
        }
    }
}