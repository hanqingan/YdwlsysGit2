package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.dao.ITeaDyDao;
import com.ydwlsys.entity.TeaDy;
import com.ydwlsys.utils.JDBCUtils;


public class TeaDyImpl implements ITeaDyDao {

	private Connection conn;

	@Override
	public List<TeaDy> getAllTeaDy() {
		// TODO �Զ����ɵķ������
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
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<TeaDy> getFileByName(String name) {
		// TODO �Զ����ɵķ������
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
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		return list;
	}

}
