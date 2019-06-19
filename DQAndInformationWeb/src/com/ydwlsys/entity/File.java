package com.ydwlsys.entity;

import java.util.Date;

public class File {
	
	private int fileId;
	private String fileAddress="";
	private String fileName="";
	private Date fileTime;
	private String fileOwner="";
	
	
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	
	
	public String getFileAddress() {
		return fileAddress;
	}
	public void setFileAddress(String fileAddress) {
		this.fileAddress = fileAddress;
	}
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
	public Date getFileTime() {
		return fileTime;
	}
	public void setFileTime(Date fileTime) {
		this.fileTime = fileTime;
	}
	
	
	public String getFileOwner() {
		return fileOwner;
	}
	public void setFileOwner(String fileOwner) {
		this.fileOwner = fileOwner;
	}
	

}
