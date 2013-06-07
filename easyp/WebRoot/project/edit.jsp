<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="../css/style.css"/>
<script type="text/javascript" src="../js/calendar.js"></script>
<title>编辑</title>
</head>
<body>

	<s:form action="proEdit" namespace = "/project" theme = "simple">
    <table border="0" width="1000px" align="center" bgcolor="#EEF2FB" cellpadding="0px" cellspacing="0" >
		<tr bgcolor="#E4F1FA">
			<td colspan="2" class="logo">
				<div id="welcome">欢迎</div>
			</td>
		</tr>	
		<tr>
			<td width="20%" height="500px" valign="top">
				<%@include file="/left.jsp" %>
			</td>
			<td width="70%" valign="top">
			    <br/>
				<table border ="0" width="95%" cellpadding="3" cellspacing="1"  align="left" >
					<tr>
						<th colspan="2" class="bg_tr" align="left">基本信息编辑</th>
					</tr>
					<tr>
                         <td width="16%">项目名称</td>
                         <td width="84%">
                         	<s:textfield name = "pro.pname"></s:textfield>
						 </td>
                    </tr>
                    <tr>
                         <td>项目经理</td>
                         <td>
                         <s:select name = "pro.manager.id" list="userList" listKey="id" listValue="name" headerKey="0" headerValue="请选择人员" value = "pro.manager.id"></s:select>	
                         </td>
                    </tr>
                    <tr>
                         <td>创建时间</td>
                         <td>
                         	<s:textfield name = "pro.ctime"></s:textfield>
                         </td>
                    </tr>  
	                <tr>
                         <td>预计完成时间</td>
                         <td>
                         	<s:textfield name = "pro.ectime"></s:textfield>
                         </td>
                    </tr>  
	                          
                     <tr>
                          <td>项目简介</td>
                          <td>
                          	<s:textarea name = "pro.profile"></s:textarea>
                          </td>
                      </tr>
					  <tr>
						   <td colspan="2" align="center">
								<s:submit value = "保存"></s:submit>
						   		<s:reset value = "重置"></s:reset>
						   </td>
                      </tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="bottom">/s</td>
		</tr>
	</table>
	<s:hidden name = "pro.pid"></s:hidden>
	</s:form>
</body>
</html>