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
					<a href="<%=path %>/core/goodsUsed/ComM_list.do" style="color:#cc0000">物品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">物品详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="goodsUsedForm">
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('goodsUsedForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			  <tr>
				<th>物品名称</th>
				<td><select type="text" name="goodsUsed.goodsName">
				<option value="1_test">test</option>
				</select></td>
			</tr>
			<tr>
				<th>领取人</th>
				<td><select type="text" name="goodsUsed.userName">
				<option value="1_test">test</option>
				</select></td>
			</tr>
			<tr>
				<th>领取数量</th>
				<td><input type="number" name="goodsUsed.nums"
					value="${goodsUsed.nums}" readonly/></td>
			</tr>
			<tr>
				<th>申请状态</th>
				<td><z:dict type="goods_used_status" code="%{goodsUsed.status}" /></td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('goodsUsedForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/goodsUsed/"/>
		</form>
	</body>
</html>