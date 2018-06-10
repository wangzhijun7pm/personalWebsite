package com.po;

public class Touxiang {
	private Integer id;
	private String img_path;
	private Integer user_id;
	private String img_name;
	private String xiangce;
	
	public String getXiangce() {
		return xiangce;
	}
	public void setXiangce(String xiangce) {
		this.xiangce = xiangce;
	}
	
	public Touxiang(Integer id, String img_path, Integer user_id,
			String img_name, String xiangce) {
		super();
		this.id = id;
		this.img_path = img_path;
		this.user_id = user_id;
		this.img_name = img_name;
		this.xiangce = xiangce;
	}
	public Touxiang(Integer id, String img_path, Integer user_id,
			String img_name) {
		super();
		this.id = id;
		this.img_path = img_path;
		this.user_id = user_id;
		this.img_name = img_name;
	}
	public Touxiang() {
		super();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImg_path() {
		return img_path;
	}
	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	
}
