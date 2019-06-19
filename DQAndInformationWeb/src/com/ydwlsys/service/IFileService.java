package com.ydwlsys.service;

import java.util.List;

import com.ydwlsys.entity.File;

public interface IFileService {
	
	public List<File> getAllFile();
	public List<File> getFileByName(String name);
	
}
