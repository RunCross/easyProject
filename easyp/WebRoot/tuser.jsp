<%@ page language="java" import="java.util.*" pageEncoding="utf-8" 
  import="PO.USER.*"
%>
<%@ taglib prefix ="s" uri = "/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'bokEdit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">    
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
      user ur=(user)request.getAttribute("ur");                                 
     %>
    <table border="2">    
      <tr>
       <td>ID</td>
       <td><input type="text" name="ur.num" value="<s:property value="ur.getId()"/>"/></td>
      </tr>
      <tr>
       <td>姓名</td>
       <td><input type="text" name="ur.bname" value="<s:property value="ur.getName()"/>"/></td>
      </tr>
      <tr>
       <td>密码</td>
       <td><input type="text" name="ur.author" value="<s:property value="ur.getPassw()"/>"/></td>
     </tr> 
    </table> 
  </body>
</html>
