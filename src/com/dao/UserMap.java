package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.User;

@Service(value="IUserMap")
public interface UserMap {
	//添加用户
	public void userAdd(User user);
	
	//根据用户名密码查询用户ID
	public User checkId(User user);
	
	//查询所有用户
	public List<User> checkUser();
	
	//根据ID查用户
	public User checkUser1(int id);
}
