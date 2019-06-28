package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.dao.impl.LeadershipDaoImpl;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.service.LeadershipService;

public class LeadershipServiceImpl implements LeadershipService {

	LeadershipDao leadership=new LeadershipDaoImpl();

	@Override
	public List<Leadership> getAllFile() {
		// TODO 自动生成的方法存根
		return leadership.getAllFile();
	}

	@Override
	public List<Leadership> findAll(int pageNnmber, int pageSize) {
		// TODO Auto-generated method stub
		return leadership.findAll(pageNnmber, pageSize);
	}

}
