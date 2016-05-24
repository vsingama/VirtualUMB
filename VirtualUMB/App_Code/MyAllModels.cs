using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MyAllModels
/// </summary>
public class MyAllModels
{
    public int modelId { get; set; }
    public String userName { get; set; }
    public String imagePath { get; set; }
    public String modelPath { get; set; }
    public String modelName { get; set; }
    public String modelCategory { get; set; }
    public String modelDescription { get; set; }
    public String userImage { get; set; }
    
    public MyAllModels(int modelid, String username, String modelname,String modelcategory,String modeldescription, String imagepath, String modelpath)
    {
        //
        // TODO: Add constructor logic here
        //        
        modelId = modelid;
        userName = username;
        modelName = modelname;
        modelCategory = modelcategory;
        modelDescription = modeldescription;
        imagePath = imagepath;
        modelPath = modelpath;
        
    }

    public MyAllModels(String username, String userimage)
    {
        //
        // TODO: Add constructor logic here
        //        
        userName = username;
        userImage = userimage;

    }


}