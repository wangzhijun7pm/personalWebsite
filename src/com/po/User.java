package com.po;



    
public class User {
	private Integer id;
	private String userName;
	private String password;
	private Touxiang touxiang;
	

	
	
	public Touxiang getTouxiang() {
		return touxiang;
	}
	public void setTouxiang(Touxiang touxiang) {
		this.touxiang = touxiang;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User() {
		super();
	}
	public User(Integer id, String userName, String password) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
	}
	
}
