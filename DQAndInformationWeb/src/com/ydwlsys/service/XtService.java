package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;

public interface XtService {

	List<Group> findByCid(String cid) throws Exception;

	List<Content> findNei(String name) throws Exception;
	
	List<Content> findAll(int pageNnmber, int pageSize) throws Exception;

}
