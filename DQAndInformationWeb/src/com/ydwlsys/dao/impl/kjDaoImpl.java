package com.ydwlsys.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ydwlsys.dao.KjDao;
import com.ydwlsys.entity.Education;
import com.ydwlsys.utils.DataSourceUtils;


public class kjDaoImpl implements KjDao{

	@Override
	public List<Education> findById(String cid) throws SQLException {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from tbeducation where cid =?";
		List<Education> list= qr.query(sql,new BeanListHandler<Education>(Education.class),cid);
		return list;
	}
	public List<Education> findByVid(String vid) throws SQLException {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from tbeducation where vid =?";
		List<Education> list= qr.query(sql,new BeanListHandler<Education>(Education.class),vid);
		return list;
	}

}
