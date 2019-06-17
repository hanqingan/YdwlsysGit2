package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Info;
import com.ydwlsys.entity.Number;

public interface InfoDao {

	List<Info> selectpart(String part);

	Info select(String title);
	
	List<Info> selectpart();

	List<Number> selectnumber();

	List<Number> selectother();

	List<Number> selectother1();

	List<Number> selectnumber1();

	List<Number> selectnumber3();

	List<Number> selectother3();

	List<Number> selectother2();

	List<Number> selectnumber2();

}
