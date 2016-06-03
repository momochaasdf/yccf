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
				<a href="<%=path%>/core/customer/loan/ComM_list.do"
					style="color: #cc0000">借款客户管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">借款客户详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="loanCustomerForm">
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('loanCustomerForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<input type="hidden" name="loanCustomer.companyId"
				value="${loanCustomer.customerId}" readonly="readonly" />
			<tr>
				<th>名称</th>
				<td><input type="text" name="loanCustomer.customerName"
					value="${loanCustomer.customerName}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>所属单位</th>
				<td><input type="text" name="loanCustomer.industry"
					value="${loanCustomer.industry}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>身份证号</th>
				<td><input type="text" name="loanCustomer.cardId"
					value="${loanCustomer.cardId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th>电话号码</th>
				<td><input type="text" name="loanCustomer.telephone"
					value="${loanCustomer.telephone}" readonly="readonly" /></td>
			</tr>
			<tr>
				<th style="height:40px;">头像</th>
				<td style="height:40px;"><img src="${loanCustomer.picUrl}" width="40px" height="40px"/></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('loanCustomerForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/customer/loan/" />
	</form>
</body>
</html>