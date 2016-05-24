using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text;
using System.Data;

public partial class ViewModel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblModel.Text = this.Page.RouteData.Values["Model"].ToString();
        int modelid = 0;
        if (!Int32.TryParse(lblModel.Text, out modelid))
        {
            modelid = 0;
        }
       
       int ownerid = CatalogAccess.GetOwnerId(modelid, out ownerid);
       DataTable ownerinfo = CatalogAccess.GetOwnerInfo(ownerid);
       if (ownerinfo.Rows.Count > 0)
       {
           DataRow r = ownerinfo.Rows[0];
           this.owneremail.Text = r[0].ToString();
           string fname = r[1].ToString();
           string lname = r[2].ToString();
           this.ownername.Text = fname + " " + lname;
           this.userimage.ImageUrl = r[3].ToString();
           this.ownerdesc.Text = r[4].ToString();
           this.ownerdept.Text = r[5].ToString();
           this.ownertitle.Text = r[6].ToString();
           this.ownercollege.Text = r[7].ToString();
       }
       DataTable modelinfo = CatalogAccess.GetModelInfo(modelid);
       if (modelinfo.Rows.Count > 0)
       {
           DataRow m = modelinfo.Rows[0];
           string modelimagepath = m[2].ToString();
           this.modelname.Text = m[0].ToString();
           this.modeldesc.Text = m[3].ToString();
           Page.ClientScript.RegisterStartupScript(this.GetType(), "abc", "setNewUrl('" + modelimagepath + "')", true);
           if (Session["umassid"] == null)
           {
               this.like.Text = "Please login to like the model";
               DisableLinkButton(this.link1);
           }
           else
           {
               int userid = Int32.Parse(Session["umassid"].ToString());
               int flag = CatalogAccess.hasLiked(modelid, userid, out flag);
               if (flag == 1)
               {
                   this.like.Text = "Liked";
                   DisableLinkButton(this.link1);
               }
           }
           string like = m[4].ToString();
           if (!IsPostBack)
           {
                string view = m[5].ToString();
                this.modellike.Text = like + " Likes, " + view + " Views";
                CatalogAccess.updateViews(modelid);
            }
        }
               
    }
    protected void Like_Model(object sender, EventArgs e)
    {
        int userid = Int32.Parse(Session["umassid"].ToString());
        if (!this.IsPostBack)
        {
            lblModel.Text = this.Page.RouteData.Values["Model"].ToString();
        }
        int modelid = Convert.ToInt32(lblModel.Text);
        CatalogAccess.updateLikes(modelid);
        CatalogAccess.insertLikes(modelid, userid);
        this.like.Text = "Liked";
        DisableLinkButton(this.link1);
    }

    public static void DisableLinkButton(LinkButton linkButton)
    {
        linkButton.Attributes.CssStyle[HtmlTextWriterStyle.Color] = "gray";
        linkButton.Attributes.CssStyle[HtmlTextWriterStyle.Cursor] = "default";
        if (linkButton.Enabled != false)
        {
            linkButton.Enabled = false;
        }
        if (linkButton.OnClientClick != null)
        {
            linkButton.OnClientClick = null;
        }
    }
}