<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="../css/style.css"/>

<title>project</title>
<sx:head />
</head>
<body>
                  
	<s:form action = "groupAdd"  theme="simple">
    <table border="0" width="1000px" align="center" bgcolor="#E4F1FA" cellpadding="0px" cellspacing="0" >
		<tr bgcolor="#E4F1FA">
			<td colspan="2" class="logo">
				<div id="welcome">欢迎</div>
			</td>
		</tr>	
		<tr>
			<td width="20%" height="500px" valign="top">
				<%@include file="/right.jsp" %>
			</td>
			<td width="70%" valign="top">
			    <br/>
				<table border ="0" width="95%" cellpadding="3" cellspacing="1"  align="left">
					<tr>
						<th colspan="2" class="bg_tr" align="left">小组信息添加</th>
						
					</tr>
					<tr>
                         <td>分组名称</td>
                        
                         <td>
                         	<s:textfield name = "gro.name"></s:textfield>
						 </td>
                    </tr>
                    <tr>
                         <td>分组创建人</td>
                         <td>
                        <s:select name = "gro.creater.id" list="userList" listKey="id" listValue="name" headerKey="0" headerValue="请选择" ></s:select>
                         </td>
                    </tr>
                   <tr>
                        <td>所属分组</td>
                       <td>
                         <s:select name = "gro.pro.pid" list="proList" listKey="pid" listValue="pname" headerKey="0" headerValue="请选择" ></s:select>
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
			<td colspan="2" class="bottom"></td>
		</tr>
	</table>
	</s:form>
</body>
</html>