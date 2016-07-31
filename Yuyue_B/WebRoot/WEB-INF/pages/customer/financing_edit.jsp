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
	<script language="javascript" type="text/javascript" src="<%=path%>/common/js/datepicker/WdatePicker.js"></script>
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
				<a href="<%=path%>/customer/financing/list.do"
					style="color: #cc0000">理财客户管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">理财客户编辑</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="customerForm" enctype="multipart/form-data">
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
				<th>证件类型</th>
				<td><select name="customer.cardType"><s:iterator value="cardTypeMap"
							id="cardTypeSelected">
							
							<option value='<s:property value="#cardTypeSelected.key" />' 
							<s:if test="#cardTypeSelected.key!=null&&#cardTypeSelected.key==customer.cardType">
								selected
							</s:if>
							><s:property value="#cardTypeSelected.value" /></option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<th>证件号码</th>
				<td><input type="text" name="customer.cardId"
					value="${customer.cardId}" /></td>
			</tr>
			<tr>
			    <th>生日类型</th>
			    <td><s:radio list="#{'0':'阳历','1':'农历'}" name="customer.birthdayType"/></td>
			</tr>
			<tr>
				<th>生日</th>
				<td><input type="text" name="customer.birthday"
					value="<s:date format="yyyy-MM-dd" name="customer.birthday" />" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/></td>
			</tr>
			<tr>
				<th>联系电话</th>
				<td><input type="text" name="customer.telephone"
					value="${customer.telephone}" /></td>
			</tr>
			<tr>
				<th>住址</th>
				<td><input type="text" name="customer.address"
					value="${customer.address}"/></td>
			</tr>
		</table>
		<input type="hidden" name="customer.customerId"
			value="${customer.customerId}" />
			<input type="hidden" name="_ns" id="_ns"
			value="/customer/financing/" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
	</form>
</body>
</html>