package com.DataBaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	 static Connection con=null;
	public static Connection con()
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			 con= DriverManager.getConnection("jdbc:mysql://localhost:3306/workflowscheduling","root","root");
				System.out.println("DataBase connected");
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	
}
