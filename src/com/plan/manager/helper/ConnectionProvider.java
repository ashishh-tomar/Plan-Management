package com.plan.manager.helper;
import java.sql.*;

// just create a table in mysql by following cmd "create table planManager(name varchar(25),email varchar(45),mobile varchar(12),plan varchar(15));"


public class ConnectionProvider {
	private static Connection con;
	public static Connection getConnection()
	{
		String url="jdbc:mysql://localhost:3307/demo";
		String user="root";
		String pass="05111998";
		
		try
		{
			if(con==null)
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				con=DriverManager.getConnection(url,user,pass);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
		
	}

}
