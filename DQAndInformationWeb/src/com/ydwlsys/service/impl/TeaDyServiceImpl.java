package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.ITeaDyDao;
import com.ydwlsys.dao.impl.TeaDyImpl;
import com.ydwlsys.entity.TeaDy;
import com.ydwlsys.service.ITeaDyService;

public class TeaDyServiceImpl implements ITeaDyService{

	ITeaDyDao iTeaDy=new TeaDyImpl();
	@Override
	public List<TeaDy> getAllTeaDy() {
		// TODO �Զ����ɵķ������
		return iTeaDy.getAllTeaDy();
	}

	@Override
	public List<TeaDy> getFileByName(String name) {
		// TODO �Զ����ɵķ������
		return iTeaDy.getFileByName(name);
	}

}
