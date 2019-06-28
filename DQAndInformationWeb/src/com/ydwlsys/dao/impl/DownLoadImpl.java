package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.dao.IDownLoadDao;
import com.ydwlsys.entity.File;
import com.ydwlsys.entity.TeaDy;
import com.ydwlsys.utils.JDBCUtils;

public class DownLoadImpl implements IDownLoadDao {

	private Connection conn;

	public List<File> getAllFile(){
		
		JDBCUtils char1=new JDBCUtils();
	
		try {
			conn = char1.getConnection();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
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
			
			JDBCUtils char1=new JDBCUtils();
		
			try {
				conn = char1.getConnection();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
			JDBCUtils char1=new JDBCUtils();
		
			try {
				conn = char1.getConnection();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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
			
			JDBCUtils char1=new JDBCUtils();
		
			try {
				conn = char1.getConnection();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
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

		public List<File> getFileByName() {
			// TODO Auto-generated method stub
			return null;
		}

	

}
