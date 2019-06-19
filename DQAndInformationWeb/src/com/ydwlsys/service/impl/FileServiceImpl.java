package com.ydwlsys.service.impl;

import java.util.List;

import com.ydwlsys.dao.IDownLoadDao;
import com.ydwlsys.dao.impl.DownLoadImpl;
import com.ydwlsys.entity.File;
import com.ydwlsys.service.IFileService;

public class FileServiceImpl implements IFileService {

	IDownLoadDao iDownLoad=new DownLoadImpl();

	@Override
	public List<File> getAllFile() {
		// TODO 自动生成的方法存根
		return iDownLoad.getAllFile();
	}

	@Override
	public List<File> getFileByName(String name) {
		// TODO 自动生成的方法存根
		return iDownLoad.getFileByName(name);
	}
}
