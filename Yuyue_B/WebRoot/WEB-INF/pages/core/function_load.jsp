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
				<a href="<%=path %>/core/function/ComM_list.do" style="color:#cc0000">资源管理</a>
				&nbsp;&gt;&gt;&nbsp;
				<a href="javascript:void(0);" style="color:#cc0000">资源管理查看</a>
			</h2>
		</div>
	</div>
		
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="functionForm">
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" class="btBack" onclick="doAction('functionForm','ComM_list','');" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
	<th>功能ID</th>
	<td><input type="text" name="function.functionId" value="${function.functionId}" readonly="readonly"/></td>
</tr><tr>
	<th>功能名称</th>
	<td><input type="text" name="function.functionName" value="${function.functionName}" readonly="readonly"/></td>
</tr><tr>
	<th>代码</th>
	<td><input type="text" name="function.treeCode" value="${function.treeCode}" readonly="readonly"/></td>
</tr><tr>
	<th>资源URL</th>
	<td><input type="text" name="function.url" value="${function.url}" readonly="readonly"/></td>
</tr><tr>
	<th>描述</th>
	<td><input type="text" name="function.description" value="${function.description}" readonly="readonly"/></td>
</tr><tr>
	<th>排序</th>
	<td><input type="text" name="function.sortNo" value="${function.sortNo}" readonly="readonly"/></td>
</tr>
		</table>
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" class="btBack" onclick="doAction('functionForm','ComM_list','');" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/function/"/>
		</form>
	</body>
</html>