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
                  
	<s:form action = "/project/proAdd"  theme="simple">
    <table border="0" width="1000px" align="center" bgcolor="#E4F1FA" cellpadding="0px" cellspacing="0" >
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
				<table border ="0" width="95%" cellpadding="3" cellspacing="1"  align="left">
					<tr>
						<th colspan="2" class="bg_tr" align="left">项目信息添加</th>
						
					</tr>
					<tr>
                         <td width="16%">项目名称：</td>
                         <td width="84%">
                         	<s:textfield name = "pro.pname"></s:textfield>
						 </td>
                    </tr>
                    <tr>
                         <td>项目经理</td>
                         <td>
                        <s:select name = "pro.manager.id" list="userList" listKey="id" listValue="name" headerKey="0" headerValue="请选择人员" ></s:select>
                         </td>
                    </tr>
                     
                    <tr>
                         <td>创建时间</td>
                         <td>
                      <sx:datetimepicker   name="pro.ctime" type="date" value="today" displayFormat="yyyy-MM-dd"/>  
                         </td>
                    </tr>   
                    <tr>
                         <td>预计完成时间</td>
                         <td>
                       <sx:datetimepicker name="pro.ectime" type="date" value="today" displayFormat="yyyy-MM-dd"/>  	
                         </td>
                    </tr>  
                    <tr>
                   <td>保密性</td>
                    <td>
                   <s:radio name = "pro.psec"  list="#{0:'保密',1:'不保密'}" value = "0"></s:radio>
                    </td>
                    
                    </tr>
                    <tr>
                          <td>项目简介</td>
                          <td>
                          	<s:textarea name="pro.profile" rows = "10" cols = "50" value = "在此输入简介"></s:textarea>
                          <br></td>
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