package com.ydwlsys.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.ydwlsys.dao.Xtdao;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.utils.DataSourceUtils;

public class XtDaoImpl implements Xtdao {

	@Override
	public List<Group> findByCid(String cid) throws Exception {
		// TODO Auto-generated method stub

		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from groupxt where cid = ?";
		// BeanListHandler����������е�ÿһ�����ݶ���װ��һ����Ӧ��JavaBeanʵ���У���ŵ�List�
		// SQL���Ĳ������󣬿������ò�ѯ������ķ�װ���ԣ��̰߳�ȫ��
		List<Group> list = qr.query(sql, new BeanListHandler<Group>(Group.class), cid);

		return list;
	}

	@Override
	public List<Content> findNei(String name) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from content where Text_name = ?";
		System.out.println(name);
		List<Content> list = qr.query(sql, new BeanListHandler<Content>(Content.class), name);
		return list;
	}

	@Override
	public List<Content> findAll(int i, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from Content limit ?,?";
		List<Content> list = qr.query(sql, new BeanListHandler<Content>(Content.class), i, pageSize);
		return list;
	}

	@Override
	public int findCount() throws Exception {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select count(*) from Content";
		Long l = (Long) qr.query(sql, new ScalarHandler());
		return l.intValue();
	}

}