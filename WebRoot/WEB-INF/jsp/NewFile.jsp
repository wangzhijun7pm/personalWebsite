<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/webuploader.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/index.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/animate.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/webuploader.min.js"></script>
<style type="text/css">
body {
	text-align: center;
	background: url(<%=request.getContextPath()%>/img/123.jpg );
	height: 100%;
	width: 100%;
}

#uploader-demo {
	margin: 0px auto;
	width: 1050px;
	height: 882px;
	background-color: #FFD9EC;
	box-shadow: 0 0 3px #66b3ff;
	border-radius: 5px;
}
 #desc  {
	width: 1050px;
	height: 852px;
	box-shadow: 0 0 10px #66b3ff;
	margin: 0px auto;
	background-color: #ffc1e0;
	border-radius: 5px;
	position:relative;
}

#ao  {
	
	width: 1050px;
	height: 1052px;
	box-shadow: 0 0 10px #66b3ff;
	margin: 100px auto;
	background-color: #ffc1e0;
	border-radius: 5px;
	position:relative;
}
#filePicker,#btn {
	float: left;
	height: 42px;
	width: 105px;
}

.thumbnail {
	width: 150px;
	height: 150px;
	float: left;
	padding-top: 10px;
	background-color: #BE77FF;
	box-shadow: 0 0 10px #66b3ff;
}

#guan {
	float: right;
	height: 42px;
	width: 100px;
}

#img {
	width: 120px;
	height: 120px;
	text-align: center;
	padding-top: 10px;
}

#s {
	box-shadow: 0 0 3px #000;
	height: 42px;
	background-color: #ff66ff;
}



#desc-doc {
	width: 1050px;
	height: 52px;
	box-shadow: 0 0 10px #000;
	background-color: #93ff93;
	border-radius: 5px;
	margin: 150px auto 0px;
}

#desc-doc-h2 {
	width: 150px;
	height: 52px;
	box-shadow: 0 0 5px #66b3ff;
	background-color: #999;
	float: left;
}

#win {
	POSITION: absolute;
	left: 50%;
	top: 50%;
	width: 300px;
	height: 200px;
	margin-left: -200px;
	margin-top: -120px;
	background-color: #ffffff;
	border-radius: 5px;
	box-shadow: 0 0 10px #66b3ff;
}

#win-guanbi {
	width: 300px;
	height: 30px;
}

#win-guanbi-ai {
	width: 60px;
	height: 28px;
	margin-right: 5px;
	margin-top: 5px;
	float: right
}
#ao-guanbi-ai{
	width: 60px;
	height: 28px;
	margin-right: 5px;
	margin-top: 5px;
	float: right
	}
#ao-guanbi{height: 40px;background-color: #ffc1e0; }	
.xiance_a {
	width: 260px;
	height: 380px;
	float: left;
}

.xiance_b {
	width: 220px;
	height: 300px;
	background-color: #ffffff;
	margin: 20px;
}

.xiance_c {
	margin-left: 20px;
}

#imga{
	margin:15px;
	float: left;
	margin-left:30px;
	margin-right:0px;
}
#fenye,#xuanye{
	height:20px;

	position:absolute;right:100px;bottom:50px;
}

</style>
<title>Insert title here</title>
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

	<div style="height:1191px;overflow-x:visible;border: 0px solid red;">

		<div id="desc-doc">

			<input type="button" id="desc-doc-h2" onclick="openLogin()"
				value="创建相册">
		</div>
		<div id="desc">

			<c:forEach items="${map.photo}" var="List">
				<div class="xiance_a">
					<div class="xiance_b">
						 <a href="#" class="mao"  >查看相册</a>
						 <div class=qwe>
						 	<img alt="#"  width='160' height='230' src="<%=request.getContextPath()%>${List.xiangcePhot}"/>
						 </div>
					</div>

					<div class="xiance_c">
					
						<a href="<%=request.getContextPath()%>/getXiangceName/${List.xiangce}" class="show">${List.xiangce}</a>
					</div>
				</div>
			</c:forEach>

			<div id=win style="display:none;">
				<div id="win-guanbi">
					<div id="win-guanbi-ai">
						<a href="javascript:closeLogin();"><input type="button" 
							value="关闭"> </a>
					</div>
				</div>
				<div>
					<h3>请输入相册名字</h3>
				</div>
				<form action="addphoto" method="post">

					<input type="text" name="xiangce" ><br /> <br /> <br /> <input
						type="submit" value="确定">
				</form>

			</div>
				<div id="fenye">
				<input type="hidden" id="totalPage1" value=${map.totalPage1 } name="totalPage1">
				<a href="<%=request.getContextPath()%>/NewFile" id="shouye" >首页</a>
				<a href="<%=request.getContextPath()%>/xiayiye/${map.danqian }" id="xiayiye" >下一页</a>
				<a id="danqian" name="danqian">${map.danqian }</a>
				<a href="<%=request.getContextPath()%>/shangyiye/${map.danqian }" id="shangyye">上一页</a>
				<a href="<%=request.getContextPath()%>/weiye" id="weiye" >尾页</a>
				</div>
		</div>
		
		<div id="ao" style="display: none;border: 0px solid yellow;" >
			<div id="ao-guanbi">
				<a id="ao-guanbi-ai" href="#"><input id="aaa" type="button"
							value="关闭"> </a>
			</div>
			<div id="ao1">

						
			</div>
					<div id="xuanye">
						<a href="#" id = "nextPage0">首页</a>
						<a href="#" id = "nextPage1">下一页</a>
						<a href="#" id="currentPage" >1</a>
						<a href="#" id = "nextPage2">上一页</a>
						<a href="#" id = "nextPage3">尾页</a>	
						</div>
		</div>
			
	</div>
	<div id="abc" ></div>
	
	
	<footer class="footer"> © 2017 imooc.com 京ICP备13046642号 </footer>
	<input type="hidden" value="${xiangceName}" id="xiangceNameInput" />	
<!-- 		<a href="#" id="xiangceNameInput1" >"${xiangceName}"</a>	 -->
	<input type="hidden" value="" id="totalPage"/>
	<input type="hidden" value="" id="xiangce" />




	<script>
function openLogin(){
   document.getElementById("win").style.display="";
}
function closeLogin(){
   document.getElementById("win").style.display="none";
}


</script>

	<script>
	$(function(){
		$("#desc-doc-h2").click(function(){
			$("#uploader-demo").hide();
			$("#desc").show();
		});
		
		$("#guan").click(function(){
			$("#uploader-demo").hide();
			$("#ao").hide();
			$("#desc").show();
		});
		
		$(".show").click(function(){
			$("#uploader-demo").show();
			$("#ao").hide();
			$("#desc").hide();
		});
		
		$(".mao").click(function(){
			$("#uploader-demo").hide();
			$("#ao").show();
			$("#desc").hide();
			$("#desc-doc").hide();
		});
		
		$("#aaa").click(function(){
			$("#uploader-demo").hide();
			$("#ao").hide();
			$("#desc").show();
			$("#desc-doc").show();
		});
		
	});
</script>


		
	<script type="text/javascript">
	
	$(function() {
		
		$(".mao").click(function(){
// 			$(this) : 值当前点击的对象
// 			找到当前点击对象的父亲标签的兄弟标签的子标签 并且这个子标签是a标签    然后获取text值
			var xiangce = $(this).parent().siblings(".xiance_c").find("a").text();
			$("#xiangce").val(xiangce);
			var currentPage = $("#currentPage").text();
			var param = {xiangce:xiangce,currentPage:currentPage};
			ajaxReq(param);
		});
	
		//点击下一页
		$("#nextPage1").click(function(){
			//获取当前页
			var currentPage = $("#currentPage").text();
			currentPage++;
			var totalPage = $("#totalPage").val();
			//parseInt(totalPage)将字符串转换成整数
			if(currentPage>parseInt(totalPage)){
				return;
			}
			var xiangce = $("#xiangce").val();
			var param = {xiangce:xiangce,currentPage:currentPage};
			ajaxReq(param);
		});
		
		//首页
		$("#nextPage0").click(function(){
			var currentPage=1;
			var totalPage = $("#totalPage").val();
// 			parseInt(totalPage)将字符串转换成整数
			if(currentPage>parseInt(totalPage)){
				return;
			}
			var xiangce = $("#xiangce").val();
			var param = {xiangce:xiangce,currentPage:currentPage};
			ajaxReq(param);
		});
		
		//上一页
		$("#nextPage2").click(function(){
		//获取当前页
			var currentPage = $("#currentPage").text();
			currentPage--;
			var totalPage = $("#totalPage").val();
			//parseInt(totalPage)将字符串转换成整数
			if(currentPage>parseInt(totalPage)){
				return;
			}
			var xiangce = $("#xiangce").val();
			var param = {xiangce:xiangce,currentPage:currentPage};
			ajaxReq(param);
		});
		
		//尾页
		$("#nextPage3").click(function(){
			var currentPage = $("#totalPage").val();
			var totalPage = $("#totalPage").val();
			//parseInt(totalPage)将字符串转换成整数
			if(currentPage>parseInt(totalPage)){
				return;
			}
			var xiangce = $("#xiangce").val();
			var param = {xiangce:xiangce,currentPage:currentPage};
			ajaxReq(param);
		});
	
		function ajaxReq(param){
				$.ajax({
				url : "selectzhaopian",
				data:param,
				type : "post",
				dataType : "json",
				success:function(data){
					var photograph="" ;
					var photograph1="" ;
					var beanList = data.touxiang;
// 					console.log(beanList);
					//把返货的当前页保存到#currentPage标签
					$("#currentPage").html(data.currentPage);
					//把返货的总页数保存到##totalPage标签
					$("#totalPage").val(data.totalPage);
					
					var baseUrl = "<%=request.getContextPath()%>";

					for ( var i = 0; i < beanList.length; i++) { //遍历，动态赋值
						var img = beanList[i];
						var imgUrl = baseUrl + img;					
						photograph += "<a id='123' href='"+imgUrl+"' onclick='imgUrl(this)' >"+"<img id='imga' width='160' height='240' src='"+imgUrl+"'  title='点击查看原图'/>"+"</a>" ; //动态添加数据  
// 						photograph1 += "<div style='display: none;border: 0px solid yellow;' id='"+imgUrl+1+"'>"+"<img  src='"+imgUrl+"' />"+"</div>" ;
	
					}
					
					$("#ao1").html(photograph);
					$("#abc").html(photograph1);
				},
				error : function(data) {//当请求失败，执行次函数  data为后台返回人数据
					alert("fail");
					
				}
			});
		};
	
	 });
// 				function imgUrl(obj){
				 			
//   								alert(	document.getElementById(obj.id));
// 											}
 </script>


	<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
</body>
</html>