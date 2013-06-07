<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>消息标题</title>
    <style type="text/css">
       h1{  
            text-align:left; 
            color:#FFFFFF;
			font-size:40px;
			padding-top:10px;
		     }
	   div{       
			 position:absolute;
			   right:50px;
			   top:2px;
              }
    </style> 
 </head>
  <body background="img/003.jpg">
    <div>
		 <img src="img/32.gif"/>
    </div>
    <h1> 消息面板主页</h1>
  </body>
</html>
