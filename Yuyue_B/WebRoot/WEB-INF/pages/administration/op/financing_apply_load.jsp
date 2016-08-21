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
					<a href="<%=path %>/core/financingApply/ComM_list.do?type=${type}" style="color:#cc0000">理财产品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">理财产品详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="financingApplyForm">
		<input type="hidden" name="type" value="${type }"/>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('financingApplyForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			 <tr>
				<th>产品类型</th>
				<td><z:dict  type="financing_type" code="%{financingApply.type}"/>&nbsp;</td>
			</tr>
			<tr>
				<th>客户</th>
				<td><select type="text" name="financingApply.customerName"   >
						<option value="1_test">test</option>
				</select></td>
			</tr>
			<tr>
				<th>合同签署地点</th>
				<td><input type="text" name="financingApply.signingAddress" value="${financingApply.signingAddress}" /></td>
			</tr>
			<tr>
				<th>合同签署时间</th>
				<td><input type="text" name="financingApply.contractSigningTime" 
					value="<s:date format="yyyy-MM-dd" name="financingApply.contractSigningTime" />"
					onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<tr>
				<th>理财开始时间</th>
				<td><input type="text" name="financingApply.financingStartTime" id="d4311"
					value="<s:date format="yyyy-MM-dd" name="financingApply.financingStartTime" />"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>理财结束时间</th>
				<td><input type="text" name="financingApply.financingEndTime"  id="d4322"
					value="<s:date format="yyyy-MM-dd" name="financingApply.financingEndTime" />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>理财总时间(月)</th>
				<td><input type="number" name="financingApply.months"
					value="${financingApply.months}" /></td>
			</tr>
			<tr>
				<th>年传化收益率(%)</th>
				<td><input type="number" name="financingApply.annualizedRate" value="${financingApply.annualizedRate}" /></td>
			</tr>
			<tr>
				<th>理财金额</th>
				<td><input type="number" name="financingApply.money" value="${financingApply.money}" /></td>
			</tr>
			<tr>
				<th>大写金额</th>
				<td><input type="text" name="financingApply.upperMoney" value="${financingApply.upperMoney}" /></td>
			</tr>
			<tr>
				<th>期满金额</th>
				<td><input type="number" name="financingApply.expireMoney" value="${financingApply.expireMoney}" /></td>
			</tr>
			<tr>
				<th>大写期满金额</th>
				<td><input type="text" name="financingApply.upperExpireMoney" value="${financingApply.upperExpireMoney}" /></td>
			</tr>
			<tr>
			    <th>出借方式</th>
			    <td>
			      <select name="financingApply.lendingWay">
			       <option value="1">选择出借</option>
			       <option value="2">关系受让</option>
			      </select>
			    </td>
			</tr>
			<tr>
				<th>开户银行（精确到支行）</th>
				<td><input type="text" name="financingApply.depositBank"
					value="${financingApply.depositBank}" /></td>
			</tr>
			<tr>
				<th>卡号</th>
				<td><input type="number" name="financingApply.bankCardId"
					value="${financingApply.bankCardId}" /></td>
			</tr>
			<tr>
				<th>业务员</th>
				<td><select type="text" name="financingApply.employeeName">
						<option value="1_test">test</option>
				</select> <%-- <select type="text" name="financingApply.userName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}">${userName}</option>
						</s:iterator>
				</select> --%></td>
			</tr>
			<tr>
				<th>理财状态</th>
				<td><select name="financingApply.status">
						<option value="1">理财中</option>
						<option value="2">理财完</option>
						<option value="3">中止违约</option>
				</select></td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('financingApplyForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/financingApply/"/>
		</form>
	</body>
</html>