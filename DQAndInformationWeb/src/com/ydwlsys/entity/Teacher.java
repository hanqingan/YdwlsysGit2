package com.ydwlsys.entity;

public class Teacher {
	
	private String Name;
	private String Id;
	private String Zy;
	private String Prat;
	private String Post;
	private String Score;
	private String Scre;
	private String Tr;
	private String Image;
	private String ming;
	
	public String getMing() {
		return ming;
	}
	public void setMing(String ming) {
		this.ming = ming;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		this.Name = name;
	}
	public String getZy() {
		return Zy;
	}
	public void setZy(String zy) {
		this.Zy = zy;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		this.Id = id;
	}
	public String getPrat() {
		return Prat;
	}
	public void setPrat(String prat) {
		this.Prat = prat;
	}
	public String getScore() {
		return Score;
	}
	public void setScore(String score) {
		this.Score = score;
	}
	public String getPost() {
		return Post;
	}
	public void setPost(String post) {
		this.Post = post;
	}
	public String getScre() {
		return Scre;
	}
	public void setScre(String scre) {
		this.Scre = scre;
	}
	public String getTr() {
		return Tr;
	}
	public void setTr(String tr) {
		this.Tr = tr;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		this.Image = image;
	}
	@Override
	public String toString() {
		return "Teacher [Name=" + Name + ", Id=" + Id + ", Zy=" + Zy + ", Prat=" + Prat + ", Post=" + Post + ", Score="
				+ Score + ", Scre=" + Scre + ", Tr=" + Tr + ", Image=" + Image + "]";
	}
	
}
