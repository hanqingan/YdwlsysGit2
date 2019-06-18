package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.Professional;

public interface IProfessionalDao {

	List<Professional> queryByID(String cid);
}
