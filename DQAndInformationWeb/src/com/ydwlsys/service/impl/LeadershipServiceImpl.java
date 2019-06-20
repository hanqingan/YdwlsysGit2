package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.dao.impl.LeadershipDaoImpl;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.service.LeadershipService;

public class LeadershipServiceImpl implements LeadershipService {

	LeadershipDao iDownLoad=new LeadershipDaoImpl();

	@Override
	public List<Leadership> getAllFile() {
		// TODO 自动生成的方法存根
		return iDownLoad.getAllFile();
	}

	@Override
	public Leadership getFileByName(String name) {
		// TODO 自动生成的方法存根
		return iDownLoad.getFileByName(name);
	}
}
