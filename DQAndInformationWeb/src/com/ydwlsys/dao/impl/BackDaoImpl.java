package com.ydwlsys.dao.impl;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ydwlsys.dao.IBackDao;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.utils.DataSourceUtils;

public class BackDaoImpl implements IBackDao{

	public List<Navigation> ZsfindAll(int pageNnmber, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from navigation limit ?,?";
	   List<Navigation> list=qr.query(sql, new BeanListHandler<Navigation>(Navigation.class),pageNnmber,pageSize);
	   return list;
	}

	public int ZsfindCount() throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select count(*) from navigation";
		Long l=(Long)qr.query(sql, new ScalarHandler());
		return l.intValue();
	}

	public void ZsdeleteByVid(String vid) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
		String sql="DELETE FROM navigation WHERE vid = ?";
		qr.update(sql,vid);
				
	}

	public void save(Navigation navigation) throws Exception{
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
		String sql=" INSERT INTO navigation (vname,vtest_name,vtest_time,vtest_teacher,vtest_id,cid) VALUES (?,?,?,?,?,?)";
		
		qr.update(sql,navigation.getVname(),navigation.getVtest_name(),navigation.getVtest_time(),navigation.getVtest_teacher(),
			navigation.getVtest_id(),navigation.getCid());
	}

	public void update(Navigation navigation,String vid) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr= new QueryRunner(DataSourceUtils.getDataSource());
	  String sql=" UPDATE navigation SET vname=?, vtest_name=?,vtest_time=?,vtest_teacher=?,vtest_id=?,cid=? WHERE vid=?";
		
		qr.update(sql,navigation.getVname(),navigation.getVtest_name(),navigation.getVtest_time(),navigation.getVtest_teacher(),
			navigation.getVtest_id(),navigation.getCid(),vid);
		
	}

}
