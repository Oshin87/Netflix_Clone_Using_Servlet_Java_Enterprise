package com.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

	public static Connection getConnection() {
		String url = "jdbc:mysql://localhost:3306/netflixdb?createDatabaseIfNotExist=true";
		String user = "root";
		String pass = "2003";
		Connection cn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection(url,user,pass);
			System.out.println("Connection Created");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cn;
	}
}
