package com.ydwlsys.service.impl;


import java.util.List;

import com.ydwlsys.dao.KjDao;
import com.ydwlsys.dao.impl.kjDaoImpl;
import com.ydwlsys.entity.Education;
import com.ydwlsys.service.KjService;


public class KjServiceImpl implements KjService{

	@Override
	public List<Education> findBycid(String cid) throws Exception {
		KjDao kjDaoImpl = new kjDaoImpl();	
		return 	kjDaoImpl.findById(cid);
	}

}
