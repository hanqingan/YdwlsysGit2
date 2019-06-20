package com.ydwlsys.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.entity.File;
import com.ydwlsys.entity.TeaDy;

public class JdbcChar {
	String url="jdbc:mysql://152.136.111.100:3306/test";
	String userName="root";
	String passWord="root123";
	
	public Connection getConn(String url,String userName,String passWord){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, userName, passWord);
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return conn;
	}
	
	public List<File> getAllFile(){
	
	JdbcChar char1=new JdbcChar();
	Connection conn=char1.getConn(url, userName, passWord);
	String sql="select * from DownLoad";
	
	Statement statement;
	ResultSet rs = null;
	
	List<File> list=new ArrayList<File>();
	
	try {
		statement=conn.createStatement();
		rs=statement.executeQuery(sql);
		while(rs.next()){
			File file=new File();
			file.setFileId(rs.getInt(1));
			file.setFileAddress(rs.getString(2));
			file.setFileName(rs.getString(3));
			file.setFileTime(rs.getDate(4));
			file.setFileOwner(rs.getString(5));
			list.add(file);
		}
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
	return list;	
	}
	
	public List<TeaDy> getAllTeaDy(){
		
		JdbcChar char1=new JdbcChar();
		Connection conn=char1.getConn(url, userName, passWord);
		String sql="select * from teaDy";
		
		Statement statement;
		ResultSet rs = null;
		
		List<TeaDy> list=new ArrayList<TeaDy>();
		
		try {
			statement=conn.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()){
				TeaDy teaDy=new TeaDy();
				teaDy.setTeaDyName(rs.getString(1));
				teaDy.setTeaDyText(rs.getString(2));
				teaDy.setTeaDyByNam(rs.getString(3));
				teaDy.setTeaDyByTime(rs.getDate(4));	
				list.add(teaDy);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return list;}
	
	public List<TeaDy> getTeaDyByName(String name){
		JdbcChar char1=new JdbcChar();
		Connection conn=char1.getConn(url, userName, passWord);
		String sql="select * from teaDy where teaDyName="+"'"+name+"'";
		
		Statement statement;
		ResultSet rs = null;
		TeaDy teaDy=new TeaDy();
		List<TeaDy> list=new ArrayList<TeaDy>();
		try {
			statement=conn.createStatement();
			rs=statement.executeQuery(sql);
			while(rs.next()){
				
				teaDy.setTeaDyName(rs.getString(1));
				teaDy.setTeaDyText(rs.getString(2));
				teaDy.setTeaDyByNam(rs.getString(3));
				teaDy.setTeaDyByTime(rs.getDate(4));	
				list.add(teaDy);
				
			}
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return list;
	}
	
	public List<File> getFileByName(String name){
		
		JdbcChar char1=new JdbcChar();
		Connection conn=char1.getConn(url, userName, passWord);
		String sql="select * from DownLoad where fileName="+"'"+name+"'";
		
		Statement statement;
		ResultSet rs = null;
		File file=new File();
		List<File> list=new ArrayList<File>();
		try {
			statement=conn.createStatement();
			rs=statement.executeQuery(sql);
			
			while(rs.next()){
				file.setFileId(rs.getInt(1));
				file.setFileAddress(rs.getString(2));
				file.setFileName(rs.getString(3));
				file.setFileTime(rs.getDate(4));
				file.setFileOwner(rs.getString(5));
				list.add(file);
				
			}
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			System.out.println(sql);
		}
		return list;
	}
	
	public static void main(String[] args){
//		JdbcChar c=new JdbcChar();
//		List<File> list=new ArrayList<File>();
//		list=c.getAllFile();
//		int id=0;String address=null;String name=null;Date date=null;String owner=null;
//		for(int i=0;i<list.size();i++){
//			id=list.get(i).getFileId();
//			address=list.get(i).getFileAddress();
//			name=list.get(i).getFileName();
//			date=list.get(i).getFileTime();
//			owner=list.get(i).getFileOwner();
//		};
//		System.out.println(id+address+name+date+owner);
//		System.out.println(list.size());
	JdbcChar c=new JdbcChar();
	List<TeaDy> list=new ArrayList<TeaDy>();
	list=c.getTeaDyByName("aaaaaaaa");
	String a=null;
	for(int i=0;i<list.size();i++){
		a=list.get(i).getTeaDyText();
	}
	System.out.println(a);
	}
}
