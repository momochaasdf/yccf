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
					<a href="<%=path %>/core/dict/ComM_list.do" style="color:#cc0000">字典管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">字典详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="dictForm">
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('dictForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
	<th>代码</th>
	<td><input type="text" name="dict.dictCode" value="${dict.dictCode}" readonly="readonly"/></td>
</tr><tr>
	<th>名称</th>
	<td><input type="text" name="dict.dictName" value="${dict.dictName}" readonly="readonly"/></td>
</tr><tr>
	<th>类型代码</th>
	<td><input type="text" name="dict.dictTypeCode" value="${dict.dictTypeCode}" readonly="readonly"/></td>
</tr><tr>
	<th>排序</th>
	<td><input type="text" name="dict.sortNo" value="${dict.sortNo}" readonly="readonly"/></td>
</tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('dictForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/dict/"/>
		</form>
	</body>
</html>