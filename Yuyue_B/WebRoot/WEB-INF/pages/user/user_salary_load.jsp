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
					<a href="<%=path %>/core/userSalary/ComM_list.do" style="color:#cc0000">理财产品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">理财产品详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="userSalaryForm">
		<input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('userSalaryForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			 <tr>
				<th>用户</th>
				<td><input  type="text" 
					value="${userSalary.userName}" readonly/></td>
			</tr>
			<tr>
				<th>月份</th>
				<td><input type="text" name="userSalary.month"
					value="${userSalary.month}"  
					  readOnly/></td>
			</tr>
			<tr>
				<th>当月级别</th>
				<td><input type="text" name="userSalary.theMonthLevel"
					value="${userSalary.theMonthLevel}" readOnly/></td>
			</tr>
			<tr>
				<th>次月级别</th>
				<td><input type="text" name="userSalary.secondMonthLevel"
					value="${userSalary.secondMonthLevel}" readOnly/></td>
			</tr>
			<tr>
				<th>出勤天数</th>
				<td><input type="number" name="userSalary.attendanceRecords"
					value="${userSalary.attendanceRecords}" readOnly /></td>
			</tr>
			<tr>
				<th>基本工资</th>
				<td><input type="text" name="userSalary.baseSalary"
					value="${userSalary.baseSalary}" readOnly/></td>
			</tr>
			<tr>
				<th>五险</th>
				<td><input type="text" name="userSalary.fiveInsurance"
					value="${userSalary.fiveInsurance}" readOnly/></td>
			</tr>
			<tr>
				<th>公积金</th>
				<td><input type="text" name="userSalary.accumulationFund"
					value="${userSalary.accumulationFund}" readOnly/></td>
			</tr>
			<tr>
				<th>事病假</th>
				<td><input type="text" name="userSalary.sickLeave"
					value="${userSalary.sickLeave}" readOnly/></td>
			</tr>
			<tr>
				<th>迟到违纪</th>
				<td><input type="text" name="userSalary.latePrinciple"
					value="${userSalary.latePrinciple}" readOnly/></td>
			</tr>
			<tr>
				<th>实发基本工资</th>
				<td><input type="text" name="userSalary.realBaseSalary"
					value="${userSalary.realBaseSalary}" readOnly /></td>
			</tr>
			<tr>
				<th>绩效</th>
				<td><input type="text" name="userSalary.performance"
					value="${userSalary.performance}" readOnly/></td>
			</tr>
			<tr>
				<th>提成</th>
				<td><input type="text" name="userSalary.percentage"
					value="${userSalary.percentage}" readOnly/></td>
			</tr>
			<tr>
				<th>提成奖金小计</th>
				<td><input type="text" name="userSalary.subtotal"
					value="${userSalary.subtotal}" readOnly/></td>
			</tr>
			<tr>
				<th>实发工资</th>
				<td><input type="text" name="userSalary.realSalary"
					value="${userSalary.realSalary}" readOnly/></td>
			</tr>
			<tr>
				<th>备注</th>
				<td><input type="text" name="userSalary.info"
					value="${userSalary.info}" readOnly/></td>
			</tr>
			<tr>
				<th>工资发放状态</th>
				<td><z:dict  type="user_salary_status" code="%{userSalary.status}" /></td>
		    </tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('userSalaryForm','ComM_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/userSalary/"/>
		</form>
	</body>
</html>