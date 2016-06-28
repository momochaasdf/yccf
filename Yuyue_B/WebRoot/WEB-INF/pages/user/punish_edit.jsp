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
<script type="text/javascript">
	$(document).ready(function() {
		var _validator = $("#punishedForm").validate({
			onsubmit : true,
			rules : {

			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('punishedForm', 'ComU_upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('punishedForm', 'ComM_list', '');
		});

	});
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/punished/ComM_list.do"
					style="color: #cc0000">惩罚信息管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">修改惩罚信息</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="punishedForm">
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><select type="text" name="punished.departmentId">
						<s:iterator value="dicList" status="st">
							<option value="${dictCode}_${dictName}">${dictName}</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>

				<th>用户</th>
				<td><select type="text" name="punished.userName">
						<option value="1_test">test</option>
				</select> <%-- <select type="text" name="punished.userName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}">${userName}</option>
						</s:iterator>
				</select> --%></td>
			</tr>
			<tr>
				<th>惩罚原因</th>
				<td><input type="text" name="punished.reason"
					value="${punished.reason }" /></td>
			</tr>
			<tr>
				<th>惩罚金额</th>
				<td><input type="text" name="punished.money"
					value="${punished.money}" /></td>
			</tr>
			<tr>
				<th>惩罚时间</th>
				<td><input type="text" name="punished.punishedTime"
					value="<s:date format="yyyy-MM-dd" name="punished.punishedTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><select name="punished.status">
						<option value="0">待审批</option>
						<option value="1">已审批</option>
						<option value="2">已罚款</option>
				</select></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="punished.reviewPerson"
					value="${punished.reviewPerson}" /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="punished.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="punished.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
		</table>
	    <input type="hidden" name="punished.punishedId" value="${punished.punishedId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/punished/"/>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/punished/" />
	</form>
</body>
</html>