package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Essay;
import com.ydwlsys.entity.Navigation;

public interface zsService {

	List<Navigation> findBycid(String cid) throws Exception;

	List<Essay> findEssay(String name) throws Exception;


}
