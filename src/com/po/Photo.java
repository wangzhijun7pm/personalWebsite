package com.po;

public class Photo {
	private Integer Id;
	private String Xiangce;
	private Integer userId;

	public Photo(Integer id, String xiangce, Integer userId) {
		super();
		Id = id;
		Xiangce = xiangce;
		this.userId = userId;
	}
	public Photo() {
		super();
	}
	public Integer getId() {
		return Id;
	}
	public void setId(Integer id) {
		Id = id;
	}
	public String getXiangce() {
		return Xiangce;
	}
	public void setXiangce(String xiangce) {
		Xiangce = xiangce;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
