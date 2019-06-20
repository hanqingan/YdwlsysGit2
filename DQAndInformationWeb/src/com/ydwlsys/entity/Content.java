package com.ydwlsys.entity;

public class Content {
  private int Text_id;
  private String Text_name;
  private String Text;
  private String Image;
public int getText_id() {
	return Text_id;
}
public void setText_id(int text_id) {
	Text_id = text_id;
}
public String getImage() {
	return Image;
}
public void setImage(String image) {
	Image = image;
}
public String getText_name() {
	return Text_name;
}
public void setText_name(String text_name) {
	Text_name = text_name;
}
public String getText() {
	return Text;
}
public void setText(String text) {
	Text = text;
}

@Override
public String toString() {
	return "Content [Text_id=" + Text_id + ", Text_name=" + Text_name
			+ ", Text=" + Text + ", Image=" + Image + "]";
}
  
}
