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
<script type="text/javascript">
	$(document).ready(function() {
		var _validator = $("#collectionForm").validate({
			onsubmit : false,
			rules : {}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('collectionForm', 'upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('collectionForm', 'list', '');
		});
	});
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/collection/loan/ComM_list.do"
					style="color: #cc0000">借款客户管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">借款客户编辑</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="collectionForm"
		enctype="multipart/form-data">
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>借款申请ID</th>
				<td><input type="text" name="collection.loanApplyId"
					value="${collection.loanApplyId}" /></td>
			</tr>
			<tr>
				<th>客户名</th>
				<td><input type="text" name="collection.customerName"
					value="${collection.customerName}" /></td>
			</tr>
			<tr>
				<th>还款类型</th>
				<td><select name="collection.type">
						<option value="1">本息同还</option>
						<option value="2">先息后本</option>
				</select></td>
			</tr>
			<tr>
				<th>借款总金额</th>
				<td><input type="number" name="collection.money"
					value="${collection.money}" /></td>
			</tr>
			<tr>
				<th>已还多少月</th>
				<td><input type="number" name="collection.repaymentMonths"
					value="${collection.repaymentMonths}" /></td>
			</tr>
			<tr>
				<th>已还本息</th>
				<td><input type="number" name="collection.givenMoney"
					value="${collection.givenMoney}" /></td>
			</tr>
			<tr>
				<th>剩余本息</th>
				<td><input type="number" name="collection.surplusMoney"
					value="${collection.surplusMoney}" /></td>
			</tr>
			<tr>
				<th>每月应还金额</th>
				<td><input type="number" name="collection.permonthGivenMoney"
					value="${collection.permonthGivenMoney}" /></td>
			</tr>
			<tr>
				<th>是否提前还清</th>
				<td><input type="radio" name="collection.isPrepayment"
					value="0">未提前</input><input type="radio"
					name="collection.isPrepayment" value="1">已提前还清</input></td>
			</tr>
			<tr>
				<th>电话</th>
				<td><input type="number" name="collection.telephone"
					value="${collection.telephone}" /></td>
			</tr>
			<tr>
				<th>债权卡密码</th>
				<td><input type="number" name="collection.cardPassword"
					value="${collection.cardPassword}" /></td>
			</tr>
			<tr>
				<th>是否逾期</th>
				<td><input type="radio" name="collection.isOverdue"
					value="0">未逾期</input><input type="radio"
					name="collection.isOverdue" value="1">逾期</input></td>
			</tr>
			<tr>
				<th>催收状态</th>
				<td><input type="radio" name="collection.status"
					value="0">未催收</input><input type="radio"
					name="collection.status" value="1">已催收</input>
					<input type="radio"
					name="collection.status" value="2">已还本月</input></td>
			</tr>
		</table>
		<input type="hidden" name="collection.loanCollectionId"
			value="${collection.loanCollectionId}" /> <input
			type="hidden" name="_ns" id="_ns" value="/collection/loan/" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
	</form>
</body>
</html>