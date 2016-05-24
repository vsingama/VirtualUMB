using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
             if (Session["umassid"] != null)
        {
            
                int  loginid = Int32.Parse(Session["umassid"].ToString());

                DataTable info = CatalogAccess.GetUserInfo(loginid);
                DataRow r = info.Rows[0];
                string user_type = r[11].ToString();
                //string user_type = "Admin";
                if (user_type.Equals("Admin"))
                {
                    this.LabelAdmin.Visible = true;
                    this.HyperLinkViewUser.Visible = true;
                    this.HyperLinkModelView.Visible = true;


                }
        }
        else
        {
           Response.Redirect("login.aspx");
        }
    }
}