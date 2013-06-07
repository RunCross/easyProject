<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'addMessSuccess.jsp' starting page</title>
    
	 <style type="text/css">
       
	   div{       
			 
            color:red;
			font-size:40px;
			padding-top:10px;
			 position:absolute;
			   right:350px;
			   top:200px;
              }
    </style> 

  </head>
  
  <body background="/easyp/img/004.jpg">
   
	<div> 
		 <img src="/easyp/img/34.gif"/>发送成功哦
    </div>
    
     
  </body>
</html>
