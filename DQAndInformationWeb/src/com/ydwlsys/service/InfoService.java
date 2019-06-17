package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Info;
import com.ydwlsys.entity.Number;

public interface InfoService {
	
	List<Info> selectpart(String part);

	Info select(String title);

	List<Info> selectpart();

	List<Number> selectnumber();

	List<Number> selectother();

	List<Number> selectother1();
	
	List<Number> selectnumber1();

	List<Number> selectother2();

	List<Number> selectnumber2();

	List<Number> selectother3();

	List<Number> selectnumber3();

}
