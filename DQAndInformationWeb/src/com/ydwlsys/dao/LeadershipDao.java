package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Leadership;

public interface LeadershipDao {
	public List<Leadership> getAllFile();
	public Leadership getFileByName(String name);
}
