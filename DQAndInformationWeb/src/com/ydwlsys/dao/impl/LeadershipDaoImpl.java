package com.ydwlsys.dao.impl;

import java.util.List;

import com.ydwlsys.dao.LeadershipDao;
import com.ydwlsys.entity.Leadership;
import com.ydwlsys.utils.LeadershipJDBC;

public class LeadershipDaoImpl implements LeadershipDao {

	LeadershipJDBC char1=new LeadershipJDBC();
	@Override
	public List<Leadership> getAllFile() {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public Leadership getFileByName(String name) {
		// TODO 自动生成的方法存根
		return null;
	}
}
