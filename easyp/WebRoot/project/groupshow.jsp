<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "s" uri = "/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="../css/style.css"/>
<title>show</title>
<script>
	function btnDelete(pid){
		if(confirm("确认删除该条记录吗?"))
		
		
				location.href=""+gid;
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
                  <table border ="0" width="95%" cellpadding="2" cellspacing="1"  align="left" >
					<tr height="30px" class="bg_tr">
						<th width="20%">分组名称</th>
						<th width="20%">分组创建人</th>
						<th width="20%">所属分组</th>
						<th width="20%">操作</th>
                   </tr>
					<s:iterator value="groList" var = "gro">
					<tr height="30px">
						<td><s:property value="#gro.gname"/>  </td>
						<td><s:property value="#gro.gcreater.name"/>  </td>
					    <td><s:property value="#gro.gpro.pname"/>  </td>
						
						<td>
						<a href="/easyp/project/groPreEdit?gid=<s:property value="#gro.gid"/> ">编辑</a>
						<a href="#" onclick="btnDelete('<s:property value="#gro.gid"/>')">删除</a>
						
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