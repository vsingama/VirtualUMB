using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text;
using System.Data;

public partial class BrowseDesigns : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

            ArrayList productList = ConnectionClass.GetProductByType(!IsPostBack ? "%" : DropDownList1.SelectedValue);

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[6] {new DataColumn("ModelId", typeof(int)),
                            new DataColumn("Image", typeof(string)),
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Likes",typeof(string)),
                            new DataColumn("Views",typeof(string)),
                            new DataColumn("Description",typeof(string))
                            });
            foreach (Product product in productList)
            {
                dt.Rows.Add(product.Model_ID, product.ImagePath, product.Name, product.Likes_Count, product.Views_Count, product.Model_Description);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void grdData_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}