using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

public class ApplicationConfiguration
{
	public ApplicationConfiguration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}

public static class virtualUMBConfiguration
{
    // Caches the connection string  
    private static string dbConnectionString;  
    // Caches the data provider name   
    private static string dbProviderName;
    // Caches the connection string  private static string dbConnectionString;  
     
    static virtualUMBConfiguration()
    {
        dbConnectionString = ConfigurationManager.ConnectionStrings["virtualUMBConnection"].ConnectionString;
        dbProviderName = ConfigurationManager.ConnectionStrings["virtualUMBConnection"].ProviderName;
    }

    public static string DbConnectionString
    {
        get { return dbConnectionString; }
    }

    // Returns the data provider name  
    public static string DbProviderName
    {
        get { return dbProviderName; }
    }
}