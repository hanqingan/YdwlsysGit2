package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Essay;
import com.ydwlsys.entity.Navigation;

public interface zsDao {

	List<Navigation> findBycid(String cid) throws Exception;

	int findCount(String cid) throws Exception;

	List<Essay> findEssay(String name) throws Exception;

}
