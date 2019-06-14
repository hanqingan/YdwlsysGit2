package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.zsDao;
import com.ydwlsys.dao.impl.zsDaoImpl;
import com.ydwlsys.entity.Essay;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.service.zsService;

public class zsServiceImpl implements zsService{

	public List<Navigation> findBycid(String cid) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("service");
		zsDao zsDaoImpl = new zsDaoImpl();
		return zsDaoImpl.findBycid(cid);
		
	}

	public List<Essay> findEssay(String name) throws Exception {
		// TODO Auto-generated method stub
		zsDao	 zsDaoImpl = new zsDaoImpl();
		return zsDaoImpl.findEssay(name);
	
	}

}
