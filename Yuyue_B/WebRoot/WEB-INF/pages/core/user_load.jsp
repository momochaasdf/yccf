<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
	type="text/css" />
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a style="color: #cc0000" href="<%=path%>/core/user/ComM_list.do">用户管理</a>
				&nbsp;&gt;&gt;&nbsp; <a style="color: #cc0000"
					href="javascript:void(0);">用户查看</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="userForm">
		<div class="navButton">
			<input type="button"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"
				value="返回" class="btBack"
				onclick="doAction('userForm','ComM_list','');" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>登录账号</th>
				<td><input type="text" name="user.loginId"
					value="${user.loginId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>姓名</th>
				<td><input type="text" name="user.userName"
					value="${user.userName}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th><span style="color: red">*</span>生日</th>
				<td><input type="date" name="user.birthday"
					value="<s:date format="yyyy-MM-dd" name="user.birthday" />" readonly="readonly"/></td>
			</tr>
			<tr>
				<th><span style="color: red">*</span>住址</th>
				<td><input type="text" name="user.address"
					value="${user.address}" readonly="readonly"/></td>
			</tr>
			<tr>
				<th><span style="color: red">*</span>E-MAIL</th>
				<td><input type="text" name="user.email" value="${user.email}" readonly="readonly"/></td>
			</tr>
			<tr>
				<th><span style="color: red">*</span>QQ</th>
				<td><input type="number" name="user.qq" value="${user.qq}" readonly="readonly"/></td>
			</tr>
			<th>状态</th>
			<td><input type="text" name="user.status"
				value="<s:if test="user.status==1">可用</s:if><s:elseif test="user.status==0">禁用</s:elseif><s:else>&nbsp;</s:else>"
				readonly="readonly" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"
				value="返回" class="btBack"
				onclick="doAction('userForm','ComM_list','');" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/user/" />
	</form>
</body>
</html>