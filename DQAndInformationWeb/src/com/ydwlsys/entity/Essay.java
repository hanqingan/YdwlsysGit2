package com.ydwlsys.entity;

public class Essay {
private String vtest_name;
private String ctitle;
private String cessay;
private String cimage;
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
	return "Essay [vtest_name=" + vtest_name + ", ctitle=" + ctitle + ", cessay="
			+ cessay + ", cimage=" + cimage + "]";
}
public String getVtest_name() {
	return vtest_name;
}
public void setVtest_name(String vtest_name) {
	this.vtest_name = vtest_name;
}

}
