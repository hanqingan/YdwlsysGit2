package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.IBackDao;
import com.ydwlsys.dao.impl.BackDaoImpl;
import com.ydwlsys.entity.Navigation;
import com.ydwlsys.entity.PageBean;
import com.ydwlsys.service.IBackService;
import net.sf.json.JSONObject;

public class BackServiceImpl implements IBackService {

	public String ZsfindAll(int pageNnmber, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		IBackDao daoImpl = new BackDaoImpl();
		List<Navigation> list = daoImpl.ZsfindAll((pageNnmber - 1) * pageSize, pageSize);

		int count = daoImpl.ZsfindCount();
		PageBean pb = new PageBean();
		pb.setTotal(count);
		pb.setRows(list);
		/* 转list用jsonarray，转对象用json.object */
		JSONObject json = JSONObject.fromObject(pb);
		/* JSONArray json = JSONArray.fromObject(list); */
		return json.toString();
	}

	public void ZsdeleteByVid(String vid) throws Exception {
		// TODO Auto-generated method stub
		IBackDao daoImpl = new BackDaoImpl();
		daoImpl.ZsdeleteByVid(vid);

	}

	public void save(Navigation navigation) throws Exception {
		// TODO Auto-generated method stub
		IBackDao daoImpl = new BackDaoImpl();
		daoImpl.save(navigation);
	}

	public void update(Navigation navigation, String vid) throws Exception {
		// TODO Auto-generated method stub
		IBackDao daoImpl = new BackDaoImpl();
		daoImpl.update(navigation, vid);
	}

}
