package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Navigation;

public interface IBackDao {

	List<Navigation> ZsfindAll(int i, int pageSize) throws Exception;

	int ZsfindCount() throws Exception;

	void ZsdeleteByVid(String vid) throws Exception;

	void save(Navigation navigation) throws Exception;

	void update(Navigation navigation, String vid) throws Exception;


}
