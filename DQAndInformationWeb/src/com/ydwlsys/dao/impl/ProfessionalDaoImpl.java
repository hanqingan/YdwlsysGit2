package com.ydwlsys.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ydwlsys.dao.IProfessionalDao;
import com.ydwlsys.entity.Professional;
import com.ydwlsys.utils.DataSourceUtils;

public class ProfessionalDaoImpl implements IProfessionalDao {

	@Override
	public List<Professional> queryByID(String cid) {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from tbprofessional where P_id = ?";
		List<Professional> list = null;
		try {
			list = qr.query(sql, new BeanListHandler<Professional>(Professional.class), cid);
			for (Professional Professional : list) {
				System.out.println(Professional.getP_Name());
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
}
