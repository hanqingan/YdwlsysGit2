package com.ydwlsys.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ydwlsys.dao.zsDao;
import com.ydwlsys.entity.Essay;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.utils.DataSourceUtils;

public class zsDaoImpl implements zsDao{

	public List<Navigation> findBycid(String cid) throws Exception {
		// TODO Auto-generated method stub

		 QueryRunner qr =new QueryRunner(DataSourceUtils.getDataSource()); 
		 String sql="select * from navigation where cid = ?";
		 List<Navigation> list=qr.query(sql, new BeanListHandler<Navigation>(Navigation.class),cid);
		
		return list;
	}

	public int findCount(String cid) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr =new QueryRunner(DataSourceUtils.getDataSource());
		String	sql="select * from navigation where cid = ?"; 
		Long l=(Long)qr.query(sql,new ScalarHandler(),cid); 
		return l.intValue(); 
	
	}

	public List<Essay> findEssay(String name) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource()); 
		String sql="SELECT * FROM essay WHERE vtest_name =?"; 
		 List<Essay> list=qr.query(sql,new BeanListHandler<Essay>(Essay.class),name);
		return list;
	}

}
