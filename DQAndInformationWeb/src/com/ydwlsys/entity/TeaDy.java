package com.ydwlsys.entity;

import java.util.Date;

public class TeaDy {
	public String getTeaDyName() {
		return teaDyName;
	}
	public void setTeaDyName(String teaDyName) {
		this.teaDyName = teaDyName;
	}
	public String getTeaDyText() {
		return teaDyText;
	}
	public void setTeaDyText(String teaDyText) {
		this.teaDyText = teaDyText;
	}
	public String getTeaDyByNam() {
		return teaDyByNam;
	}
	public void setTeaDyByNam(String teaDyByNam) {
		this.teaDyByNam = teaDyByNam;
	}
	public Date getTeaDyByTime() {
		return teaDyByTime;
	}
	public void setTeaDyByTime(Date teaDyByTime) {
		this.teaDyByTime = teaDyByTime;
	}
	String teaDyName="";
	String teaDyText="";
	String teaDyByNam="";
	Date teaDyByTime;
	



	
}
