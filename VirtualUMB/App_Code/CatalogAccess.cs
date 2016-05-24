using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;

public struct VendorDetails
{
    public string vendorName;
    public string vendorEmail;
    public string vendorShortDesc;
    public string vendorPhone;
    public string vendorAddress;
    public int vendorRating;
    public int vendorCountryId;
}

public static class CatalogAccess
{
	static CatalogAccess()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static int GetOwnerId(int modelid, out int umassid)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "getOwnerId";
        comm.CommandType = CommandType.StoredProcedure;
        DbParameter param4 = comm.CreateParameter();
        param4.ParameterName = "@modelid";
        param4.Value = modelid;
        param4.DbType = DbType.Int32;
        param4.Size = 10;
        comm.Parameters.Add(param4);
        DbParameter param1 = comm.CreateParameter();
        param1.ParameterName = "@umassid";
        param1.Direction = ParameterDirection.Output;
        param1.DbType = DbType.Int32;
        param1.Size = 10;
        comm.Parameters.Add(param1);
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        String custidstr = comm.Parameters["@umassid"].Value.ToString();
        int uid = 0;
        int result = 0;
        if (!Int32.TryParse(custidstr, out uid))
        {
            uid=0;
        }
        umassid = uid;
        return umassid;
    }

    public static int hasLiked(int modelid, int umassid, out int flag)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "hasLiked";
        comm.CommandType = CommandType.StoredProcedure;
        DbParameter param4 = comm.CreateParameter();
        param4.ParameterName = "@modelid";
        param4.Value = modelid;
        param4.DbType = DbType.Int32;
        param4.Size = 10;
        comm.Parameters.Add(param4);
        DbParameter param3 = comm.CreateParameter();
        param3.ParameterName = "@umassid";
        param3.Value = umassid;
        param3.DbType = DbType.Int32;
        param3.Size = 10;
        comm.Parameters.Add(param3);
        DbParameter param1 = comm.CreateParameter();
        param1.ParameterName = "@flag";
        param1.Direction = ParameterDirection.Output;
        param1.DbType = DbType.Int32;
        param1.Size = 10;
        comm.Parameters.Add(param1);
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        String flagstring = comm.Parameters["@flag"].Value.ToString();
        int flagint = Int32.Parse(flagstring);
        flag = flagint;
        return flag;
    }

    public static DataTable GetModelInfo(int modelid)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "getModelInfo";
        comm.CommandType = CommandType.StoredProcedure;
        DbParameter param4 = comm.CreateParameter();
        param4.ParameterName = "@modelid";
        param4.Value = modelid;
        param4.DbType = DbType.Int32;
        param4.Size = 10;
        comm.Parameters.Add(param4);
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        return table;
    }

    public static DataTable GetOwnerInfo(int umassid)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "GetOwnerInfo";
        comm.CommandType = CommandType.StoredProcedure;
        DbParameter param4 = comm.CreateParameter();
        param4.ParameterName = "@umassid";
        param4.Value = umassid;
        param4.DbType = DbType.Int32;
        param4.Size = 10;
        comm.Parameters.Add(param4);
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        return table;
    }

    public static void updateLikes(int modelid)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "updateNumOfLikes";
        comm.CommandType = CommandType.StoredProcedure;
        // create a new parameter
        DbParameter param1 = comm.CreateParameter();
        param1.ParameterName = "@modelid";
        param1.Value = modelid;
        param1.DbType = DbType.Int32;
        comm.Parameters.Add(param1);
        // execute the stored procedure
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    }

    public static void insertLikes(int modelid, int umassid)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "insertLikes";
        comm.CommandType = CommandType.StoredProcedure;
        // create a new parameter
        DbParameter param1 = comm.CreateParameter();
        param1.ParameterName = "@modelid";
        param1.Value = modelid;
        param1.DbType = DbType.Int32;
        comm.Parameters.Add(param1);
        DbParameter param2 = comm.CreateParameter();
        param2.ParameterName = "@umassid";
        param2.Value = umassid;
        param2.DbType = DbType.Int32;
        comm.Parameters.Add(param2);
        // execute the stored procedure
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    }

    public static void updateViews(int modelid)
    {
        // get a configured DbCommand object
        DbCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "updateNumOfViews";
        comm.CommandType = CommandType.StoredProcedure;
        // create a new parameter
        DbParameter param1 = comm.CreateParameter();
        param1.ParameterName = "@modelid";
        param1.Value = modelid;
        param1.DbType = DbType.Int32;
        comm.Parameters.Add(param1);
        // execute the stored procedure
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    }
  

     public static DataTable GetUserInfo(int Umass_ID)
    {
        DbCommand comm = GenericDataAccess.CreateCommand();
        comm.CommandText = "getUserInfo";
        comm.CommandType = CommandType.StoredProcedure;
        DbParameter param4 = comm.CreateParameter();
        param4.ParameterName = "@Umass_ID";
        param4.Value = Umass_ID;
        param4.DbType = DbType.Int32;
        param4.Size = 4;
        comm.Parameters.Add(param4);
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        return table;
    }

     public static void updateUserInfo(int Umassid, string fname, string lname, string imagepath, string desc, string major, string dept, string collage)
     {
         // get a configured DbCommand object
         DbCommand comm = GenericDataAccess.CreateCommand();
         // set the stored procedure name
         comm.CommandText = "updateUserInfo";
         comm.CommandType = CommandType.StoredProcedure;
         // create a new parameter
         DbParameter param1 = comm.CreateParameter();
         param1.ParameterName = "@Umass_ID";
         param1.Value = Umassid;
         param1.DbType = DbType.Int32;
         param1.Size = 4;
         comm.Parameters.Add(param1);


         DbParameter param2 = comm.CreateParameter();
         param2.ParameterName = "@First_Name";
         param2.Value = fname;
         param2.DbType = DbType.String;
         comm.Parameters.Add(param2);

         DbParameter param3 = comm.CreateParameter();
         param3.ParameterName = "@last_Name";
         param3.Value = lname;
         param3.DbType = DbType.String;
         comm.Parameters.Add(param3);
         DbParameter param4 = comm.CreateParameter();
         param4.ParameterName = "@User_Image_path";
         param4.Value = imagepath;
         param4.DbType = DbType.String;
         comm.Parameters.Add(param4);
         DbParameter param5 = comm.CreateParameter();
         param5.ParameterName = "Description";
         param5.Value = desc;
         param5.DbType = DbType.String;
         comm.Parameters.Add(param5);
         DbParameter param6 = comm.CreateParameter();
         param6.ParameterName = "@Department";
         param6.Value = dept;
         param6.DbType = DbType.String;
         comm.Parameters.Add(param6);
         DbParameter param7 = comm.CreateParameter();
         param7.ParameterName = "@Major";
         param7.Value = major;
         param7.DbType = DbType.String;
         comm.Parameters.Add(param7);

         DbParameter param8 = comm.CreateParameter();
         param8.ParameterName = "@College";
         param8.Value = collage;
         param8.DbType = DbType.String;
         comm.Parameters.Add(param8);

         // execute the stored procedure
         DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
     }
}