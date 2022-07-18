package com.helper;

import java.sql.Connection;
import java.sql.DriverManager;

public class GetConnection {
	
	private Connection conn =null;
	
	public Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mobileapplicationdb","root","Hinayadav18@");
			
		}
		catch(Exception e)
		{
			System.out.println("Connection not established!!"+e);
		}
		finally
		{
			return conn;
		}
	}
	

}
