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
		// TODO �Զ����ɵķ������
		return iDownLoad.getAllFile();
	}

	@Override
	public List<File> getFileByName(String name) {
		// TODO �Զ����ɵķ������
		return iDownLoad.getFileByName(name);
	}
}
