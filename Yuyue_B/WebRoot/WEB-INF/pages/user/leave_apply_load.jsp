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
				<a href="<%=path%>/core/leaveApply/ComM_list.do"
					style="color: #cc0000">请假管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">请假信息详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="leaveApplyForm">
	     <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('leaveApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><input type="text" name="leaveApply.departmentName"
					value="${leaveApply.departmentName}" readOnly /></td>
			</tr>
			<tr>

				<th>用户</th>
				<td> <input type="text" name="leaveApply.userName"
					value="${leaveApply.userName}" readOnly /></td> 
			</tr>
			<tr>
				<th>请假原因</th>
				<td><input type="text" name="leaveApply.reason" readonly
					value="${leaveApply.reason }" /></td>
			</tr>
			<tr>
				<th>请假开始时间</th>
				<td><input type="text" name="leaveApply.applyStartTime" id="d4311" disabled
					value="<s:date format="yyyy-MM-dd" name="leaveApply.applyStartTime" />"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\')}',dateFmt:'yyyy-MM-dd'})"  /></td>
			</tr>
			<tr>
				<th>请假结束时间</th>
				<td><input type="text" name="leaveApply.applyEndTime"  id="d4322" disabled
					value="<s:date format="yyyy-MM-dd" name="leaveApply.applyEndTime" />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<tr>
				<th>请假天数</th>
				<td><input type="text" name="leaveApply.days" id ="days" 
					value="${leaveApply.days}" readonly/></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><z:dict  type="leave_apply_status" code="%{leaveApply.status}" /></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="leaveApply.reviewPerson" readonly
					value="${leaveApply.reviewPerson}" /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="leaveApply.reviewTime" disabled
					value="<s:date format="yyyy-MM-dd" name="leaveApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('leaveApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/leaveApply/" />
	</form>
</body>
</html>