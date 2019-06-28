package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.ITeacherDao;
import com.ydwlsys.dao.impl.TeacherDaoImpl;
import com.ydwlsys.entity.Teacher;
import com.ydwlsys.service.ITeacherService;

public class TeacherServiceImpl implements ITeacherService {

	
	@Override
	public Teacher select(String post) {
	
		return null;
	}

	@Override
	public Teacher select() {
		ITeacherDao idao=new TeacherDaoImpl();
		Teacher teacher=idao.select();
			return teacher;
	}
	
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

	@Override
	public Teacher findById(int id) {
		// TODO Auto-generated method stub
		
		ITeacherDao daoImpl = new TeacherDaoImpl();
		Teacher teacher=daoImpl.findById(id);
		
		return teacher;
	}

}
