package com.ydwlsys.utils;

import java.sql.Connection;
import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DataSourceUtils {
 private static	ComboPooledDataSource ds= new ComboPooledDataSource();
 public static DataSource getDataSource() {
	 return ds;
	
}
 public  static Connection getConnection() throws Exception {
	return ds.getConnection();
}
	
}
