<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body ">

		<header class="header"> <a href="#screen-1" class="header__logo">精彩生活</a> 
		 		<nav class="header__nav">
		        <a href="<%=request.getContextPath() %>/index" class="header__nav-item header__nav-item_i_2">首页</a>
		        <a href="<%=request.getContextPath() %>/NewFile" class="header__nav-item header__nav-item_i_3" onclick="return dianjishijian()">相册</a>
		        <a href="<%=request.getContextPath() %>/rizhi" class="header__nav-item header__nav-item_i_4">心情日记</a>
		        <a href="<%=request.getContextPath() %>/selectUserMaterial" class="header__nav-item header__nav-item_i_5" onclick="return dianjishijian()">个人资料</a>
					<input type="hidden" value="${User}" id="photo1"/>
		      </nav>
      </header>

		
			<div style="width:100%;text-align:center; margin-top: 100px;">
			<form action="<%=request.getContextPath() %>/addrizhi1" method="post">
				<table style="margin:auto">
					<tr>
				
					<td height="100px;"><font size="6">	标题:</font><input type="text" name="rizhiName" style="height: 35px;"/> </td>
					</tr>
					<tr>
					
					<td> <textarea cols="80" rows="30" id="shuo"  name="rizhiContent">内容:</textarea> </td>
					</tr>
				
				</table>
				<input type="submit" value="发表" style="width: 150px;height: 60px;background: linear-gradient(black, #ffffff, black); margin-top: 50px; font-size: 20px "/>
			</form>
			</div>
	
	
	
	<footer class="footer"> © 2017 imooc.com  京ICP备13046642号 </footer>
	 <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>
</body>
</html>