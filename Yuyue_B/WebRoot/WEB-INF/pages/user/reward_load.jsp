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
				<a href="<%=path%>/core/reward/ComM_list.do"
					style="color: #cc0000">奖励管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">奖励信息详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="rewardForm">
	    <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('rewardForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><input type="text" name="reward.departmentName"
					value="${reward.departmentName}" readOnly /></td>
			</tr>
			<tr>

				<th>用户</th>
				<td><input type="text" name="reward.userName"
					value="${reward.userName}" readOnly /></td>
			</tr>
			<tr>
				<th>奖励原因</th>
				<td><input type="text" name="reward.reason"
					value="${reward.reason }" readOnly /></td>
			</tr>
			<tr>
				<th>奖励金额</th>
				<td><input type="text" name="reward.money"
					value="${reward.money}" readOnly /></td>
			</tr>
			<tr>
				<th>奖励时间</th>
				<td><input type="text" name="reward.rewardTime"
					value="<s:date format="yyyy-MM-dd" name="%{reward.rewardTime}" />"
					readOnly /></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><z:dict type="punish_status" code="%{reward.status}" />&nbsp;</td>
				</td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="reward.reviewPerson"
					value="${reward.reviewPerson}" readOnly /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="reward.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="%{reward.reviewTime}" />"
					readOnly /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('rewardForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/reward/" />
	</form>
</body>
</html>