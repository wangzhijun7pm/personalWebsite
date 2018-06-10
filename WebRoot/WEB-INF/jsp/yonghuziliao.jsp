<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/register.css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/index.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/animate.css" />
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

* {
	margin: 0;
	padding: 0;
}

#form {
	height: 800px;
	width: 500px;
	border: 0px;
	margin: auto;
}

.select {
	width: 92px;
}

.tdinput {
	width: 282px;
}

.table {
	margin-top: 50px;
	border-collapse: separate;
	border-spacing: 5px;
}

body {
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/11.jpg ) no-repeat;
	background-size:100% 100%;
	
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
		      </nav>
      </header>

	<div id="beijing">
		<h5>
			当前时间是：<span id="shiji"></span>
		</h5>
		<div id="form">

			<form action="UploadServlet" method="post" enctype="multipart/form-data">
				<table class="table">

					<tr>
						<td>
							<h4>完善资料</h4></td>
					</tr>
					<tr>
						<td>上传头像</td>
						<td><input type="file" name="uoloadingfile" /></td>
					</tr>
					<tr>
						<td>昵称</td>
						<td><input type="text" name="nickname" class="tdinput" /></td>

					</tr>
					<tr>
						<td>性别</td>
						<td><input type="radio" name="sex" value="男" checked="checked" />男 <input
							type="radio" name="sex" value="女" />女</td>
					</tr>
					<tr>
						<td>生日</td>
						<td><select name="nian" id="year" onfocus="getYear()"
							class="select">
								<option>年</option>
						</select> <select name="yue" id="month" onfocus="getMonth()" class="select">
								<option>月</option>
						</select> <select name="ri" id="day" class="select" onfocus="getDay()">
								<option>日</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>血型</td>
						<td><select id="xuexing" name="bloodType">
								<option>A型</option>
								<option>B型</option>
								<option>O型</option>
								<option>AB型</option>
								<option>其他血型</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>爱好</td>
						<td><input type="checkbox" name="aihao" value="户外运动" />户外运动
							<input type="checkbox" name="aihao" value="看书" />看书 <input
							type="checkbox" name="diaoyu" value="上网" />上网 <input
							type="checkbox" name="aihao" value="购物" />购物<br /> <input
							type="checkbox" name="aihao" value="看电影" />看电影 <input
							type="checkbox" name="aihao" value="健身" />健身 <input
							type="checkbox" name="aihao" value="美食" />美食 <input
							type="checkbox" name="aihao" value="逛街" />逛街 <input
							type="checkbox" name="aihao" value="其他" />其他</td>
					</tr>
					<tr>
						<td>职业</td>
						<td><input type="text" class="tdinput" name="profession" />
						</td>
					</tr>

					<tr>
						<td>家乡</td>
						<td><select id="sheng" name="province">

						</select> 省 <select id="shi" name="city">

						</select> 市<br /> <select id="xian" name="country">

						</select> 县 <select id="xiang" name="street">

						</select> 镇或街道</td>
					</tr>

					<tr>
						<td>学校</td>
						<td><input type="text" class="tdinput" name="school" /></td>
					</tr>
					<tr>
						<td>公司</td>
						<td><input type="text" class="tdinput" name="company" /></td>
					</tr>
					<tr>
						<td>手机</td>
						<td><input type="text" class="tdinput" name="cellphone" /></td>
					</tr>
					<tr>
						<td>邮箱</td>
						<td><input type="text" class="tdinput" name="mailbox" /></td>
					</tr>
					<tr>
						<td>个性签名</td>
						<td><textarea cols="38" rows="3" id="qianming"
								class="tdinput" name="personalizedSignature">  </textarea></td>
					</tr>
					<tr>
						<td>个人说明</td>
						<td><textarea cols="38" rows="5" id="shuoming"
								class="tdinput" name="personalDescription">  </textarea>
						</td>
					</tr>
					<tr>
						<td></td>
						<td align="center"><input type="submit" value="提交"
							style="width:200px;height:30px;" /></td>
					</tr>
				</table>
			</form>
		</div>
	    <footer class="footer">
               © 2017 imooc.com  京ICP备13046642号
             </footer>
           

          </div>
  <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/yonghuziliao.js"></script>
	<!-- 	<script type="text/javascript" -->
	<!-- 		src="<%=request.getContextPath()%>/js/diqu.js"></script> -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/shiji.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/jss/jquery.js" charset="UTF-8"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/jss/GlobalProvinces_main.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/jss/GlobalProvinces_extend.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/jss/initLocation.js"
		charset="UTF-8"></script>
	<script type="text/javascript" charset="UTF-8">
		$(function() {
			initLocation({
				sheng_val : "四川",
				shi_val : "成都",
				xian_val : "<?php echo $v['country']?>",
				xiang_val : "<?php echo $v['street']?>"
			});
		});
	</script>
</body>
</html>