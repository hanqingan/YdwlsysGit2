package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Leadership;

public interface LeadershipDao {
	
	public List<Leadership> getAllFile();
	
	List<Leadership> findAll(int i, int pageSize);
	
	int findCount();
}
