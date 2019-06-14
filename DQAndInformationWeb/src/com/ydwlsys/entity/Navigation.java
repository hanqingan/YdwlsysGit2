package com.ydwlsys.entity;

public class Navigation {
   private int vid;
   private String vname;
   private String vtest_name;
   private String vtest_time;
   private String vtest_teacher;
   private String vtest_id;
   private String cid;
   
   
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
public String getVtest_name() {
	return vtest_name;
}
public void setVtest_name(String vtest_name) {
	this.vtest_name = vtest_name;
}
public String getVtest_time() {
	return vtest_time;
}
public void setVtest_time(String vtest_time) {
	this.vtest_time = vtest_time;
}
public String getVtest_teacher() {
	return vtest_teacher;
}
public void setVtest_teacher(String vtest_teacher) {
	this.vtest_teacher = vtest_teacher;
}
public String getVtest_id() {
	return vtest_id;
}
public void setVtest_id(String vtest_id) {
	this.vtest_id = vtest_id;
}
public String getCid() {
	return cid;
}
public void setCid(String cid) {
	this.cid = cid;
}
@Override
public String toString() {
	return "Navigation [vid=" + vid + ", vname=" + vname + ", vtest_name="
			+ vtest_name + ", vtest_time=" + vtest_time + ", vtest_teacher="
			+ vtest_teacher + ", vtest_id=" + vtest_id + ", cid=" + cid + "]";
}
   
}
