package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.TeaDy;

public interface ITeaDyService {

	public List<TeaDy> getAllTeaDy();
	public List<TeaDy> getFileByName(String name);
}
