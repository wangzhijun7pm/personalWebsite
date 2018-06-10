package com.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.po.LogTable;
@Service(value = "LogTableMap")
public interface LogTableMap {
	//添加日志
	public void addLog(LogTable logTable);
	//查询所有日志
	public List<LogTable> listLog(); 
	//根据ID查日志
	public LogTable checkLog(int id);
}
