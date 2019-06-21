package com.ydwlsys.entity;

public class Education {
 private int vid;
 private String vname;
 private String testname;
 private String vtime;
 private String vteacher;
 private String cid;
 private String artical;

public int getVid() {
	return vid;
}

public void setVid(int vid) {
	this.vid = vid;
}

public String getVname() {
	return vname;
}

public void setVname(String vname) {
	this.vname = vname;
}

public String getTestname() {
	return testname;
}

public void setTestname(String testname) {
	this.testname = testname;
}

public String getVtime() {
	return vtime;
}

public void setVtime(String vtime) {
	this.vtime = vtime;
}

public String getVteacher() {
	return vteacher;
}

public void setVteacher(String vteacher) {
	this.vteacher = vteacher;
}

public String getCid() {
	return cid;
}

public void setCid(String cid) {
	this.cid = cid;
}

public String getArtical() {
	return artical;
}

public void setArtical(String artical) {
	this.artical = artical;
}

@Override
public String toString() {
	return "Education [vid=" + vid + ", vname=" + vname + ", testname="
			+ testname + ", vtime=" + vtime + ", vteacher=" + vteacher
			+ ", cid=" + cid + ", artical=" + artical + "]";
}


 
}
