package com.ydwlsys.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.junit.Test;

import com.ydwlsys.dao.ITeacherDao;
import com.ydwlsys.entity.Teacher;
import com.ydwlsys.utils.DataSourceUtils;

public class TeacherDaoImpl implements ITeacherDao {

	@Override
	public int insert() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Teacher queryByName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teacher queryById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Teacher> queryALL() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Test
	public List<Teacher> Cx(String cid) throws SQLException {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select * from tbteacher where id= ?";
	    List<Teacher> list=qr.query(sql, new BeanListHandler<Teacher>(Teacher.class),cid);
	    for (Teacher teacher : list) {
			System.out.println(teacher.toString());
		}
	    return list;
	}
}
