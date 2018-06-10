<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/animate.css" />
<style type="text/css">
	body {
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/11.jpg ) no-repeat;
	background-size:100% 100%;
	
}
</style>
		
</head>
<body  style="font-size: 12px;">
	<header class="header"> 
	<a href="#screen-1" class="header__logo">精彩生活</a> 
	<nav class="header__nav"> <a href="<%=request.getContextPath()%>/index" class="header__nav-item header__nav-item_i_2">首页</a> 
	<a href="<%=request.getContextPath()%>/NewFile" class="header__nav-item header__nav-item_i_3" onclick="return dianjishijian()">相册</a> 
	<a href="<%=request.getContextPath()%>/rizhi" class="header__nav-item header__nav-item_i_4">心情日记</a> 
	<a href="<%=request.getContextPath()%>/selectUserMaterial" class="header__nav-item header__nav-item_i_5" onclick="return dianjishijian()">个人资料</a> </nav> </header>
	<input type="hidden" value="${User}" id="photo1"/>


	<table border="0" style="margin:auto ; margin-top:200px; font-size:16px; width:40%; ">
		<tr>
<!-- 			<td colspan="2" >个人头像&nbsp;</td> -->
			<td  colspan="2"><img width="100px" height="150px;" src="<%=request.getContextPath() %>${imgpath}" /></td>
		</tr>
		<tr>
			<td colspan="2"><hr/></td>
		</tr>
		<tr>
			<td>昵称</td>
			<td>${UserMaterial.nickname}</td>
		</tr>
		<tr>
			<td>性别</td>
			<td>${UserMaterial.sex}</td>
		</tr>
		<tr>
			<td>生日</td>
			<td>${UserMaterial.birthday}</td>
		</tr>
		<tr>
			<td>血型</td>
			<td>${UserMaterial.bloodType}</td>
		</tr>
		<tr>
			<td>爱好</td>
			<td>${UserMaterial.hobby}</td>
		</tr>
		<tr>
			<td>职业</td>
			<td>${UserMaterial.profession}</td>
		</tr>
		<tr>
			<td>家乡</td>
			<td>${UserMaterial.hometown}</td>
		</tr>
		<tr>
			<td>学校</td>
			<td>${UserMaterial.school}</td>
		</tr>
		<tr>
			<td>公司</td>
			<td>${UserMaterial.company}</td>
		</tr>
		<tr>
			<td>手机</td>
			<td>${UserMaterial.cellphone}</td>
		</tr>
		<tr>
			<td>邮箱</td>
			<td>${UserMaterial.mailbox}</td>
		</tr>
		<tr>
			<td>个性签名</td>
			<td>${UserMaterial.personalizedSignature}</td>
		</tr>
		<tr>
			<td>个人说明</td>
			<td>${UserMaterial.personalDescription}</td>
		</tr>
		<tr><td colspan="2"><hr/></td></tr>
	</table>


	<div style="clear:both;"></div>
	<footer class="footer"> © 2017 imooc.com 京ICP备13046642号 </footer>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/index.js"></script>
</body>
</html>