package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Leadership;

public interface LeadershipService {
	
	public List<Leadership> getAllFile();
	
	List<Leadership> findAll(int pageNnmber, int pageSize);
}
