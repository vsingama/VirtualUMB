using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Net.Mail;



public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            try
            {
                if (Page.IsValid)
                {
                    MailMessage mm = new MailMessage();

                    mm.From = new MailAddress("umbv.adm@gmail.com");

                    mm.To.Add("sangomana.d@gmail.com");

                    mm.Subject = txtSubject.Text;

                    mm.Body = "<b> Sender Name : </b>" + txtName.Text + "<br/>" +

                        "<b> Sender Email : </b>" + txtEmail.Text + "<br/>" +

                        "<b> Comments : </b>" + txtComment.Text;
                    mm.IsBodyHtml = true;



                    MailMessage us = new MailMessage();

                    us.From = new MailAddress("umbv.adm@gmail.com");

                    us.To.Add(txtEmail.Text);

                    us.Subject ="No reply UMB Virtual";

                    us.Body = "Thank you for contacting us, your comments are received.We will get back to you ASAP.";
                    us.IsBodyHtml = true;

                    SmtpClient sc = new SmtpClient("smtp.gmail.com", 587);
                    sc.EnableSsl = true;

                    sc.Credentials = new System.Net.NetworkCredential("umbv.adm@gmail.com", "Virtualadmin");
                    sc.Send(mm);
                    sc.Send(us);

                    Label1.Text = "Your message has been sent";

                    txtName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtSubject.Enabled = false;
                    txtComment.Enabled = false;
                    Button1.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "This facility has problem currently,Please try again later.";
                if (ex.Source != null)
                    Console.WriteLine("IOException source: ", ex.Source);

            }

        }
}