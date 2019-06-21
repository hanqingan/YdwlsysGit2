package com.ydwlsys.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtils {

	private static String driverName = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/DQAndInformationdb";
	private static String username = "root";
	private static String password = "root123";

	static {
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("«˝∂Øº”‘ÿ ß∞‹");

		}
	}

	public static Connection getConnection() throws Exception {

		Connection conn = DriverManager.getConnection(url, username, password);
		return conn;

	}

	public static void closeAll(Connection conn, Statement st, ResultSet rs) {

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
