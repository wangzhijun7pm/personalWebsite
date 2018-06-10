<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/register.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/animate.css" />
<style type="text/css">

body{		
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/11.jpg ) no-repeat;
	background-size:100% 100%;
	}
#anniu{
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/2222.jpg ) no-repeat;
	background-size:100% 100%;
	font-size: 14px;
	border: 0;
	height: 40px;
	width: 100px;

}	



</style>
</head>

<body>
	<header class="header"> <a href="#screen-1" class="header__logo">精彩生活</a> 
	<nav class="header__nav">
	   <a href="<%=request.getContextPath() %>/index" class="header__nav-item header__nav-item_i_2">首页</a>
        <a href="<%=request.getContextPath() %>/NewFile" class="header__nav-item header__nav-item_i_3" onclick="return dianjishijian()">相册</a>
        <a href="<%=request.getContextPath() %>/rizhi" class="header__nav-item header__nav-item_i_4">心情日记</a>
        <a href="<%=request.getContextPath() %>/selectUserMaterial" class="header__nav-item header__nav-item_i_5" onclick="return dianjishijian()">个人资料</a>
			<input type="hidden" value="${User}" id="photo1"/>

	</nav> </header>
<div id="beijing">
<div class="p_left" style="margin-top: 50px;">
<h1 >欢迎注册！</h1>
</div>
<div class="p_right" style="margin-top: 100px;">
<h5 >当前时间是：<span id="shiji"></span></h5>
</div>
<div class="clear"></div> 
</div>
<h5 style="margin-right: 30%">每一天乐在分享！~</h5>
<form action="registerAdd" id="a" onsubmit="return CheckPost()" method="post">

<table cellpadding="0" cellspacing="40"  border="0" style="margin-left: 35%" >
	<tr>
	<td>
	用户名:<input type="text" name="userName" value="呢称" id="userName" onfocus="jujiao('userName','c','1、由字母、数字、下划线、点、减号组成<br/>2、只能以数字、字母开头或结尾，且长度为6-18')" onblur="checkName('userName','c')"/>
	</td>
	<td >
	<div id="c" ></div>
	</td>
	 </tr>
	 
	 <tr>
	 <td>
	密码：<input type="password" name="password" value="密码" id="password" onfocus="jujiao('password','d','1、必须是字母，数字或符号两种以上，且长度为6-20')" onblur="checkPassword('password','d')"/>
	</td>
	<td>
	<div id="d" ></div>
	</td>
	</tr>
	
	<tr>
	<td>
	<input id="anniu" type="submit"  value="立即注册"/>
	</td>
	</tr>
	</table>
   
   
</form>
<footer class="footer"> © 2017 imooc.com 京ICP备13046642号 </footer>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/register.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/js/shiji.js"></script>  

</body>
</html>