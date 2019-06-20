package com.ydwlsys.entity;

public class Group {
	private int Group_id;
	private String Group_name;
	private String Text_name;
	private String Text_date;
	private String Text_author;
	private String Cid;
	private String Text_id;
	private String Image;
	public int getGroup_id() {
		return Group_id;
	}
	public void setGroup_id(int group_id) {
		Group_id = group_id;
	}
	public String getGroup_name() {
		return Group_name;
	}
	public void setGroup_name(String group_name) {
		Group_name = group_name;
	}
	public String getText_name() {
		return Text_name;
	}
	public void setText_name(String text_name) {
		Text_name = text_name;
	}
	public String getText_date() {
		return Text_date;
	}
	public void setText_date(String text_date) {
		Text_date = text_date;
	}
	public String getText_author() {
		return Text_author;
	}
	public void setText_author(String text_author) {
		Text_author = text_author;
	}
	public String getCid() {
		return Cid;
	}
	public void setCid(String cid) {
		Cid = cid;
	}
	public String getText_id() {
		return Text_id;
	}
	public void setText_id(String text_id) {
		Text_id = text_id;
	}
	@Override
	public String toString() {
		return "Group [Group_id=" + Group_id + ", Group_name=" + Group_name
				+ ", Text_name=" + Text_name + ", Text_date=" + Text_date
				+ ", Text_author=" + Text_author + ", Cid=" + Cid
				+ ", Text_id=" + Text_id +"Image=" + Image + "]";
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	
}
