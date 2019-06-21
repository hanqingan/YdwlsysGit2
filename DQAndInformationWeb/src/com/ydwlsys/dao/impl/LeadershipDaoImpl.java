package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.utils.JDBCUtils;

public class LeadershipDaoImpl implements LeadershipDao {

	@Override
	public List<Leadership> getAllFile(){
		
		JDBCUtils leader=new JDBCUtils();
		Connection conn;
		List<Leadership> list=null;
		try {
			conn = leader.getConnection();
			String sql="select * from tbleadership";
			
			Statement statement;
			ResultSet rs = null;
			
			list=new ArrayList<Leadership>();
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
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	
		return list;	
}
}
