package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import com.ydwlsys.utils.JDBCUtils;
import com.ydwlsys.dao.ITeacherDao;
import com.ydwlsys.entity.Teacher;
import com.ydwlsys.utils.DataSourceUtils;


public class TeacherDaoImpl implements ITeacherDao {

	
	@Override
	public Teacher select() {
		JDBCUtils jdbc=new JDBCUtils();
		Connection conn = null;
		try {
			conn = jdbc.getConnection();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String sql="select * from tbteacher ";
		Teacher teacher=new Teacher();
		try {
			
			PreparedStatement ps=conn.prepareStatement(sql);	
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			
			teacher.setName(rs.getString(1));
			teacher.setId(rs.getString(2));
			teacher.setZy(rs.getString(3));
			teacher.setPrat(rs.getString(4));
			teacher.setPost(rs.getString(5));
			teacher.setScore(rs.getString(6));
			teacher.setTr(rs.getString(7));
			teacher.setImage(rs.getString(8));
			teacher.setMing(rs.getString(9));
			System.out.println(teacher.getPrat());
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return teacher;
	
	}
	
	@SuppressWarnings("static-access")
	@Override
	public Teacher queryById(String Id){

		JDBCUtils jdbcUtils = new JDBCUtils();
		Connection conn = null;
		try {
			conn = jdbcUtils.getConnection();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql = "select * from TBTeacher where Id=" + Id;

		Statement statement;
		ResultSet rs = null;

		Teacher teacher = new Teacher();

		try {
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				teacher.setId(rs.getString(1));
				teacher.setName(rs.getString(2));
				teacher.setZy(rs.getString(3));
				teacher.setPrat(rs.getString(4));
				teacher.setPost(rs.getString(5));
				teacher.setScore(rs.getString(6));
				teacher.setScre(rs.getString(7));
				teacher.setTr(rs.getString(8));
				teacher.setImage(rs.getString(9));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return teacher;

	}

	@SuppressWarnings("static-access")
	@Override
	public List<Teacher> queryALL(){

		JDBCUtils jdbcUtils = new JDBCUtils();
		Connection conn = null;
		try {
			conn = jdbcUtils.getConnection();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String sql = "select * from TBTeacher";

		Statement statement;
		ResultSet rs = null;

		List<Teacher> list = new ArrayList<Teacher>();
		try {
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Teacher teacher = new Teacher();
				teacher.setId(rs.getString(1));
				teacher.setName(rs.getString(2));
				teacher.setZy(rs.getString(3));
				teacher.setPrat(rs.getString(4));
				teacher.setPost(rs.getString(5));
				teacher.setScore(rs.getString(6));
				teacher.setScre(rs.getString(7));
				teacher.setTr(rs.getString(8));
				teacher.setImage(rs.getString(9));
				list.add(teacher);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(conn!=null){
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		System.out.println(list.size());
		return list;

	}
	
	public List<Teacher> Cx(String cid) throws SQLException {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from tbteacher where id= ?";
	    List<Teacher> list=qr.query(sql, new BeanListHandler<Teacher>(Teacher.class),cid);
	    for (Teacher teacher : list) {
			System.out.println(teacher.toString());
		}
	    return list;
	}
	@Override
	public Teacher queryById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teacher select(String post) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teacher findById(int id) {
		
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from tbteacher where id= ?";
		Teacher teacher=null;
		 try {
			 teacher=(Teacher) qr.query(sql, new BeanHandler<Teacher>(Teacher.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return teacher;
	}
}
