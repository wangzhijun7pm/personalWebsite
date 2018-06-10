package com.po;

public class Reply {
private Integer id ;
private Integer logId  ;
private String replyContent ;
private String replyTime;
private Integer userId ;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getLogId() {
	return logId;
}
public void setLogId(Integer logId) {
	this.logId = logId;
}
public String getReplyContent() {
	return replyContent;
}
public void setReplyContent(String replyContent) {
	this.replyContent = replyContent;
}
public String getReplyTime() {
	return replyTime;
}
public void setReplyTime(String replyTime) {
	this.replyTime = replyTime;
}
public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
public Reply() {
	super();
}
public Reply(Integer id, Integer logId, String replyContent, String replyTime,
		Integer userId) {
	super();
	this.id = id;
	this.logId = logId;
	this.replyContent = replyContent;
	this.replyTime = replyTime;
	this.userId = userId;
}

}
