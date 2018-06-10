package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.Discuss;

@Service("Discuss")
public interface DiscussMap {
	//添加评论
	public void addDiscuss(DiscussMap discuss);
	
	//根据日志ID查询评论
	public List<Discuss> checkDiscuss(int logtableid);
}
