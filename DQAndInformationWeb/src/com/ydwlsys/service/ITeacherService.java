package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Teacher;

public interface ITeacherService {

	public int insert();
	public int delete();
	public int update();
	public Teacher queryByName();
	public Teacher queryById();
	public List<Teacher> queryALL();
}
