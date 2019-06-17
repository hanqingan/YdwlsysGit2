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
import com.ydwlsys.utils.JDBCUtils;

public class InfoDaoimpl implements InfoDao {

	@Override
	public List<Info> selectpart(String part) {

		JDBCUtils jdbc = new JDBCUtils();
		List<Info> list = new ArrayList<Info>();
		Connection conn = null;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbdj where part=?;";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, part);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Info i = new Info();
				i.setTitle(rs.getString(1));
				i.setTm(rs.getString(2));
				i.setAuthor(rs.getString(3));
				i.setFrom(rs.getString(4));
				i.setArticle(rs.getNString(5));
				i.setPart(rs.getString(6));

				list.add(i);
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list;
	}

	@Override
	public Info select(String title) {

		JDBCUtils jdbc = new JDBCUtils();
		Connection conn;
		Info i = new Info();
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbdj where title=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i.setTitle(rs.getString(1));
				i.setTm(rs.getString(2));
				i.setAuthor(rs.getString(3));
				i.setFrom(rs.getString(4));
				i.setArticle(rs.getString(5));
				i.setPart(rs.getString(6));

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return i;

	}

	@Override
	public List<Info> selectpart() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Info> list = new ArrayList<Info>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbdj limit 8 ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Info i = new Info();
				i.setTitle(rs.getString(1));
				i.setTm(rs.getString(2));
				i.setAuthor(rs.getString(3));
				i.setFrom(rs.getString(4));
				i.setArticle(rs.getNString(5));
				i.setPart(rs.getString(6));

				list.add(i);
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Number> selectnumber() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> list = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='计算机与网络教工党支部'and post='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				list.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list;
	}

	@Override
	public List<Number> selectother() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> listother = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='计算机与网络教工党支部'and post!='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				listother.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return listother;
	}

	@Override
	public List<Number> selectother1() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> listother1 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='数据科学与公共数学教工党支部'and post!='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				listother1.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return listother1;

	}

	@Override
	public List<Number> selectnumber1() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> list1 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='数据科学与公共数学教工党支部'and post='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				list1.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list1;

	}

	@Override
	public List<Number> selectnumber3() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> list3 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='学生党支部'and post='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				list3.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list3;

	}

	@Override
	public List<Number> selectother3() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> listother3 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='学生党支部'and post!='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				listother3.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return listother3;
	}

	@Override
	public List<Number> selectother2() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> listother2 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='电子与电气教工党支部'and post!='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				listother2.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return listother2;
	}

	@Override
	public List<Number> selectnumber2() {

		JDBCUtils jdbc = new JDBCUtils();
		List<Number> list2 = new ArrayList<Number>();
		Connection conn;
		try {
			conn = jdbc.getConnection();
			String sql = "select * from tbnumber where part='电子与电气教工党支部'and post='党员';";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Number num = new Number();
				num.setNname(rs.getString(1));
				num.setPost(rs.getString(2));
				num.setPart(rs.getString(3));

				list2.add(num);

			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return list2;

	}

}
