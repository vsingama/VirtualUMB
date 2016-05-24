using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Upload
{
    public int Model_ID { get; set; }
    public int Umass_ID { get; set; }
    public string Name { get; set; }
    public string Catageory { get; set; }
    public string ImagePath { get; set; }
    public string ModelPath { get; set; }
    public string Model_Description { get; set; }

    public int Likes_Count { get; set; }
    
    public int Views_Count { get; set; }


    public DateTime Creation_Date { get; set; }


    public Upload(int Model_ID, int Umass_ID, string Name, string Catageory, string ImagePath, string ModelPath, string Model_Description, int Likes_Count, int Views_Count, DateTime Creation_Date)
    {


        this.Model_ID = Model_ID;
        this.Umass_ID = Umass_ID;
        this.Name = Name;
        this.Catageory = Catageory;
        this.ImagePath = ImagePath;
        this.ModelPath = ModelPath;
        this.Model_Description = Model_Description;
        this.Likes_Count = Likes_Count;
        this.Views_Count = Views_Count;
        this.Creation_Date = Creation_Date;



    }




    public Upload(int Umass_ID,string Name, string Catageory, string ImagePath, string ModelPath, string Model_Description, int Likes_Count, int Views_Count, DateTime Creation_Date)
    {


       
        this.Name = Name;
        this.Umass_ID = Umass_ID;
        this.Catageory = Catageory;
        this.ImagePath = ImagePath;
        this.ModelPath = ModelPath;
        this.Model_Description = Model_Description;
        this.Likes_Count = Likes_Count;
        this.Views_Count = Views_Count;
        this.Creation_Date = Creation_Date;



    }

}
