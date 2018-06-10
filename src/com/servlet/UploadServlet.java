package com.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.alibaba.fastjson.JSON;
import com.po.LogTable;
import com.po.Photo;
import com.po.Reply;
import com.po.Touxiang;
import com.po.User;
import com.po.UserMaterial;
import com.service.Servlentimp;

@Controller
public class UploadServlet extends HttpServlet {
	@Resource(name = "Servlentimp")
	private Servlentimp servlentimp;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String denglu(HttpServletRequest request) {
		return "register";
	}
	
	//用户注册
	@RequestMapping(value = "registerAdd", method = RequestMethod.POST)
	public String zhuce(HttpServletRequest request, HttpSession session) {
		User user = new User();
		user.setUserName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		servlentimp.userAdd(user);
//		session.setAttribute("User", user);
		return "yonghuziliao";
	}
	
	//保存用户资料
	@RequestMapping(value = "UploadServlet", method = RequestMethod.POST)
	public String addsave(HttpServletRequest request,
			@RequestParam MultipartFile uoloadingfile, HttpSession session) {
		// ָ���ϴ�λ��
		if (!uoloadingfile.isEmpty()) {
			// ��ȡԭ�ļ���
			String fileName = uoloadingfile.getOriginalFilename();
			// ��ȡ��չ��
			String suffix = fileName.substring(fileName.lastIndexOf('.'));
			// ���ļ���Ψһ��
			String newFileName = new Date().getTime() + suffix;

			File file = new File(request.getSession().getServletContext()
					.getRealPath("/")
					+ "touxiang/" + newFileName);
			System.out.println(file.getAbsolutePath());
			try {
				// ((FileItem) uoloadingfile).write(file);
				FileUtils.copyInputStreamToFile(uoloadingfile.getInputStream(),
						file);
			} catch (Exception e) {

				e.printStackTrace();
			}
			User user = (User) session.getAttribute("User");
		
			User user1 = servlentimp.checkId(user);
			Touxiang touxiang = new Touxiang();
			touxiang.setUser_id(user1.getId());
			
			touxiang.setImg_name(fileName);
			touxiang.setImg_path("/touxiang/" + newFileName);
			servlentimp.touxiangAdd(touxiang);

			// �����û�����
			UserMaterial userMaterial = new UserMaterial();

			String nickname = request.getParameter("nickname");
			String[] checkbox = request.getParameterValues("sex");
			String typeString = "";
			for (int i = 0; i < checkbox.length; i++) { // ��checkbox���б���
				typeString += checkbox[i] + ",";
			}
			typeString = typeString.substring(0, typeString.length() - 1); // ��ȡ�����һ������
			String sex = typeString;
			String nian = request.getParameter("nian");
			String yue = request.getParameter("yue");
			String ri = request.getParameter("ri");
			String birthday = nian + "-" + yue + "-" + ri;
			String bloodType = request.getParameter("bloodType");
			String[] aihao = request.getParameterValues("aihao");
			String hobby1 = "";
			for (int i = 0; i < aihao.length; i++) { // ��checkbox���б���
				hobby1 += aihao[i] + ",";
			}
			hobby1 = hobby1.substring(0, hobby1.length() - 1); // ��ȡ�����һ������
			String hobby = hobby1;
			String profession = request.getParameter("profession");
				String shen =  request.getParameter("province");
				String shi = request.getParameter("city");
				String qu = request.getParameter("country");
				String jie = request.getParameter("street");
			String hometown = shen+" "+ shi +" "+ qu+" "+jie;
			String school = request.getParameter("school");
			String company = request.getParameter("company");
			String cellphone = request.getParameter("cellphone");
			String mailbox = request.getParameter("mailbox");
			String personalizedSignature = request
					.getParameter("personalizedSignature");
			String personalDescription = request
					.getParameter("personalDescription");
			int userid = user1.getId();
		
			userMaterial.setBirthday(birthday);
			userMaterial.setBloodType(bloodType);
			userMaterial.setCellphone(cellphone);
			userMaterial.setCompany(company);
			userMaterial.setHobby(hobby);
			userMaterial.setHometown(hometown);
			userMaterial.setMailbox(mailbox);
			userMaterial.setNickname(nickname);
			userMaterial.setPersonalDescription(personalDescription);
			userMaterial.setPersonalizedSignature(personalizedSignature);
			userMaterial.setProfession(profession);
			userMaterial.setSchool(school);
			userMaterial.setSex(sex);
			userMaterial.setUserid(userid);
			servlentimp.UserMaterialAdd(userMaterial);
		}
		return "index";
	}
	
	
	//验证登录是否成功
	@RequestMapping(value="denglu",method=RequestMethod.GET)
	public String logig( HttpServletRequest request, HttpSession session){
	 List<User> user= servlentimp.checkUser(); 
	 String  password=request.getParameter("password");
	 String  userName=request.getParameter("userName");
	 String flag = "";
	 for(User s:user){
		 if( s.getPassword().equals(password)&&s.getUserName().equals(userName)){
			 System.out.println("登录成功!");
			 session.setAttribute("User", s);
			 flag = "index";
			 
			 break;
		 }else{
			 System.out.println("用户名或密码错误!");
			 flag = "error";
		 }	
	 }
	
	 return flag;
	 }
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String logig1(){
		return "index";
	}
	
	//相册首页
	@RequestMapping(value="NewFile")
	public String logig2(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		Map<String, Object> map = new HashMap<String, Object>();
	
			
		
		User user = (User) session.getAttribute("User");
		User user1 = servlentimp.checkId(user);
		//相册总个数
		 int count = servlentimp.selectUserXiangce(user1.getId());
		 if(count==0){
			 System.out.println("没有相册哦");
		 }
			 
		 //显示6条数据
		 int limit = 8;
		//总页数
		int totalPage1 = count % limit == 0 ? count / limit : count / limit + 1;
		//当前页
		int danqian=1;	
 
		//从第offset条数据开始查
		int offset1 =(danqian-1)*limit;
		List<Photo> photo = servlentimp.selectPhoto(user1.getId(),limit,offset1);		
		List list =new ArrayList<>();
		for(Photo p:photo){
			//查询用户每个相册的照片的路径
			List<String> xiangcePhotograph= servlentimp.selectXiangcePhotograph(user1.getId(), p.getXiangce());
			Map<String, Object> sum = new HashMap<String, Object>();
			if (xiangcePhotograph.size() > 0) {
				 sum.put("xiangcePhot",xiangcePhotograph.get(0));
			}else{
				sum.put("xiangcePhot","/img/20171120143558.png");
			}
			 sum.put("xiangce",p.getXiangce());	
			 list.add(sum);
			}	
		map.put("photo", list);
		map.put("totalPage1", totalPage1);
		map.put("danqian", danqian);
		request.setAttribute("map", map);
		System.out.println("danqian"+danqian);
		System.out.println("totalPage1"+totalPage1);
		return "NewFile";
	
	}
	
	//相册下一页
	@RequestMapping(value="xiayiye/{danqian}")
	public String logig3(@PathVariable int danqian,  HttpServletRequest request,HttpSession session,HttpServletResponse response) {	
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("User");
		//通过用户名跟密码获取用户ID
		User user1 = servlentimp.checkId(user);
		//相册总个数
		 int count = servlentimp.selectUserXiangce(user1.getId());
		 //每页显示8条数据
		 int limit = 8;
		//总页数
		int totalPage1 = count % limit == 0 ? count / limit : count / limit + 1;
		//当前页
		if((danqian+1)>totalPage1){
			danqian=totalPage1;
		}else{
			danqian=danqian+1;
		}			
		//从第offset条数据开始查
		int offset1 =(danqian-1)*limit;
		List<Photo> photo = servlentimp.selectPhoto(user1.getId(),limit,offset1);
		List list =new ArrayList<>();
		for(Photo p:photo){
			//查询用户每个相册的照片的路径
			List<String> xiangcePhotograph= servlentimp.selectXiangcePhotograph(user1.getId(), p.getXiangce());
			Map<String, Object> sum = new HashMap<String, Object>();
			if (xiangcePhotograph.size() > 0) {
				 sum.put("xiangcePhot",xiangcePhotograph.get(0));
			}else{
				sum.put("xiangcePhot","/img/20171120143558.png");
			}
			 sum.put("xiangce",p.getXiangce());	
			 list.add(sum);
			}
		map.put("photo", list);
		map.put("totalPage1", totalPage1);
		map.put("danqian", danqian);
		request.setAttribute("map", map);
		return "NewFile";
	}
	//相册上一页
	@RequestMapping(value="shangyiye/{danqian}")
	public String logig4(@PathVariable int danqian,  HttpServletRequest request,HttpSession session,HttpServletResponse response) {	
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("User");
		User user1 = servlentimp.checkId(user);
		//相册总个数
		 int count = servlentimp.selectUserXiangce(user1.getId());
		 //每页显示6条数据
		 int limit = 8;
		//总页数
		int totalPage1 = count % limit == 0 ? count / limit : count / limit + 1;
		//当前页
		if((danqian-1)<=0){
			danqian=1;
		}else{
			danqian=danqian-1;
		}			
		//从第offset条数据开始查
		int offset1 =(danqian-1)*limit;
		List<Photo> photo = servlentimp.selectPhoto(user1.getId(),limit,offset1);
		List list =new ArrayList<>();
		for(Photo p:photo){
			//查询用户每个相册的照片的路径
			List<String> xiangcePhotograph= servlentimp.selectXiangcePhotograph(user1.getId(), p.getXiangce());
			Map<String, Object> sum = new HashMap<String, Object>();
			if (xiangcePhotograph.size() > 0) {
				 sum.put("xiangcePhot",xiangcePhotograph.get(0));
			}else{
				sum.put("xiangcePhot","/img/20171120143558.png");
			}
			 sum.put("xiangce",p.getXiangce());	
			 list.add(sum);
			}
		map.put("photo", list);
		map.put("totalPage1", totalPage1);
		map.put("danqian", danqian);
		request.setAttribute("map", map);
		return "NewFile";
	}
	//相册尾页
	@RequestMapping(value="weiye")
	public String logig5( HttpServletRequest request,HttpSession session,HttpServletResponse response) {	
		Map<String, Object> map = new HashMap<String, Object>();
		User user = (User) session.getAttribute("User");
		User user1 = servlentimp.checkId(user);
		//相册总个数
		 int count = servlentimp.selectUserXiangce(user1.getId());
		 //每页显示8条数据
		 int limit = 8;
		//总页数
		int totalPage1 = count % limit == 0 ? count / limit : count / limit + 1;		
		//从第offset条数据开始查
		int offset1 =(totalPage1-1)*limit;
		List<Photo> photo = servlentimp.selectPhoto(user1.getId(),limit,offset1);
		List list =new ArrayList<>();
		for(Photo p:photo){
			//查询用户每个相册的照片的路径
			List<String> xiangcePhotograph= servlentimp.selectXiangcePhotograph(user1.getId(), p.getXiangce());
			Map<String, Object> sum = new HashMap<String, Object>();
			if (xiangcePhotograph.size() > 0) {
				 sum.put("xiangcePhot",xiangcePhotograph.get(0));
			}else{
				sum.put("xiangcePhot","/img/20171120143558.png");
			}
			 sum.put("xiangce",p.getXiangce());	
			 list.add(sum);
			}
		map.put("photo", list);
		map.put("totalPage1", totalPage1);
		map.put("danqian", totalPage1);
		request.setAttribute("map", map);
		return "NewFile";
	}
	
	
	@RequestMapping(value="addrizhi")
	public String logig8( HttpServletRequest request,HttpSession session,HttpServletResponse response) {
		
		return "addrizhi";
	}
	
	//添加日志说说
	@RequestMapping(value="addrizhi1")
	public String logig7( HttpServletRequest request,HttpSession session,HttpServletResponse response) {
		String rizhiName = request.getParameter("rizhiName");
		String rizhiContent = request.getParameter("rizhiContent");
		User user = (User)  session.getAttribute("User");
		User user1 = servlentimp.checkId(user);
		LogTable logTable = new LogTable();
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String rizhiTime = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
			
			logTable.setRizhiContent(rizhiContent);
			logTable.setRizhiName(rizhiName);
			logTable.setRizhiTime(rizhiTime);
			logTable.setUserId(user1.getId());
		
			servlentimp.addLog(logTable);//保存到数据库
		
		return "redirect:/rizhi";  
	}
	@RequestMapping(value="rizhineirong/{rizhiId}/{upder}/{touxiang}/{nickname}")
	public String logig9(@PathVariable int rizhiId,@PathVariable String upder,@PathVariable String touxiang,  @PathVariable String nickname,
			HttpServletRequest request,HttpSession session,HttpServletResponse response) throws UnsupportedEncodingException {
			LogTable logTable = servlentimp.checkLog(rizhiId);
			String nickname1= new String (nickname.getBytes("ISO-8859-1"), "UTF-8");
//			request.setAttribute("nickname", nickname1);
			Map<String, Object> sum = new HashMap<String, Object>();
			String touxiang1= upder+"/"+touxiang;
			sum.put("rizhiId", rizhiId);//日志ID
			sum.put("touxiang", touxiang1);//用户头像
			sum.put("nickname", nickname1);//用户昵称
			sum.put("rizhiContent", logTable.getRizhiContent());//日志内容
			sum.put("rizhiTime", logTable.getRizhiTime());//发表日志时间
			sum.put("rizhiName", logTable.getRizhiName());//日志标题
		request.setAttribute("sum", sum);
		List replylist = new ArrayList<>();
		Map<String, Object> num = new HashMap<String, Object>();
		 List<Reply> list =	servlentimp.selectReply(rizhiId);
		 	if(list!=null){
		 			for(Reply reply:list){
		 				servlentimp.checkUser1(reply.getUserId());
		 				
		 				num.put("reply", reply);
		 				replylist.add(num);
		 			}
		 		}
		 	request.setAttribute("replylist", replylist);
		return "rizhineirong";
	}
	
	@RequestMapping(value="addhuifu")
	public void addhuifu(HttpServletRequest request,HttpSession session,HttpServletResponse response){
		Reply reply= new Reply();
		User user= (User) session.getAttribute("User");
		User user1= servlentimp.checkId(user);
		
		String replyContent = request.getParameter("rizhiContent");
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String replyTime = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		
		int logId = Integer.parseInt(request.getParameter("rizhiId"));
		
		reply.setLogId(logId);
		reply.setReplyContent(replyContent);
		reply.setReplyTime(replyTime);
		reply.setUserId(user1.getId());
		servlentimp.addReply(reply);
	}
	@RequestMapping(value="rizhi")
	public String logig6( HttpServletRequest request,HttpSession session,HttpServletResponse response) {
		List<LogTable> listLog = servlentimp.listLog();//全部日志说说
		List list =new ArrayList<>();
		String touxiang=null;
		UserMaterial nickname=null;
	
		if(listLog!=null||listLog.size()!=0){
			
		for(LogTable rizhi:listLog){
			Map<String, Object> sum = new HashMap<String, Object>();
			 touxiang = servlentimp.selectTouxiang(rizhi.getUserId());//查出用户头像
			 nickname = servlentimp.selectUserMaterial(rizhi.getUserId());//查出用户昵称
			 User user =	servlentimp.checkUser1(rizhi.getUserId());
			 if(touxiang==""||touxiang==null){	
					sum.put("touxiang", "/img/20171122140828.png");
				}else{
					sum.put("touxiang", touxiang);
				}
			 	
			 if(nickname!=null){	
				 		sum.put("nickname",nickname.getNickname() );
					}else{
						sum.put("nickname",user.getUserName() );
					}
			 sum.put("rizhiName", rizhi.getRizhiName());
			 sum.put("rizhiTime", rizhi.getRizhiTime());
			 sum.put("rizhiId", rizhi.getId());
			 list.add(sum );
			}
			
		}
		request.setAttribute("listLog", list);
		return "rizhi";
	}
}
						