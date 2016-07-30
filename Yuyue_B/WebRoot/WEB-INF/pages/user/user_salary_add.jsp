<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
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
		var _validator = $("#userSalaryForm").validate({
			onsubmit : true,
			rules : {
				 
			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('userSalaryForm', 'ComC_save', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('userSalaryForm', 'ComM_list', '');
		});

	});
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/userSalary/ComM_list.do"
					style="color: #cc0000">工资管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">新增工资</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="userSalaryForm">
	    <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>用户</th>
				<td><select type="text" name="userSalary.userName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}">${userName}</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<th>月份</th>
				<td><input type="text" name="userSalary.month"
					value="<s:date format="yyyy/MM" name="userSalary.month" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy/MM'})" /></td>
			</tr>
			<tr>
				<th>当月级别</th>
				<td><input type="text" name="userSalary.theMonthLevel"
					value="${userSalary.theMonthLevel}" /></td>
			</tr>
			<tr>
				<th>次月级别</th>
				<td><input type="text" name="userSalary.secondMonthLevel"
					value="${userSalary.secondMonthLevel}" /></td>
			</tr>
			<tr>
				<th>出勤天数</th>
				<td><input type="number" name="userSalary.attendanceRecords"
					value="${userSalary.attendanceRecords}" /></td>
			</tr>
			<tr>
				<th>基本工资</th>
				<td><input type="number" name="userSalary.baseSalary"
					value="${userSalary.baseSalary}" /></td>
			</tr>
			<tr>
				<th>五险</th>
				<td><input type="text" name="userSalary.fiveInsurance"
					value="${userSalary.fiveInsurance}" /></td>
			</tr>
			<tr>
				<th>公积金</th>
				<td><input type="text" name="userSalary.accumulationFund"
					value="${userSalary.accumulationFund}" /></td>
			</tr>
			<tr>
				<th>事病假</th>
				<td><input type="text" name="userSalary.sickLeave"
					value="${userSalary.sickLeave}" /></td>
			</tr>
			<tr>
				<th>迟到违纪</th>
				<td><input type="text" name="userSalary.latePrinciple"
					value="${userSalary.latePrinciple}" /></td>
			</tr>
			<tr>
				<th>实发基本工资</th>
				<td><input type="number" name="userSalary.realBaseSalary"
					value="${userSalary.realBaseSalary}" /></td>
			</tr>
			<tr>
				<th>绩效</th>
				<td><input type="text" name="userSalary.performance"
					value="${userSalary.performance}" /></td>
			</tr>
			<tr>
				<th>提成</th>
				<td><input type="text" name="userSalary.percentage"
					value="${userSalary.percentage}" /></td>
			</tr>
			<tr>
				<th>提成奖金小计</th>
				<td><input type="text" name="userSalary.subtotal"
					value="${userSalary.subtotal}" /></td>
			</tr>
			<tr>
				<th>实发工资</th>
				<td><input type="number" name="userSalary.realSalary"
					value="${userSalary.realSalary}" /></td>
			</tr>
			<tr>
				<th>备注</th>
				<td><input type="text" name="userSalary.info"
					value="${userSalary.info}" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/userSalary/" />
	</form>
</body>
</html>