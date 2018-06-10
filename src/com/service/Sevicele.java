package com.service;

import java.util.List;

import com.dao.DiscussMap;
import com.po.Discuss;
import com.po.LogTable;
import com.po.Reply;
import com.po.Touxiang;
import com.po.User;
import com.po.UserMaterial;
import com.po.Photo;

public interface Sevicele {
	//添加照片
	public void touxiangAdd(Touxiang touxiang);
	//添加用户
	public void userAdd(User user);
	//查询用户
	public User checkId(User user);
	//添加用户资料
	public void UserMaterialAdd(UserMaterial userMaterial);
	//查询所有用户
	public List<User> checkUser();
	
	//添加相册
	public void addPhoto(Photo photo);
	//根据用户查询相册
	public List<Photo> selectPhoto(int userid,int limit, int offset);
	
	//根据用户ID 相册名字查询照片
	public List<String> selectPhotograph(int id,String xiangce,int limit,int offset);
	
	//根据用户ID查询用户资料
		public UserMaterial selectUserMaterial(int id);
		
		//根据用户ID查询头像
		public String selectTouxiang(int id);
		//查询照片总数 
		public int selectCount(int userid, String xiangce);
		
		//根据用户ID查询相册总个数
		public int selectUserXiangce(int userid);
		
		//根据用户查询相册
		public List<Photo> selectPhoto1(int userid);
		
		//根据用户ID相册名字查询照片
		public List<String> selectXiangcePhotograph(int id,String xiangce);
		
		//添加日志
		public void addLog(LogTable logTable);
		
		//查询所有日志
		public List<LogTable> listLog(); 
		
		//查询所有用户资料
		public List<UserMaterial> selectMaterial();
		
		//根据ID查用户
		public User checkUser1(int id);
		
		//根据ID查日志
		public LogTable checkLog(int id);
		
		//添加评论
		public void addDiscuss(DiscussMap discuss);
		
		//根据日志ID查询评论
		public List<Discuss> checkDiscuss(int logtableid);
		
		//保存回复
		public void addReply(Reply reply);
		
		//根据日志ID查询回复信息
		public List<Reply> selectReply(int id);
}
