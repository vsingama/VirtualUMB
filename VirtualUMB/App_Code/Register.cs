using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class Register
{
    public int Id { get; set; }
    public string FName { get; set; }
    public string LName { get; set; }
    public string Password { get; set; }
    public string Email { get; set; }
    public string Gender { get; set; }
    public string UserImage { get; set; }
    public string Major { get; set; }
    public string Department { get; set; }
    public string College { get; set; }
    public string Description { get; set; }
    public string Type { get; set; }

    public Register(int id, string fname, string lname, string password, string email, string gender, string userImage, string department, string major, string college, string description, string type)
    {
        Id = id;
        FName = fname;
        LName = lname;
        Password = password;
        Email = email;
        Gender = gender;
        UserImage = userImage;
        Major = major;
        Department = department;
        College = college;
        Description = description;
        Type = type;
    }

    public Register(string fname, string lname, string password, string email, string gender, string userImage, string department, string major, string college, string description, string type)
    {
        FName = fname;
        LName = lname;
        Password = password;
        Email = email;
        Gender = gender;
        UserImage = userImage;
        Major = major;
        Department = department;
        College = college;
        Description = description;
        Type = type;
    }
    
     public Register(string email,string password)
    {
        Email = email;   
        Password = password;
       
    }
}

