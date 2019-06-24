package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.Xtdao;
import com.ydwlsys.dao.impl.XtDaoImpl;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;
import com.ydwlsys.service.XtService;

public class XtServiceImpl implements XtService{

	@Override
	public List<Group> findByCid(String cid) throws Exception {
		// TODO Auto-generated method stub
		Xtdao xtDaoImpl = new XtDaoImpl();
		
		return xtDaoImpl.findByCid(cid);
	}

	@Override
	public List<Content> findNei(String name) throws Exception {
		// TODO Auto-generated method stub
		Xtdao xtDaoImpl = new XtDaoImpl();
		return xtDaoImpl.findNei(name);
	}

}
