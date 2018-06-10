package com.po;

import java.util.Date;

public class LogTable {
                           
private Integer id ;
private String rizhiName;
private String rizhiContent;
private Integer userId;
private String rizhiTime;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getRizhiName() {
	return rizhiName;
}
public void setRizhiName(String rizhiName) {
	this.rizhiName = rizhiName;
}
public String getRizhiContent() {
	return rizhiContent;
}
public void setRizhiContent(String rizhiContent) {
	this.rizhiContent = rizhiContent;
}
public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
public String getRizhiTime() {
	return rizhiTime;
}
public void setRizhiTime(String rizhiTime) {
	this.rizhiTime = rizhiTime;
}
public LogTable(Integer id, String rizhiName, String rizhiContent,
		Integer userId, String rizhiTime) {
	super();
	this.id = id;
	this.rizhiName = rizhiName;
	this.rizhiContent = rizhiContent;
	this.userId = userId;
	this.rizhiTime = rizhiTime;
}
public LogTable() {
	super();
}

}                          
