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
		var _validator = $("#customerForm").validate({
			onsubmit : false,
			rules : {}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('customerForm', 'upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('customerForm', 'list', '');
		});
	});
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/customer/loan/ComM_list.do"
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
	<form action="#" method="post" id="customerForm"
		enctype="multipart/form-data">
		<input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>名称</th>
				<td><input type="text" name="customer.customerName"
					value="${customer.customerName}" /></td>
			</tr>
			<tr>
				<th>证件号码</th>
				<td><input type="text" name="customer.cardId"
					value="${customer.cardId}" /></td>
			</tr>
			<tr>
				<th>联系电话</th>
				<td><input type="text" name="customer.telephone"
					value="${customer.telephone}" /></td>
			</tr>
			<tr>
				<th>所属单位</th>
				<td><input type="text" name="customer.industry"
					value="${customer.industry}" /></td>
			</tr>
			<tr>
				<th>住址</th>
				<td><input type="text" name="customer.address"
					value="${customer.address}" /></td>
			</tr>
			<tr>
				<th style="height: 40px;">头像</th>
				<td style="height: 40px;"><img src="${customer.picUrl}"
					width="40px" height="40px" /></td>
				<td style="height: 40px;"><input type="file" name="fileUpload"></input></td>
			</tr>
			<tr>
				<th>业务员</th>
				<td><select type="text" name="customer.employeeName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}" <s:if test="customer.employeeId ==userId">selected=selected</s:if>>${userName}</option>
						</s:iterator>
				</select>  </td>
			</tr>
		</table>
		<input type="hidden" name="customer.customerId"
			value="${customer.customerId}" /> <input type="hidden"
			name="customer.picUrl" value="${customer.picUrl}" /> <input
			type="hidden" name="_ns" id="_ns" value="/customer/loan/" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
	</form>
</body>
</html>