<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css"/>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/animate.css"/>
  <style type="text/css">
  			body {
  		
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/11.jpg ) no-repeat;
	background-size:100% 100%;
	
}
  </style>
  
</head>
<body   >
		<header class="header"> <a href="#screen-1" class="header__logo">精彩生活</a> 
		 		<nav class="header__nav">
		        <a href="<%=request.getContextPath() %>/index" class="header__nav-item header__nav-item_i_2">首页</a>
		        <a href="<%=request.getContextPath() %>/NewFile" class="header__nav-item header__nav-item_i_3" onclick="return dianjishijian()">相册</a>
		        <a href="<%=request.getContextPath() %>/rizhi" class="header__nav-item header__nav-item_i_4">心情日记</a>
		        <a href="<%=request.getContextPath() %>/selectUserMaterial" class="header__nav-item header__nav-item_i_5" onclick="return dianjishijian()">个人资料</a>
					<input type="hidden" value="${User}" id="photo1"/>
		      </nav>
      </header>
		<div style="text-align:center;margin-left: 10%;margin-right: 10%; margin-top: 100px; 	height:1000px;" >
			<div style="width: 15%;margin: 0 auto;"><a href="<%=request.getContextPath() %>/addrizhi" onclick="return dianjishijian()"><h1>发表日志</h1></a></div><br/>
		
			<c:forEach items="${listLog}" var="List">
				<table style="margin: 0 auto;" >
					<tr>
						<td align="left" height="50px"><a href="<%=request.getContextPath() %>/rizhineirong/${List.rizhiId}${List.touxiang}/${List.nickname}">${List.rizhiName}</a></td>
						<td >发表者:&nbsp;&nbsp;&nbsp;&nbsp;${List.nickname}:</td>
						<td>发表时间:${List.rizhiTime}</td>
					</tr>
					<tr>
					<td><div class="xian "style="width:40%;padding:0 200px; border-top: solid gray" ></div></td>
					<td><div class="xian "style="width:20%;padding:0 100px; border-top: solid gray" ></div></td>
					<td><div class="xian "style="width:20%;padding:0 100px; border-top: solid gray" ></div></td>
					</tr>
				</table>
			</c:forEach>
		</div>
		<footer class="footer"> © 2017 imooc.com  京ICP备13046642号 </footer>
	   <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>
</body>
</html>