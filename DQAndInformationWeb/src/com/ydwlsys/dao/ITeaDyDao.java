package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.TeaDy;


public interface ITeaDyDao {

	public List<TeaDy> getAllTeaDy();
	public List<TeaDy> getFileByName(String name);
}
