package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.User;
import com.po.Photo;

@Service(value = "Photo")
public interface PhotoMap {
	//添加相册
	public void addPhoto(Photo photo);
	//根据用户分页查询
	public List<Photo> selectPhoto(int userid,int limit, int offset);
	//根据用户ID查询相册个数
	public int selectUserXiangce(int userid);
	
	//根据用户查询相册
	public List<Photo> selectPhoto1(int userid);
	
	
}
