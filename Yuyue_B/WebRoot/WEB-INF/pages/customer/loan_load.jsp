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
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/customer/loan/list.do" style="color: #cc0000">借款客户管理</a>
				&nbsp;&gt;&gt;&nbsp; <a style="color: #cc0000"
					href="javascript:void(0);">借款客户详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="customerForm">
	<input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('customerForm','list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<input type="hidden" name="customer.companyId"
				value="${customer.customerId}" readonly="readonly" />
			<tr>
				<th>名称</th>
				<td><input type="text" name="customer.customerName"
					value="${customer.customerName}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>证件号码</th>
				<td><input type="text" name="customer.cardId"
					value="${customer.cardId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>联系电话</th>
				<td><input type="text" name="customer.telephone"
					value="${customer.telephone}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>所属单位</th>
				<td><input type="text" name="customer.industry"
					value="${customer.industry}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>抵押物</th>
				<td><input type="text" name="customer.plege"
					value="${customer.plege}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>抵押物去向</th>
				<td><input type="text" name="customer.plegeGo"
					value="${customer.plegeGo}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>住址</th>
				<td><input type="text" name="customer.address"
					value="${customer.address}" readonly="readonly" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('customerForm','list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/customer/loan/" />
	</form>
</body>
</html>