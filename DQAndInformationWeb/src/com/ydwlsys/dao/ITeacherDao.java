package com.ydwlsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.ydwlsys.entity.Teacher;

public interface ITeacherDao {

	public int insert();

	public int delete();

	public int update();

	public Teacher queryByName();

	public Teacher queryById();

	public List<Teacher> queryALL();

}
