package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.dao.InfoDao;
import com.ydwlsys.entity.Info;
import com.ydwlsys.entity.Number;
import com.ydwlsys.utils.JDBC;

public class InfoDaoimpl implements InfoDao {

	@Override
	public List<Info> selectpart(String part) {
		JDBC jdbc=new JDBC();
		List<Info> list=new ArrayList<Info>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbdj where part=?;";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, part);	
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Info i=new Info();
			i.setTitle(rs.getString(1));
			i.setTm(rs.getString(2));
			i.setAuthor(rs.getString(3));
			i.setFrom(rs.getString(4));
			i.setArticle(rs.getNString(5));
			i.setPart(rs.getString(6));	
			
			list.add(i);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (Info info : list) {
			System.out.println(info.toString());
		}

		return list;
		
		
	}

	@Override
	public Info select(String title) {
		JDBC jdbc=new JDBC();
		Connection conn=jdbc.getConn();
		String sql="select * from tbdj where title=?";
		Info i=new Info();
		try {
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, title);	
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
		i.setTitle(rs.getString(1));
		i.setTm(rs.getString(2));
		i.setAuthor(rs.getString(3));
		i.setFrom(rs.getString(4));
		i.setArticle(rs.getString(5));
		i.setPart(rs.getString(6));	
		
		
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
		
		
	}

	@Override
	public List<Info> selectpart() {
		JDBC jdbc=new JDBC();
		List<Info> list=new ArrayList<Info>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbdj limit 8 ";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Info i=new Info();
			i.setTitle(rs.getString(1));
			i.setTm(rs.getString(2));
			i.setAuthor(rs.getString(3));
			i.setFrom(rs.getString(4));
			i.setArticle(rs.getNString(5));
			i.setPart(rs.getString(6));	
			
			list.add(i);
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for (Info info : list) {
			System.out.println(info.toString());
		}

		return list;
		
	}

	@Override
	public List<Number> selectnumber() {
		JDBC jdbc=new JDBC();
		List<Number> list=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='计算机与网络教工党支部'and post='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			list.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return list;
		
		
	}

	@Override
	public List<Number> selectother() {
		JDBC jdbc=new JDBC();
		List<Number> listother=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='计算机与网络教工党支部'and post!='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			listother.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return listother;
		
		
	}

	@Override
	public List<Number> selectother1() {
		JDBC jdbc=new JDBC();
		List<Number> listother1=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='数据科学与公共数学教工党支部'and post!='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			listother1.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return listother1;
		
	}

	@Override
	public List<Number> selectnumber1() {
		JDBC jdbc=new JDBC();
		List<Number> list1=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='数据科学与公共数学教工党支部'and post='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			list1.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return list1;
		
		
	}

	@Override
	public List<Number> selectnumber3() {
		JDBC jdbc=new JDBC();
		List<Number> list3=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='学生党支部'and post='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			list3.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return list3;
		
		
	}

	@Override
	public List<Number> selectother3() {
		JDBC jdbc=new JDBC();
		List<Number> listother3=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='学生党支部'and post!='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			listother3.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return listother3;
	}

	@Override
	public List<Number> selectother2() {
		JDBC jdbc=new JDBC();
		List<Number> listother2=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='电子与电气教工党支部'and post!='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			listother2.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return listother2;
	}

	@Override
	public List<Number> selectnumber2() {
		JDBC jdbc=new JDBC();
		List<Number> list2=new ArrayList<Number>();
		Connection conn=jdbc.getConn();
		String sql="select * from tbnumber where part='电子与电气教工党支部'and post='党员';";
		System.out.println(sql);
		try {
			PreparedStatement ps=conn.prepareStatement(sql);
			
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Number num=new Number();
			num.setNname(rs.getString(1));
			num.setPost(rs.getString(2));
			num.setPart(rs.getString(3));
			
			list2.add(num);
			
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return list2;
		
		
	}

	
}
