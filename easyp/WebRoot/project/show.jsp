
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="../css/style.css"/>
<title>show</title>
<script>
	function btnDelete(id){
		if(confirm("确认删除该条记录吗?"))
		
		
				location.href=""+id;
	}
</script>



</head>
<body>

   
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

				<table border ="0" width="95%" cellpadding="2" cellspacing="1"  align="left" >
					<tr height="30px" class="bg_tr">
						<th width="20%">项目名称</th>
						<th width="20%">项目经理</th>
						<th width="20%">创建时间</th>
						<th width="20%">预计完成时间</th>
						<th width="20%">保密性</th>
					    <th width="40%">操作</th>
					    
					</tr>
					<s:iterator value="proList" var = "pro">
					<tr height="30px">
						<td><s:property value="#pro.pname"/>  </td>
						<td><s:property value="#pro.manager.name"/>  </td>
						<td><s:property value="#pro.ctime"/>  </td>
						<td><s:property value="#pro.ectime"/>  </td>
						<td>
						<s:if test="#pro.psec==1">不保密</s:if>
						<s:elseif test="#pro.psec==0">保密</s:elseif>
						</td>
						<td>
						<a href="/easyp/project/proPreEdit?id=<s:property value="#pro.pid"/> ">编辑</a>
						<a href="#" onclick="btnDelete('<s:property value="#pro.pid"/>')">删除</a>
						<a href="/easyp/project/groList?id=<s:property value="#pro.pid"/>">查看所属分组</a>
						</td>
					</tr>
					</s:iterator>
				</table>
			
			</td>
		</tr>
		<tr>
			<td colspan="2" class="bottom"></td>
		</tr>
	</table>
</body>
</html>