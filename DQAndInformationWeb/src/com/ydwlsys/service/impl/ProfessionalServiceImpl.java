package com.ydwlsys.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.ydwlsys.dao.IProfessionalDao;
import com.ydwlsys.dao.impl.ProfessionalDaoImpl;
import com.ydwlsys.entity.Professional;
import com.ydwlsys.service.IProfessionalService;

public class ProfessionalServiceImpl implements IProfessionalService {

	@Override
	public 	List<Professional> queryByID(String str) {
		IProfessionalDao pdao = new ProfessionalDaoImpl();
		
		List<Professional> list=new ArrayList<Professional>();
		list = pdao.queryByID(str);
		return list;
	}

}
