package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Navigation;

public interface IBackService {

	String ZsfindAll(int pageNnmber, int pageSize) throws Exception;

	void ZsdeleteByVid(String vid) throws Exception;

}
