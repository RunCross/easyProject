<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>  
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>功能选项列表</title>
   <style type="text/css">  
	.MM {
		width:182px;
		margin: 0px;
		padding: 0px;
		text-align: center;
		list-style-type: none; 
	}
	

	.MM li {
		border-bottom: #27A2CF 1px dotted;
		margin: 0px;
		height:50px;
		font-size: 20px;
		text-align:center;
	}
	
	.MM li a{
		height: 40px;
		color: #333333;
		display:block;
		text-decoration: none;
		padding-top:15px;
	}

	.MM li a:hover {
		font-size:25px;
		color:#1E5494;
		font-weight:bold;
	}

	  </style> 
  </head>
  
  <body background="/easyp/img/003.jpg">
  <table border="0" width="1000px" align="center"  cellpadding="0px" cellspacing="0" >
		<tr>
			<td width="20%" height="500px" valign="top">
			<img src="/easyp/img/menu_book.gif"/> <br/>
				<img src="/easyp/img/menu_topline.gif" width="182" height="5" />	
				<ul class="MM">
					<li><a href="/easyp/message/preAddMess" target="main" >创建消息</a></li>
					<li><a href="#">查看消息</a></li>
					<li><a href="#">删除消息</a></li>
					<li><a href="#">回收站</a></li>
					 
				</ul>
			</td>
		</tr>
</table>
    
  </body>
</html>
