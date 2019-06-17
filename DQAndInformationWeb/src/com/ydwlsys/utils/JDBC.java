package com.ydwlsys.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import Servlet.userServlet1;
//import entity.User;

public class JDBC {
	String url="jdbc:mySql://localhost:3306/dqandinformationdb";
	String user="root";
	String password="root123";
	Connection conn=null;
	public Connection getConn(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//Çý¶¯Æ÷±ØÐëÒªÐ´
			conn=DriverManager.getConnection(url, user, password);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	
	
}
