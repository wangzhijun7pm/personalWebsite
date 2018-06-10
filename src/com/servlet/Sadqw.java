package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.po.Photo;
import com.po.Touxiang;
import com.po.User;
import com.po.UserMaterial;
import com.service.Servlentimp;
import com.sun.org.glassfish.external.probe.provider.annotations.ProbeParam;

@Controller
public class Sadqw {
	@Resource(name = "Servlentimp")
	private Servlentimp servlentimp;

	@RequestMapping(value="uploader",method=RequestMethod.POST)
	public void upload(HttpServletRequest request,HttpServletResponse response, HttpSession session) {
		
		System.out.println("收到图片!");
		MultipartHttpServletRequest Murequest = (MultipartHttpServletRequest) request;
		
		Map<String, MultipartFile> files = Murequest.getFileMap();// 得到文件map对象
		String upaloadUrl = request.getSession().getServletContext()
				.getRealPath("/")
				+ "upload/";// 得到当前工程路径拼接上文件名
		File dir = new File(upaloadUrl);
		System.out.println(upaloadUrl);
		if (!dir.exists())// 目录不存在则创建
			dir.mkdirs();
		for (MultipartFile file : files.values()) {
			int counter = 0;
			counter++;
			// 获取原文件名
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			// 获取后缀名
			String suffix = fileName.substring(fileName.lastIndexOf('.'));
			// 创建新文件名
			String newFileName = new Date().getTime() + suffix;
			File tagetFile = new File(upaloadUrl + newFileName);// 创建文件对象
			if (!tagetFile.exists()) {// 文件名不存在 则新建文件，
				try {

					tagetFile.createNewFile();

				} catch (IOException e) {
					e.printStackTrace();
				}
				try {
					file.transferTo(tagetFile);// 将文件复制到新建文件中
				} catch (IOException e) {
					e.printStackTrace();
				}
				User user = (User) session.getAttribute("User");

				User user1 = servlentimp.checkId(user);
				String xiangce = Murequest.getParameter("xiangceName");
				System.out.println(xiangce);
//				String xiangce = xiangceName;
			
				
				Touxiang touxiang = new Touxiang();
				touxiang.setUser_id(user1.getId());

				touxiang.setImg_name(fileName);
				touxiang.setImg_path("/upload/" + newFileName);
				touxiang.setXiangce(xiangce);
				servlentimp.touxiangAdd(touxiang);
	
				
			}
		}
		System.out.println("接收完毕");
		
	
	}

	@RequestMapping(value = "addphoto", method = RequestMethod.POST)
	public String addphoto(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		try {
			User user = (User) session.getAttribute("User");
			
			User user1 = servlentimp.checkId(user);
			Photo photo = new Photo();
			String xiangce = request.getParameter("xiangce");
			System.out.println(xiangce);
			photo.setXiangce(xiangce);
			photo.setUserId(user1.getId());
			servlentimp.addPhoto(photo);
			System.out.println("创建相册成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/NewFile";
	}
	
	//查询相册照片
	@RequestMapping(value = "selectzhaopian", method = RequestMethod.POST)
	public void xiangceAddPhoto(HttpServletResponse response,HttpServletRequest request, HttpSession session) throws IOException{
			Map<String, Object> map = new HashMap<String, Object>();
			User user = (User) session.getAttribute("User");
			User user1 = servlentimp.checkId(user);
			String xiangce=request.getParameter("xiangce");
			//当前页
			int currentPage = Integer.parseInt(request.getParameter("currentPage"));	
			//从第offset条开始查询
			int offset ;
			//每页显示15条数据
			int limit = 15;
			//总数据条数
			int totalCount = servlentimp.selectCount(user1.getId(), xiangce);
			//总页数
			int totalPage = totalCount % limit == 0 ? totalCount / limit : totalCount / limit + 1;
			//当前页数小于1
			if (currentPage < 1) {
				currentPage = 1;
			}
			//当前页数大于总页数
			if (currentPage > totalPage) {
				currentPage = totalPage;
			}
			offset = (currentPage - 1) * limit;
			List<String> touxiang = servlentimp.selectPhotograph(user1.getId(), xiangce , limit, offset);
			map.put("touxiang", touxiang);
			map.put("currentPage", currentPage);
			map.put("limit", limit);
			map.put("totalPage", totalPage);
			
			
			response.setContentType("application/json");
			PrintWriter prin = 	response.getWriter();
			prin.write(JSON.toJSONString(map));
			prin.flush();
		
	}
	//查询用户个人资料
	@RequestMapping(value = "selectUserMaterial", method = RequestMethod.GET)
	public String selectUserMaterial(HttpServletResponse response,HttpServletRequest request, HttpSession session){
		User user = (User) session.getAttribute("User");
		int id = user.getId();
		//查询用户资料
		UserMaterial userMaterial =servlentimp.selectUserMaterial(id);
		//查询用户头像路径
		String imgpath =servlentimp.selectTouxiang(id);
		request.setAttribute("UserMaterial", userMaterial);
		request.setAttribute("imgpath", imgpath);
		return "userziliao";
	}
	//获得相册名字然后在返回上传照片页面
	@RequestMapping(value = "getXiangceName/{xiangceName}")
	public String getXiangceName(@PathVariable String xiangceName,HttpServletResponse response,HttpServletRequest request, HttpSession session){	
		try {
			String xiangceName1= new String (xiangceName.getBytes("ISO-8859-1"), "UTF-8");
			 request.setAttribute("xiangceName", xiangceName1);
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "dom";
	}
	}

