package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;

public interface Xtdao {

	List<Group> findByCid(String cid) throws Exception;

	List<Content> findNei(String name) throws Exception;
	

}
