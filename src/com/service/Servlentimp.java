package com.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.dao.DiscussMap;
import com.dao.LogTableMap;
import com.dao.ReplyMap;
import com.dao.TouxiangMap;
import com.dao.UserMap;
import com.dao.UserMaterialMap;
import com.dao.PhotoMap;
import com.po.Discuss;
import com.po.LogTable;
import com.po.Reply;
import com.po.Touxiang;
import com.po.User;
import com.po.UserMaterial;
import com.po.Photo;

@Service("Servlentimp")

public class Servlentimp implements Sevicele{
	@Resource(name="ReplyMap")
	private ReplyMap replyMap;
	
	@Resource(name = "TouxiangMap")
	private TouxiangMap touxiangMap;
	
	@Resource(name = "IUserMap")
	private UserMap userMap;
	
	@Resource(name = "UserMaterialMap")
	private UserMaterialMap userMaterialMap;
	
	@Resource(name = "Photo")
	private PhotoMap photoMap;
	
	@Resource(name = "LogTableMap")
	private LogTableMap logTableMap;
	
	@Resource(name = "Discuss")
	private DiscussMap discussMap;
	
	//���Touxiang
	public void touxiangAdd(Touxiang touxiang) {
		touxiangMap.touxiangAdd(touxiang);
	}
	
	//���User
	public void userAdd(User user) {
		userMap.userAdd(user);
	}
	
	//��user
	public User checkId(User user){		
	return userMap.checkId(user);
	};
	
	//���UserMaterial
	public void UserMaterialAdd(UserMaterial userMaterial){
		userMaterialMap.UserMaterialAdd(userMaterial);
	};
	
	public List<User> checkUser(){
		
		return userMap.checkUser();
	}


	public void addPhoto(Photo photo) {
		
		photoMap.addPhoto(photo);
	}


	public List<Photo> selectPhoto(int userid,int limit, int offset) {
		return photoMap.selectPhoto(userid,limit,offset);
	}


	public List<String> selectPhotograph(int id,String xiangce,int limit,int offset){
		// TODO Auto-generated method stub
		return touxiangMap.selectPhotograph(id, xiangce,limit,offset);
	}

	@Override
	public UserMaterial selectUserMaterial(int id) {
		// TODO Auto-generated method stub
		return userMaterialMap.selectUserMaterial(id);
	}

	@Override
	public String selectTouxiang(int id) {
		// TODO Auto-generated method stub
		return touxiangMap.selectTouxiang(id);
	}

	@Override
	public int selectCount(int userid, String xiangce) {
		// TODO Auto-generated method stub
		return touxiangMap.selectCount(userid,xiangce);
	}

	@Override
	public int selectUserXiangce(int userid) {
		// TODO Auto-generated method stub
		return photoMap.selectUserXiangce(userid);
	}

	@Override
	public List<Photo> selectPhoto1(int userid) {
		// TODO Auto-generated method stub
		return photoMap.selectPhoto1(userid);
	}

	@Override
	public List<String> selectXiangcePhotograph(int id, String xiangce) {
		// TODO Auto-generated method stub
		return touxiangMap.selectXiangcePhotograph(id, xiangce);
	}

	@Override
	public void addLog(LogTable logTable) {
		// TODO Auto-generated method stub
		logTableMap.addLog(logTable);
	}

	@Override
	public List<LogTable> listLog() {
		// TODO Auto-generated method stub
		return logTableMap.listLog();
	}

	@Override
	public List<UserMaterial> selectMaterial() {
		// TODO Auto-generated method stub
		return userMaterialMap.selectMaterial();
	}

	@Override
	public User checkUser1(int id) {
		// TODO Auto-generated method stub
		return userMap.checkUser1(id);
	}

	@Override
	public LogTable checkLog(int id) {
		// TODO Auto-generated method stub
		return logTableMap.checkLog(id);
	}

	@Override
	public void addDiscuss(DiscussMap discuss) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Discuss> checkDiscuss(int logtableid) {
		// TODO Auto-generated method stub
		return discussMap.checkDiscuss(logtableid);
	}

	@Override
	public void addReply(Reply reply) {
		// TODO Auto-generated method stub
		replyMap.addReply(reply);
	}

	@Override
	public List<Reply> selectReply(int id) {
		// TODO Auto-generated method stub
		return replyMap.selectReply(id);
	};
	
}
