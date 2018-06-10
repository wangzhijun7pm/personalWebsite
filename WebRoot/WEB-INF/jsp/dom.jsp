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

	margin-top:150px;
	margin-left:20%;
	width: 1250px;
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
	width: 100%;
	height: 100%;
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
	<header class="header"> <a href="#screen-1"
		class="header__logo">精彩生活</a>  <nav
		class="header__nav"> <a href="javascript:;"
		class="header__nav-item header__nav-item_i_2">首页</a> <a
		href="javascript:;" class="header__nav-item header__nav-item_i_3">相册</a>
	<a href="javascript:;" class="header__nav-item header__nav-item_i_4">心情日记</a>
	<a href="javascript:;" class="header__nav-item header__nav-item_i_5">修改资料</a>

	</nav> </header>

	<div style="height:1191px;overflow-x:visible;border: 0px solid red;">
		<div id="uploader-demo">
			<!--dom结构部分-->
			<div id="s">
				<div id="filePicker" class="selectPhoto">选择照片</div>
				<input type="button" id="btn" value="开始上传" />
				<a href="<%=request.getContextPath()%>/NewFile"><input type="button" value="返回" id="guan" /></a>
			</div>
			<!--用来存放item-->
			<div id="fileList" class="uploader-list list"></div>
			<div id="upInfo"></div>
		</div>
		<input type="hidden" value="${xiangceName}" id="xiangceNameInput" />
	</div>	
	<footer class="footer"> © 2017 imooc.com 京ICP备13046642号 </footer>



	<script type="text/javascript">
	// 图片上传demo
	jQuery(function() {
		var xianceName = jQuery("#xiangceNameInput").val();

		var $ = jQuery,
        $list = $('#fileList'),
        // 优化retina, 在retina下这个值是2
        ratio = window.devicePixelRatio || 1,
        // 缩略图大小
        thumbnailWidth = 100 * ratio,
        thumbnailHeight = 100 * ratio,
        // Web Uploader实例
        uploader;
        // 初始化Web Uploader
        uploader = WebUploader.create({
	        // 自动上传。
	        auto: false,
	        // swf文件路径
	        swf:'<%=request.getContextPath()%>/js/Uploader.swf',
			// 文件接收服务端。
			server : <%=request.getContextPath()%>/+"uploader",
			formData : {xiangceName: xianceName},
			threads : '5', //同时运行5个线程传输
			fileNumLimit : '28', //文件总数量只能选择10个 
			// 选择文件的按钮。可选。
			pick : {
				id : '.selectPhoto', //选择文件的按钮
				multiple : true
			}, //允许可以同时选择多个图片
			// 图片质量，只有type为`image/jpeg`的时候才有效。
			quality : 90,

			//限制传输文件类型，accept可以不写 
			accept : {
				title : 'Images',//描述
				extensions : 'gif,jpg,jpeg,bmp,png,zip',//类型
				mimeTypes : 'image/gif,image/jpg,image/jpeg,image/bmp,image/png,image/zip'//mime类型
			}
		});

		// 当有文件添加进来的时候，创建img显示缩略图使用
		uploader.on('fileQueued', function(file) {
				var $li = $('<div id="' + file.id + '" class="file-item thumbnail">'
						+ '<img id="img"/>'
						+ '<div class="info"></div>'
						+ '</div>'), $img = $li
						.find('img');

				// $list为容器jQuery实例
				$list.append($li);

				// 创建缩略图
				// 如果为非图片文件，可以不用调用此方法。
				// thumbnailWidth x thumbnailHeight 为 100 x 100
				uploader.makeThumb(file, function(error,src) {
						if (error) {
							$img.replaceWith('<span>不能预览</span>');
							return;
						}
						$img.attr('src',src);
						},
						thumbnailWidth,
						thumbnailHeight);
		});

		// 文件上传过程中创建进度条实时显示。    uploadProgress事件：上传过程中触发，携带上传进度。 file文件对象 percentage传输进度 Nuber类型
		uploader.on('uploadProgress',function(file, percentage) {
				var $li = $('#' + file.id), $percent = $li.find('.progress span');
				// 避免重复创建
				if (!$percent.length) {
					$percent = $('<p class="progress"><span></span></p>').appendTo($li).find('span');
				}
				// 		alert(percentage);
				$percent.css('width',percentage* 100+ '%');
		});

		// 文件上传成功时候触发，给item添加成功class, 用样式标记上传成功。 file：文件对象，    response：服务器返回数据
		uploader.on('uploadSuccess',function(file, response) {
				$('#' + file.id).find("div").text("上传成功").css("color","#FF2D2D");
		});

		// 文件上传失败                                file:文件对象 ， code：出错代码
		uploader.on('uploadError',function(file, code) {
				var $li = $('#'+ file.id), $error = $li.find('div.error');
				// 避免重复创建
				if (!$error.length) {
					$error = $('<div class="error"></div>').appendTo($li);
				}

				$error.text('上传失败!');
		});

		// 不管成功或者失败，文件上传完成时触发。 file： 文件对象
		uploader.on('uploadComplete',function(file) {
				$('#' + file.id).find('.progress').remove();
		});

		//绑定提交事件
		$("#btn").click(function() {
			console.log("上传...");
			uploader.upload(); //执行手动提交
			console.log("上传成功");
			
			
		});
		
	});
	
</script>
	<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>
</body>
</html>