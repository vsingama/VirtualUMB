using System.Collections;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Data;
using System.Security.Cryptography;

public static class ConnectionClass
{
    private static SqlConnection conn;
    private static SqlCommand command;

    static ConnectionClass()
    {
        string connectionString =ConfigurationManager.ConnectionStrings["virtualUMBConnection"].ToString();
        conn = new SqlConnection(connectionString);
        command = new SqlCommand("", conn);
    }


    public static Register LoginUser(string email, string password)
    {
        //Check if user exists
        string query = string.Format("SELECT COUNT(*) FROM Virtual_UMB.dbo.Virtual_Registration WHERE email_id = '{0}'", email);
        command.CommandText = query;

        try
        {
            conn.Open();
            int amountOfUsers = (int)command.ExecuteScalar();

            if (amountOfUsers == 1)
            {
                //User exists, check if the passwords match
                query = string.Format("SELECT password FROM Virtual_UMB.dbo.Virtual_Registration WHERE email_id = '{0}'", email);
                command.CommandText = query;
                string dbPassword = command.ExecuteScalar().ToString();

                if (dbPassword == password)
                {
                    //Passwords match. Login and password data are known to us.
                    //Retrieve further user data from the database
                    query = string.Format("SELECT [Umass_ID],[First_Name],[last_Name],[Password],[Gender] ,[User_Image_path],[Description] ,[Major] ,[Department],[College],[User_Type] FROM Virtual_UMB.dbo.Virtual_Registration WHERE email_id = '{0}'", email);
                    command.CommandText = query;

                    SqlDataReader reader = command.ExecuteReader();
                    Register user = null;

                    while (reader.Read())
                    {
                        int umassid = reader.GetInt32(0);
                         string fname = reader.GetString(1);
                         string lname = reader.GetString(2);
                         string gender = reader.GetString(4);
                         string userImage = reader.GetString(5);
                         string description = reader.GetString(6);
                         string department = reader.GetString(8);
                         string major = reader.GetString(7);
                         string college = reader.GetString(9);
                        string type = reader.GetString(10);

                        user = new Register(umassid,fname, lname, password, email, gender, userImage, description, department, major, college, type);
                    }
                    return user;
                }
                else
                {
                    //Passwords do not match
                    return null;
                }
            }
            else
            {
                //User does not exist
                return null;
            }
        }
        finally
        {

            conn.Close();
        }
    }

    public static string RegisterUser(Register user)
    {
        //Check if user exists
        string query = string.Format("SELECT COUNT(*) FROM [Virtual_UMB].[dbo].[Virtual_Registration] WHERE Email_ID = '{0}'", user.Email);
        command.CommandText = query;

        try
        {
            conn.Open();
            int amountOfUsers = (int)command.ExecuteScalar();

            if (amountOfUsers < 1)
            {
                //User does not exist, create a new user
                query = string.Format("INSERT INTO Virtual_UMB.dbo.Virtual_Registration VALUES ('{0}', '{1}', '{2}', '{3}' ,'{4}', '{5}', '{6}' ,'{7}', '{8}', '{9}', '{10}' )",
                   user.Email, user.FName, user.LName, user.Password, user.Gender, user.UserImage, user.Description, user.Department, user.Major, user.College, user.Type);
                command.CommandText = query;
                command.ExecuteNonQuery();
                return "User Account registered Successfully...!!";
            }
            else
            {
                //User exists
                return "A user Account already exists with the given Email...!! ";
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
           {
               string msg = ex.ToString();
                return msg;
            }

        finally
        {
            conn.Close();
        }
    }

    public static string updatePassword(Register reset)
    {
        //Check if user exists
        string query = string.Format("SELECT COUNT(*) FROM Virtual_UMB.dbo.Virtual_Registration WHERE Email_ID = '{0}'", reset.Email);
        command.CommandText = query;

        try
        {
            conn.Open();
            int amountOfUsers = (int)command.ExecuteScalar();

          //  return amountOfUsers.ToString();

            if (amountOfUsers == 1)
            {
                //User does not exist, create a new user
                query = string.Format("update  Virtual_UMB.dbo.Virtual_Registration set Password = ('{0}') where Email_ID = ('{1}')", reset.Password, reset.Email);
                command.CommandText = query;
                command.ExecuteNonQuery();
                return "Your Password is reset Successfully...!!";
            }
            else
            {
                //User exists
                return "No user Records were found with the given Email ID !!  Try Again!";
            }
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Connection Problem !! Retry Later!";
            return msg;
        }

        finally
        {
            conn.Close();
        }
    }



    public static ArrayList GetProductByType(string productType)
    {
        ArrayList list = new ArrayList();
        string query = string.Format("SELECT * FROM Virtual_UMB.dbo.Virtual_Upload WHERE Catageory LIKE '{0}'", productType);

        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                int uid = reader.GetInt32(1);
                string name = reader.GetString(2);
                string catageory = reader.GetString(3);
                string imagepath = reader.GetString(4);
                string modelpath = reader.GetString(5);                
                string description = reader.GetString(6);
                int likes = reader.GetInt32(7);
                int views = reader.GetInt32(8);
                //string date = reader.GetSqlDateTime(9).ToString();

                Product product = new Product(id, uid, name, catageory, imagepath, modelpath, description, likes, views);
 
                list.Add(product);
            } 
        }

        finally
        {
            conn.Close();
        }

        return list;
    }



    public static string uploadModel(Upload up)
    {
        //Check if user exists
        string query = command.CommandText;//string.Format("SELECT COUNT(*) FROM VirtualUMB.dbo.users WHERE email = '{0}'", user.Email);
        try
        {
            conn.Open();

            query = string.Format("INSERT INTO [Virtual_UMB].[dbo].[Virtual_Upload] VALUES ('{0}', '{1}', '{2}' , '{3}', '{4}', '{5}', '{6}', '{7}','{8}')",
              up.Umass_ID, up.Name, up.Catageory, up.ImagePath, up.ModelPath, up.Model_Description, up.Likes_Count, up.Views_Count, System.DateTime.Now);
            command.CommandText = query;
            command.ExecuteNonQuery();

            return "Your 3D Model Uploaded Successfully..!!";

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Error While Uploading the 3D Model";
            return msg;
        }

        finally
        {
            conn.Close();
        }
    }


    public static ArrayList getAllModels(int userid)
    {

        ArrayList list = new ArrayList();
        string query = string.Format("SELECT R.First_Name,U.Name,U.Catageory,U.Model_Description,U.ImagePath,U.Model_ID,U.ModelPath FROM Virtual_UMB.dbo.Virtual_Registration R,Virtual_UMB.dbo.Virtual_Upload U WHERE R.Umass_ID = '{0}' and U.Umass_ID=R.Umass_ID", userid);
        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                int mymodelid = reader.GetInt32(5);
                string Username = reader.GetString(0);
                string mymodelname = reader.GetString(1);
                string mymodelcategory = reader.GetString(2);
                string mymodeldescription = reader.GetString(3);
                string myimagepath = reader.GetString(4);
                string mymodelpath = reader.GetString(6);

                MyAllModels mam = new MyAllModels(mymodelid, Username, mymodelname, mymodelcategory, mymodeldescription, myimagepath, mymodelpath);

                list.Add(mam);
            }
        }

        finally
        {
            conn.Close();
        }

        return list;

    }




    public static MyAllModels getUserById(int userid)
    {

        //ArrayList list = new ArrayList();
        string query = string.Format("SELECT DISTINCT R.User_Image_path,R.First_Name FROM Virtual_UMB.dbo.Virtual_Registration R WHERE R.Umass_ID = '{0}'", userid);
        MyAllModels mam = null;

        try
        {
            conn.Open();
            command.CommandText = query;
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {

                string Username = reader.GetString(1);
                string UserImage = reader.GetString(0);

                mam = new MyAllModels(Username, UserImage);

                //list.Add(mam);
            }
        }

        finally
        {
            conn.Close();
        }

        return mam;

    }


    public static void deleteSelectedmodel(int modelid)
    {
        string query = string.Format("DELETE FROM Virtual_UMB.dbo.Virtual_Upload WHERE Model_ID LIKE '{0}'", modelid);

        try
        {
            conn.Open();
            command.CommandText = query;
            command.ExecuteNonQuery();
        }

        finally
        {
            conn.Close();
        }

    }


    public static void UpdateSelectedmodel(string modelname, string modelcategory, string modeldescription, int modelid)
    {

        string query = string.Format("UPDATE Virtual_UMB.dbo.Virtual_Upload SET Name = ('{0}'), Catageory = ('{1}'), Model_Description = ('{2}') WHERE Model_ID = ('{3}')", modelname, modelcategory, modeldescription, modelid);

        try
        {
            conn.Open();
            command.CommandText = query;
            command.ExecuteNonQuery();
        }

        finally
        {
            conn.Close();
        }

    }
    


    public static string Email { get; set; }



}