package com.ydwlsys.entity;

public class Essay {
private String vtest_id;
private String ctitle;
private String cessay;
private String cimage;
public String getVtest_id() {
	return vtest_id;
}
public void setVtest_id(String vtest_id) {
	this.vtest_id = vtest_id;
}
public String getCtitle() {
	return ctitle;
}
public void setCtitle(String ctitle) {
	this.ctitle = ctitle;
}

public String getCessay() {
	return cessay;
}
public void setCessay(String cessay) {
	this.cessay = cessay;
}
public String getCimage() {
	return cimage;
}
public void setCimage(String cimage) {
	this.cimage = cimage;
}
@Override
public String toString() {
	return "Essay [vtest_id=" + vtest_id + ", ctitle=" + ctitle + ", cessay="
			+ cessay + ", cimage=" + cimage + "]";
}

}
