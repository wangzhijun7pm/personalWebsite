<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/index.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/animate.css" />
<style type="text/css">
body {
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/11.jpg ) no-repeat;
	background-size: 100% 100%;
}
</style>
</head>
<body>
	<header class="header"> <a href="#screen-1"
		class="header__logo">精彩生活</a> <nav class="header__nav"> <a
		href="<%=request.getContextPath()%>/index"
		class="header__nav-item header__nav-item_i_2">首页</a> <a
		href="<%=request.getContextPath()%>/NewFile"
		class="header__nav-item header__nav-item_i_3"
		onclick="return dianjishijian()">相册</a> <a
		href="<%=request.getContextPath()%>/rizhi"
		class="header__nav-item header__nav-item_i_4">心情日记</a> <a
		href="<%=request.getContextPath()%>/selectUserMaterial"
		class="header__nav-item header__nav-item_i_5"
		onclick="return dianjishijian()">个人资料</a> <input type="hidden"
		value="${User}" id="photo1" /> </nav> </header>
	<div style="width:80%;margin:10%; border-top:1px solid #ddd;background-color: #FFFFFF;">
		<!-- 		<form action="<%=request.getContextPath()%>/addhuifu" method="post"> -->
		<h1>${sum.rizhiName}</h1>
		<div class="xian "style="width:70%;margin-left:20%; border-top:1px solid #ddd";></div>
		<table style="width: 100%">
			<tr>
				<td style="width: 20%">发布者：<img width="100%" height="100px" src="<%=request.getContextPath() %>/${sum.touxiang }">
					<h2 class="fabuzhe">${sum.nickname}</h2></td>
				<td style="font-size: 14px;"><div style="width: 85% ;text-align: left;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;内容： ${sum.rizhiContent}</div></br><p style="text-align: right; margin-right: 15%">发布时间：${sum.rizhiTime}</p></td>
			</tr>
			
			<tr>
				<td>
				</td>
				<td><div class="xian " style="width:88%;margin:0 auto; border-top:1px solid #ddd;margin-left: 0px"></div>
				</td>
			</tr>

		</table>
				 <!--PC和WAP自适应版-->
					<div id="SOHUCS" sid=""></div>
					 <script type="text/javascript"
						src="<%=request.getContextPath()%>/js/index.js"></script> 
						<script type="text/javascript">
							(function() {
								var appid = 'cysgt86t7';
								var conf = 'prod_b8910d565d3c89395b9bb9a80c185abc';
								var width = window.innerWidth
										|| document.documentElement.clientWidth;
								if (width < 960) {
									window.document
											.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id='
													+ appid
													+ '&conf='
													+ conf
													+ '"><\/script>');
								} else {
									var loadJs = function(d, a) {
										var c = document
												.getElementsByTagName("head")[0]
												|| document.head
												|| document.documentElement;
										var b = document
												.createElement("script");
										b.setAttribute("type",
												"text/javascript");
										b.setAttribute("charset", "UTF-8");
										b.setAttribute("src", d);
										if (typeof a === "function") {
											if (window.attachEvent) {
												b.onreadystatechange = function() {
													var e = b.readyState;
													if (e === "loaded"
															|| e === "complete") {
														b.onreadystatechange = null;
														a();
													}
												};
											} else {
												b.onload = a;
											}
										}
										c.appendChild(b);
									};
									loadJs(
											"https://changyan.sohu.com/upload/changyan.js",
											function() {
												window.changyan.api.config({
													appid : appid,
													conf : conf
												});
											});
								}
							})();
						</script>
	</div>
	<footer class="footer"> © 2017 imooc.com 京ICP备13046642号 </footer>
</body>
</html>