<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
					<a style="color:#cc0000" href="<%=path %>/core/role/ComM_list.do">角色管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">角色查看</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="roleForm">
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" class="btBack" onclick="doAction('roleForm','ComM_list','');" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th style="width: 20%">角色代码</th>
				<td><input type="text" name="role.roleCode" readonly="readonly" value="${role.roleCode}"/></td>
			</tr>
			<tr>
				<th>角色名称</th>
				<td><input type="text" name="role.roleName" readonly="readonly" value="${role.roleName}"/></td>
			</tr><!-- 
			<tr>
				<th>图标</th>
				<td><img src="#" alt="图标" border="0" width="16px" height="16px"/> </td>
			</tr> -->
			<tr>
				<th>是否系统角色</th>
				<td><s:radio list="#{'1':'是','0':'否'}" name="role.isSysRole" disabled="true"/></td>
			</tr>
			<tr>
				<th>备注</th>
				<td><textarea rows="5" cols="30" readonly="readonly" name="role.info">${role.info}</textarea> </td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" class="btBack" onclick="doAction('roleForm','ComM_list','');" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/role/"/>
		</form>
	</body>
</html>