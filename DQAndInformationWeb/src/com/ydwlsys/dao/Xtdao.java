package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;
import com.ydwlsys.entity.Navigation;

public interface Xtdao {

	List<Group> findByCid(String cid) throws Exception;

	List<Content> findNei(String name) throws Exception;
	
	List<Content> findAll(int i, int pageSize) throws Exception;
	
	int findCount() throws Exception;

}
