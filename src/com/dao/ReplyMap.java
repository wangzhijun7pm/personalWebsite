package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.Reply;
@Service(value="ReplyMap")
public interface ReplyMap {
	//保存回复
	public void addReply(Reply reply);
	
	//根据日志ID查询回复信息
	public List<Reply> selectReply(int id);
}
