package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.Education;



public interface KjService{

	List<Education> findBycid(String cid) throws Exception;};