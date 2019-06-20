package com.ydwlsys.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ydwlsys.entity.Leadership;

public class LeadershipJDBC {
	String url="jdbc:mysql://152.136.111.100:3306/DQAndInformationdb";
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
	
	public List<Leadership> getAllFile(){
	
	LeadershipJDBC leader=new LeadershipJDBC();
	Connection conn=leader.getConn(url, userName, passWord);
	String sql="select * from tbleadership";
	
	Statement statement;
	ResultSet rs = null;
	
	List<Leadership> list=new ArrayList<Leadership>();
	
	try {
		statement=conn.createStatement();
		rs=statement.executeQuery(sql);
		while(rs.next()){
			Leadership leader1=new Leadership();
			leader1.setName(rs.getString(1));
			leader1.setJob(rs.getString(2));
			leader1.setResume(rs.getString(3));
			leader1.setEducation(rs.getString(4));
			leader1.setHonors(rs.getString(5));
			leader1.setPosition(rs.getString(6));
			list.add(leader1);
		}
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
	return list;	
	}
	
	public Leadership getFileByName(String name){
		
		LeadershipJDBC char1=new LeadershipJDBC();
		Connection conn=char1.getConn(url, userName, passWord);
		String sql="select * from tbleadership where name="+"'"+name+"'";
		
		Statement statement;
		ResultSet rs = null;
		Leadership leader=new Leadership();
		try {
			statement=conn.createStatement();
			rs=statement.executeQuery(sql);
			
			while(rs.next()){
				leader.setName(rs.getString(1));
				leader.setJob(rs.getString(2));
				leader.setResume(rs.getString(3));
				leader.setEducation(rs.getString(4));
				leader.setHonors(rs.getString(5));
				leader.setPosition(rs.getString(6));
			}
			
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			System.out.println(sql);
		}
		return leader;
		
		
	}
}