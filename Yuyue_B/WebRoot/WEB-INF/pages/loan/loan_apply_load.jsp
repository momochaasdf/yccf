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
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/loanApply/ComM_list.do"
					style="color: #cc0000">借款申请管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">借款申请信息详情</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
	</div>
	<form action="#" method="post" id="loanApplyForm">
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('loanApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			  <tr>

				<th>客户名称</th>
				<td><select type="text" name="loanApply.customerName">
						<s:iterator value="dicList" status="st">
							<option value="${dictCode}_${dictName}">${dictName}</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<th>出借人名字</th>
				<td><input type="text" name="loanApply.lenderName"
					value="${loanApply.lenderName}" readonly/></td>
			</tr>
			<tr>
				<th>出借人身份证号</th>
				<td><input type="text" name="loanApply.lenderCardId"
					value="${loanApply.lenderCardId}" readonly/></td>
			</tr>
			<tr>
				<th>出借人现住地址</th>
				<td><input type="text" name="loanApply.lenderAddress"
					value="${loanApply.lenderAddress}" readonly/></td>
			</tr>
			<tr>
				<th>还款户名1</th>
				<td><input type="text" name="loanApply.repaymentName1"
					value="${loanApply.repaymentName1}" readonly/></td>
			</tr>
			<tr>
				<th>还款开户银行1（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank1"
					value="${loanApply.repaymentDepositBank1}" readonly/></td>
			</tr>
			<tr>
				<th>还款卡号1</th>
				<td><input type="number" name="loanApply.repaymentBankCardId1"
					value="${loanApply.repaymentBankCardId1}" readonly/></td>
			</tr>
			<tr>
				<th>还款户名2</th>
				<td><input type="text" name="loanApply.repaymentName2"
					value="${loanApply.repaymentName2}" readonly/></td>
			</tr>
			<tr>
				<th>还款开户银行2（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank2"
					value="${loanApply.repaymentDepositBank2}" readonly/></td>
			</tr>
			<tr>
				<th>还款卡号2</th>
				<td><input type="number" name="loanApply.repaymentBankCardId2"
					value="${loanApply.repaymentBankCardId2}" readonly/></td>
			</tr>
			<tr>
				<th>还款户名3</th>
				<td><input type="text" name="loanApply.repaymentName3"
					value="${loanApply.repaymentName3}" readonly/></td>
			</tr>
			<tr>
				<th>还款开户银行3（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank3"
					value="${loanApply.repaymentDepositBank3}" readonly/></td>
			</tr>
			<tr>
				<th>还款卡号3</th>
				<td><input type="number" name="loanApply.repaymentBankCardId3"
					value="${loanApply.repaymentBankCardId3}" readonly/></td>
			</tr>
			
			<tr>
				<th>付款方式</th>
				<td><select name="loanApply.repaymentType">
						<option value="1">网银汇款</option>
						<option value="2">银行汇款</option>
						<option value="3">现金</option>
				</select></td>
			</tr>
			<tr>
				<th>合同</th>
				<td><select type="text" name="loanApply.contractUrl">
						<option value="1_test">test</option>
				</select> <%-- <select type="text" name="loanApply.userName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}">${userName}</option>
						</s:iterator>
				</select> --%></td>
			</tr>
			<tr>
				<th>业务员</th>
				<td><select type="text" name="loanApply.employeeName">
						<option value="1_test">test</option>
				</select> <%-- <select type="text" name="loanApply.userName">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}">${userName}</option>
						</s:iterator>
				</select> --%></td>
			</tr>
			<tr>
				<th>借款开始时间</th>
				<td><input type="text" name="loanApply.loanStartTime" id="d4311"
					value="<s:date format="yyyy-MM-dd" name="loanApply.loanStartTime" />"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>借款结束时间</th>
				<td><input type="text" name="loanApply.loanEndTime"  id="d4322"
					value="<s:date format="yyyy-MM-dd" name="loanApply.loanEndTime" />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>借款多少个月</th>
				<td><input type="number" name="loanApply.months"
					value="${loanApply.months}" readonly/></td>
			</tr>
			<tr>
				<th>利率</th>
				<td><input type="number" name="loanApply.rate"
					value="${loanApply.rate}" readonly/></td>
			</tr>
			<tr>
				<th>借款金额</th>
				<td><input type="number" name="loanApply.applyMoney"
					value="${loanApply.applyMoney}" readonly/></td>
			</tr>
			<tr>
				<th>借款用途</th>
				<td><input type="text" name="loanApply.loanReason"
					value="${loanApply.loanReason}" readonly/></td>
			</tr>
			<tr>
				<th>还款类型</th>
				<td><select name="loanApply.type">
						<option value="1">本息同还</option>
						<option value="2">先息后本</option>
				</select></td>
			</tr>
			<tr>
				<th>还款状态</th>
				<td><select name="loanApply.repaymentStatus">
						<option value="1">还款中</option>
						<option value="2">已还清</option>
				</select></td>
			</tr>
			<tr>
				<th>逾期次数</th>
				<td><input type="number" name="loanApply.overdueNums"
					value="${loanApply.overdueNums}" readonly/></td>
			</tr>
			<tr>
				<th>批准金额</th>
				<td><input type="number" name="loanApply.agreeMoney"
					value="${loanApply.agreeMoney}" readonly/></td>
			</tr>
			<tr>
				<th>大写金额</th>
				<td><input type="text" name="loanApply.upperMoney"
					value="${loanApply.upperMoney}" readonly/></td>
			</tr>
			<tr>
				<th>月偿还本息数额</th>
				<td><input type="number" name="loanApply.permonthMoney"
					value="${loanApply.permonthMoney}" readonly/></td>
			</tr>
			<tr>
				<th>大写月偿还本息数额</th>
				<td><input type="text" name="loanApply.upperPermonthMoney"
					value="${loanApply.upperPermonthMoney}" readonly/></td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><select name="loanApply.status">
						<option value="0">待审批</option>
						<option value="1">审核中</option>
						<option value="2">通过</option>
						<option value="3">拒绝</option>
				</select></td>
			</tr>
			<tr>
				<th>拒绝理由</th>
				<td><input type="text" name="loanApply.refuseReason"
					value="${loanApply.refuseReason}" readonly/></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="loanApply.reviewPerson"
					value="${loanApply.reviewPerson}" readonly/></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="loanApply.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="loanApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
		</table>
		<div class="navButton">
			<input type="button" value="返回" class="btBack"
				onclick="doAction('loanApplyForm','ComM_list','');"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/loanApply/" />
	</form>
</body>
</html>