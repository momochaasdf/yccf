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
				<a href="<%=path%>/core/punchApply/ComM_list.do"
					style="color: #cc0000">忘记打卡管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">忘记打卡信息详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="punchApplyForm">
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('punchApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><input type="text" name="punchApply.departmentName"
					value="${punchApply.departmentName}" readOnly /></td>
			</tr>
			<tr>

				<th>用户</th>
				<td> <input type="text" name="punchApply.userName"
					value="${punchApply.userName}" readOnly /></td> 
			</tr>
			<tr>
				<th>忘记打卡原因</th>
				<td><input type="text" name="punchApply.reason" readonly
					value="${punchApply.reason }" /></td>
			</tr>
				<tr>
				<th>上下班</th>
				<td> <s:radio list="#{'1':'上班','2':'下班'}" name="punchApply.inOrOut"/> </td>
			</tr>
			<tr>
				<th>忘记打卡时间</th>
				<td><input type="text" name="punchApply.applyPunchTime"    disabled
					value="<s:date format="yyyy-MM-dd" name="punchApply.applyPunchTime" />"
					onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><select name="punchApply.status">
						<option value="0">待审批</option>
						<option value="1">已审批</option>
				</select></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="punchApply.reviewPerson" readonly
					value="${punchApply.reviewPerson}" /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="punchApply.reviewTime" disabled
					value="<s:date format="yyyy-MM-dd" name="punchApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('punchApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/punchApply/" />
	</form>
</body>
</html>