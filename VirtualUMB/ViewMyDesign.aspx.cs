using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public partial class ViewMyDesign : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["umassid"] != null)
        {
            int userid = Convert.ToInt32(Session["umassid"].ToString());

            StringBuilder sb = new StringBuilder();
            MyAllModels user = ConnectionClass.getUserById(userid);

            sb.Append(string.Format(@"<table class='MyDesignHeadingCss'>
                                         <tr>
                                            <td>
                                                <th rowspan='6' width='150px'><img runat='server' src='{1}' /></th>
                                            </td>
                                            
                                            <td><h2>{0}'s designs</h2></td>
                                        </tr>
                                      </table>", user.userName, user.userImage));
            UserLabel.Text = sb.ToString();
            gridViewforAllModels();
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    
    public void gridViewforAllModels()
    {
        int userid = Convert.ToInt32(Session["umassid"].ToString());
        ArrayList modelList = ConnectionClass.getAllModels(userid);
        DataTable dt = new DataTable();

        dt.Columns.AddRange(new DataColumn[7] {     new DataColumn("ModelId", typeof(int)),
                                                    new DataColumn("ModelImage", typeof(string)),
                                                    new DataColumn("ModelName", typeof(string)),
                                                    new DataColumn("ModelCategory", typeof(string)),
                                                    new DataColumn("ModelDescription", typeof(string)),
                                                    new DataColumn("OwnerName", typeof(string)),
                                                    new DataColumn("3DModelImage",typeof(string))           });
        
            foreach (MyAllModels mymodel in modelList)
            {
                dt.Rows.Add(mymodel.modelId, mymodel.imagePath, mymodel.modelName, mymodel.modelCategory, mymodel.modelDescription, mymodel.userName, mymodel.modelPath);
                if (dt.Rows.Count >= 1)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
    }
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //Set the edit index.
        GridView1.EditIndex = e.NewEditIndex;
        //Bind data to the GridView control.
        gridViewforAllModels();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Reset the edit index.
        GridView1.EditIndex = -1;
        //Bind data to the GridView control.
        gridViewforAllModels();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Retrieve the table from the session object.

        GridViewRow row = GridView1.Rows[e.RowIndex];
                       
        var varmodelid = GridView1.DataKeys[row.RowIndex].Value;
        int modelid = Int32.Parse(varmodelid.ToString());
               
        string modelname = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("ModelName1")).Text;
        string modelcategory = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("ModelCategory1")).Text;
        string modeldescription = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("ModelDescription1")).Text;

        ConnectionClass.UpdateSelectedmodel(modelname, modelcategory, modeldescription, modelid);

        GridView1.DataBind();
                
        //Reset the edit index.
        GridView1.EditIndex = -1;

        //Bind data to the GridView control.
        gridViewforAllModels();
    }
            
    protected void DeleteModel(object sender, GridViewDeleteEventArgs e)
    {
        var varmodelid = GridView1.DataKeys[e.RowIndex].Value;
        int modelid = Int32.Parse(varmodelid.ToString());
        ConnectionClass.deleteSelectedmodel(modelid);

        GridView1.DataBind();
    
        MessageLbl.Text = "Selected Model deleted successfully.";
        MessageLbl.ForeColor = System.Drawing.Color.Red;
        Response.Redirect("ViewMyDesign.aspx"); 
        //   this.gridViewforAllModels();
    }

    public void AddModel(object sender, EventArgs e)
    {  Response.Redirect("UploadModel.aspx");    }

    
}