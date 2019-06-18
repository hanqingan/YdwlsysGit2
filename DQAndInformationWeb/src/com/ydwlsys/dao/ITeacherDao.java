package com.ydwlsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.ydwlsys.entity.Teacher;

public interface ITeacherDao {

	public Teacher queryById(String Id);

	public Teacher queryById();

	public List<Teacher> queryALL();
	
	public List<Teacher> Cx(String cid) throws SQLException;

}
