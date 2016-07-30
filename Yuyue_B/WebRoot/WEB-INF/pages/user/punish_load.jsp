<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<a href="<%=path%>/core/punished/ComM_list.do"
					style="color: #cc0000">惩罚管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">惩罚详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="punishedForm">
	    <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('punishedForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><input type="text" name="punished.departmentName"
					value="${punished.departmentName}" readOnly /></td>
			</tr>
			<tr>

				<th>用户</th>
				<td><input type="text" name="punished.userName"
					value="${punished.userName}" readOnly /></td>
			</tr>
			<tr>
				<th>惩罚原因</th>
				<td><input type="text" name="punished.reason"
					value="${punished.reason }" readOnly /></td>
			</tr>
			<tr>
				<th>惩罚金额</th>
				<td><input type="text" name="punished.money"
					value="${punished.money}" readOnly /></td>
			</tr>
			<tr>
				<th>惩罚时间</th>
				<td><input type="text" name="punished.punishedTime"
					value="<s:date format="yyyy-MM-dd" name="%{punished.punishedTime}" />"
					readOnly /></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><z:dict type="punish_status" code="%{punished.status}" />&nbsp;</td>
				</td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="punished.reviewPerson"
					value="${punished.reviewPerson}" readOnly /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="punished.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="%{punished.reviewTime}" />"
					readOnly /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('punishedForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/punished/" />
	</form>
</body>
</html>