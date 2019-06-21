package com.ydwlsys.dao;

import java.sql.SQLException;
import java.util.List;

import com.ydwlsys.entity.Education;

public interface KjDao {

	List<Education> findById(String cid) throws SQLException;

}
