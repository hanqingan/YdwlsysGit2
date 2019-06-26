package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.IBackDao;
import com.ydwlsys.dao.Xtdao;
import com.ydwlsys.dao.impl.BackDaoImpl;
import com.ydwlsys.dao.impl.XtDaoImpl;
import com.ydwlsys.entity.Content;
import com.ydwlsys.entity.Group;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.entity.PageBean;
import com.ydwlsys.service.XtService;

import net.sf.json.JSONObject;

public class XtServiceImpl implements XtService {

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

	@Override
	public List<Content> findAll(int pageNnmber, int pageSize) throws Exception {

		Xtdao xtDaoImpl = new XtDaoImpl();

		return xtDaoImpl.findAll((pageNnmber - 1) * pageSize, pageSize);

	}

}
