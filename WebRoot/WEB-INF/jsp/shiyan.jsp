<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  
         <form action="UploadServlet" method="get"enctype="multipart/form-data">  
  
                     本地目录：<input type="file" name="uploadFile">  
  
           <img src="${img_path}" width="200" height="200">  
  
                <input type="submit" value="上传头像"/>  
  
   </form>
</body>
</html>