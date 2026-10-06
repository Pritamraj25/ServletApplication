package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class jdbcConnection {
	
	
	
	private static final String url="jdbc:mysql://localhost:3306/ServletApp2";

	private static final String username="root";
	
	private static final String password="pass@123";
	
	public static Connection getConnection()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			 con=DriverManager.getConnection(url, username, password);
		} catch (Exception e)
		{
			
			e.printStackTrace();
		}
		return con;
	}
}
