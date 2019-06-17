package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.InfoDao;
import com.ydwlsys.dao.impl.InfoDaoimpl;
import com.ydwlsys.entity.Info;
import com.ydwlsys.entity.Number;
import com.ydwlsys.service.InfoService;

public class InfoServiceimpl implements InfoService {

	public List<Info> selectpart(String part) {
		InfoDao ido=new InfoDaoimpl();
		List<Info>list=ido.selectpart(part);
		return list;
	}

	@Override
	public Info select(String title) {
		InfoDao ido=new InfoDaoimpl();
		Info i=ido.select(title);
		return i;
	}

	@Override
	public List<Info> selectpart() {
		InfoDao ido=new InfoDaoimpl();
		List<Info>list=ido.selectpart();
		return list;
	}

	@Override
	public List<Number> selectnumber() {
		InfoDao ido=new InfoDaoimpl();
		List<Number> list=ido.selectnumber();
		return list;
	}

	@Override
	public List<Number> selectother() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>listother=ido.selectother();
		return listother;
	}

	@Override
	public List<Number> selectother1() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>listother1=ido.selectother1();
		return listother1;
	}

	@Override
	public List<Number> selectnumber1() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>list1=ido.selectnumber1();
		return list1;
	}

	@Override
	public List<Number> selectother2() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>list2=ido.selectnumber2();
		return list2;
	}

	@Override
	public List<Number> selectnumber2() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>listother2=ido.selectother2();
		return listother2;
	}

	@Override
	public List<Number> selectother3() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>listother3=ido.selectother3();
		return listother3;
	}

	@Override
	public List<Number> selectnumber3() {
		InfoDao ido=new InfoDaoimpl();
		List<Number>list3=ido.selectnumber3();
		return list3;
	}

	
	

}
