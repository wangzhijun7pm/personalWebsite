package com.po;

public class Discuss {
private	int id;
private	int userid;
private	String discuss;
private	String discussTime;
private	int logtableid;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}
public String getDiscuss() {
	return discuss;
}
public void setDiscuss(String discuss) {
	this.discuss = discuss;
}
public String getDiscussTime() {
	return discussTime;
}
public void setDiscussTime(String discussTime) {
	this.discussTime = discussTime;
}
public int getLogtableid() {
	return logtableid;
}
public void setLogtableid(int logtableid) {
	this.logtableid = logtableid;
}
public Discuss(int id, int userid, String discuss, String discussTime,
		int logtableid) {
	super();
	this.id = id;
	this.userid = userid;
	this.discuss = discuss;
	this.discussTime = discussTime;
	this.logtableid = logtableid;
}
public Discuss() {
	super();
}

}
