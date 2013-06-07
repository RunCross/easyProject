<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'remind.jsp' starting page</title>
    
	 
  </head>
  
  <body background="img/003.jpg">
     亲，今天您共有N封未读消息哦，其中X封紧急消息，建议您立即查看哦
  </body>
</html>
