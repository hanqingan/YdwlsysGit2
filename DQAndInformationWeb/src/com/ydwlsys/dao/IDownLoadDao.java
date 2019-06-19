package com.ydwlsys.dao;

import java.util.List;

import com.ydwlsys.entity.File;

public interface IDownLoadDao {
	public List<File> getAllFile();
	public List<File> getFileByName(String name);
}
