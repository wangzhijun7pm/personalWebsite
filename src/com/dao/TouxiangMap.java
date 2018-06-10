package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.Photo;
import com.po.Touxiang;
import com.po.User;

@Service(value = "TouxiangMap")
public interface TouxiangMap {
	//添加照片
	public void touxiangAdd(Touxiang touxiang);
	//asdfasdf
	
	//根据相册名字 用户ID分页查询照片
	public List<String> selectPhotograph(int id,String xiangce,int limit,int offset);
	
	//根据用户ID查询头像
	public String selectTouxiang(int id);
	//查询照片总数 
	public int selectCount(int userid, String xiangce);
	
	//根据用户ID相册名字查询照片
	public List<String> selectXiangcePhotograph(int id,String xiangce);
}  
