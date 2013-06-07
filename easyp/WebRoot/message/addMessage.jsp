<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>  
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'addMessage.jsp' starting page</title>
     <style type="text/css">  
     p{
         text-align:center;
         font-size:30px;
         color:blue;
     }
     </style>
  </head>
  
  <body background="/easyp/img/004.jpg">
   <p>添加一个消息</p>
  <form action="/easyp/message/messAdd" method="post">
  &nbsp;&nbsp; &nbsp; 
  消息标题： 
  <input type="text" name="mess.mhead" style ="width:280px;height:25px;" ></input><br/><br/>
  &nbsp;&nbsp; &nbsp; 
  消息级别：
   <select name="mess.mtype"> 
		       <option>请选择消息级别</option >
		       <option value="1">紧急消息</option>
		       <option value="2">正常消息</option>
		       <option value="3">可延迟消息</option>
   </select><br/><br/>
&nbsp;&nbsp; &nbsp; 
消息正文：<br> 
&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 
 <textarea cols="80" rows="15" name="mess.mcont"></textarea> <br> 
 &nbsp;&nbsp; &nbsp; 
 收件人：<br></br>
 &nbsp; &nbsp; &nbsp;
 
      <s:iterator value="userList" var="u">
       
   <input    type ="checkbox" name="receiver" value="<s:property value="#u.ui_id"/>  "/><s:property value="#u.ui_name"/>  
    
  </s:iterator>
  <br></br>   
  &nbsp; &nbsp; &nbsp;
				<input type="reset" value="重置">
				 &nbsp;&nbsp; &nbsp;
				<input type="submit" value="发送">
</form>
		         

        
  </body>
</html>
