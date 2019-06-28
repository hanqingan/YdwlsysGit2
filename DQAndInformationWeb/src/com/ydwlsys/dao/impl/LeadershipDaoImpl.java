package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.utils.DataSourceUtils;
import com.ydwlsys.utils.JDBCUtils;

public class LeadershipDaoImpl implements LeadershipDao {

	@Override
	public List<Leadership> getAllFile() {

		JDBCUtils leader = new JDBCUtils();
		Connection conn;

		List<Leadership> list = new ArrayList<Leadership>();

		try {
			conn = leader.getConnection();
			String sql = "select * from tbleadership";

			Statement statement;
			ResultSet rs = null;

			list = new ArrayList<Leadership>();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Leadership leader1 = new Leadership();
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

	@Override
	public List<Leadership> findAll(int i, int pageSize) {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		List<Leadership> list = new ArrayList<Leadership>();

		String sql = "select * from tbleadership limit ?,?";
		try {
			list = qr.query(sql, new BeanListHandler<Leadership>(Leadership.class), i, pageSize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from tbleadership";
		Long l = 0L;
		try {
			l = (Long) qr.query(sql, new ScalarHandler());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l.intValue();
	}
}
