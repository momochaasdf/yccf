<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="z" uri="/z-tags"%>
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
					<a href="<%=path %>/core/goodsPurchase/ComM_list.do" style="color:#cc0000">物品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">物品详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="goodsPurchaseForm">
		<input type="hidden" id="opreateType" name="type"  value="${type}" />
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('goodsPurchaseForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>物品名称</th>
				<td><input type="text" name="goodsPurchase.goodsName"
					value="${goodsPurchase.goodsName}" readonly/></td>
			</tr>
			<tr>
				<th>单价</th>
				<td><input type="text" name="goodsPurchase.price"
					value="${goodsPurchase.price}" readonly/></td>
			</tr>
			<tr>
				<th>数量</th>
				<td><input type="number" name="goodsPurchase.nums"
					value="${goodsPurchase.nums}" readonly/></td>
			</tr>
			<tr>
				<th>总价</th>
				<td><input type="number"  name="goodsPurchase.totalPrice"
					value="${goodsPurchase.totalPrice}" readonly/></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><z:dict  type="goods_purchase_status" code="%{goodsPurchase.status}" /></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="goodsPurchase.reviewPerson"
					value="${goodsPurchase.reviewPerson}" readonly/></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="goodsPurchase.reviewTime"
					value="${goodsPurchase.reviewTime}" /></td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('goodsPurchaseForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/goodsPurchase/"/>
		</form>
	</body>
</html>