<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<%-- <audio src="<%=request.getContextPath() %>/music/chaoshen.mp3" autoplay="autoplay"> --%>
	
	</audio>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css"/>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/animate.css"/>

	
  </head>
  
 
<body onload="yanzhengdenglu()">
  <div class="box">
    <header class="header">
      <a href="#screen-1" class="header__logo">精彩生活</a>
      
      <div id="xxx" class="oo">
      <form class="header__lo" action="denglu" method="get"><a href="register" >注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    帐号：<input id="userName" type="text" name="userName">  密码：<input id=password type="password" name="password" > 
    <input type="submit" value="登录" >
     </form> 
       </div>
    
      <nav class="header__nav">
 
        <a href="<%=request.getContextPath() %>/index" class="header__nav-item header__nav-item_i_2">首页</a>
        <a href="<%=request.getContextPath() %>/NewFile" class="header__nav-item header__nav-item_i_3" onclick="return dianjishijian()">相册</a>
        <a href="<%=request.getContextPath() %>/rizhi" class="header__nav-item header__nav-item_i_4">心情日记</a>
        <a href="<%=request.getContextPath() %>/selectUserMaterial" class="header__nav-item header__nav-item_i_5" onclick="return dianjishijian()">个人资料</a>
			<input type="hidden" value="${User.userName}" id="photo1" />
			
      </nav>
    </header>
 

          <section class="s2">
            <div class="s2__wrap">
              <div class="s2__heading">优美自然，古色古香</div>
              <div class="s2__subheading">自由的地方，这里可以让你忘记时间
                <br>翠色山峦下,商居掩古城。花溪迎曲巷,岁月久悠增。</div>
                <div class="s2__phone"><embed src="<%=request.getContextPath() %>/music/ziguang.mkv" width="100%" height="100%"autoplay="true" controller="false">
</embed></div>
                <div class="s2__features">
                  <div class="s2__features-item">
                    <span class="s2__features-item-number s2_1 ">
                     	 放飞
                    </span>自我
                  </div>
                  <div class="s2__features-item">
                    <span class="s2__features-item-number s2_2">
                   	  享受
                    </span>生活
                  </div>
                  <div class="s2__features-item">
                    <span class="s2__features-item-number s2_3">
                     	 寻找
                    </span>梦想
                  </div>
                  
                </div>
              </div>
            </section>

            <section class="screen-4">
              <div class="screen-4__wrap">
                <div class="screen-4__heading">漫步古城感受闲适光阴里的一花一木</div>
                <div class="screen-4__subheading">让午后的一米阳光一下子照进心中最柔软的地方</div>
                <div class="screen-4__type">

                  <div class="screen-4__type-item screen-4__type-item_i_1 s2__features-item">
                    <div class="screen-4__type-item-name">惠州</div>
                    <div class="screen-4__type-item-storage">奥地利小镇</div>
                  </div>

                  <div class="screen-4__type-item screen-4__type-item_i_2 s2__features-item">
                    <div class="screen-4__type-item-name">丽江</div>
                    <div class="screen-4__type-item-storage">玉龙雪山索道</div>
                  </div>
                  <div class="screen-4__type-item screen-4__type-item_i_3 s2__features-item">
                    <div class="screen-4__type-item-name">深圳</div>
                    <div class="screen-4__type-item-storage">帝王大厦夜景</div>
                  </div>

                  <div class="screen-4__type-item screen-4__type-item_i_4 s2__features-item">
                    <div class="screen-4__type-item-name">厦门</div>
                    <div class="screen-4__type-item-storage">中华街</div>
                  </div>
                </div>
                </div>
              </section>
       
             

              <footer class="footer">
               © 2017 imooc.com  京ICP备13046642号
             </footer>
           

          </div>
          <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>
        </body>
</html>
