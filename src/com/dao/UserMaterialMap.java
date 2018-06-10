package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.UserMaterial;
@Service(value = "UserMaterialMap")
public interface UserMaterialMap {
	public void UserMaterialAdd(UserMaterial userMaterial);
	//根据用户ID查询用户资料
	public UserMaterial selectUserMaterial(int id);
	//查询所有用户资料
	public List<UserMaterial> selectMaterial();
}
