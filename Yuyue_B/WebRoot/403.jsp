<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="Pragma" CONTENT="no-cache" />
<meta http-equiv="Cache-Control" CONTENT="no-cache" />
<meta http-equiv="Expires" CONTENT="0" />
<title>403</title>
<style type="text/css">
body {
	background-color: #F1EDED;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	font-family:Microsoft Yahei;font-size:13px;line-height:25px;color:#000	
}
</style>
</head>

<body>

<div style="width: 763px; height: 238px; margin: 180px auto">
	<div
		style="width: 315px; height: 238px; float: left; border-right: 1px solid #ccc;">
		<img src="<%=path%>/common/images/errorPage/timeout.jpg" border="0" />
	</div>
	<div
		style="width: 430px; height: 238px; float: left; margin-left: 16px;">
		<div style="margin-top: 40px;">
			<img src="<%=path%>/common/images/errorPage/content.jpg" />
		</div>
		<div style="height: 60px; margin-top: 20px; padding-left: 8px;">
			请点击<a href="javascript:history.go(-1);" style="font-size: 20px;" >返回</a>上一次访问页面，并且刷新页面来解决此问题。
			<br />
			如不能解决请点击
			&gt;&gt;
			<a href="${backendUrl }">返回网站首页</a>
		</div>
	</div>
</div>
</body>
</html>