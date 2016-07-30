<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
			type="text/css" />
	<script type="text/javascript">
	$(document).ready(function(){
		var _validator=$("#userSalaryForm").validate({
		onsubmit: false,
		rules: {
			 
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('userSalaryForm','ComU_upd','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('userSalaryForm','ComM_list','');
		});
	});
	
	$(function(){
		var type =${type};
		if(type ==2){
		$(".editReadonly").attr("readonly","readonly");
		}
	})
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/userSalary/ComM_list.do" style="color:#cc0000">工资管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">工资编辑</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="userSalaryForm">
		 <input type="hidden" id="opreateType" name="type"  value="${type}" />
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
		    <s:if test="%{type==0}">
			 <tr>
				<th>用户</th>
				<td><select type="text" name="userSalary.userName" id="userName"  class="editReadonly">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}" <s:if test="%{userSalary.userId ==userId}">selected = selected</s:if>>${userName}</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<th>月份</th>
				<td><input type="text" name="userSalary.month"  class="editReadonly"
					value="${userSalary.month}"
					onfocus="WdatePicker({dateFmt:'yyyy-MM'})" /></td>
			</tr>
			</s:if>
			<s:else>
			<tr>
			   <th>用户</th>
				<td><input  type="text" 
					value="${userSalary.userName}" readonly/></td>
			</tr>
			<tr>
			<th>月份</th>
				<td><input type="text"   class="editReadonly" readonly
					value="${userSalary.month}" /> </td>
			</tr>		
			</s:else>
			
			<tr>
				<th>当月级别</th>
				<td><input type="text" name="userSalary.theMonthLevel"  class="editReadonly"
					value="${userSalary.theMonthLevel}" /></td>
			</tr>
			<tr>
				<th>次月级别</th>
				<td><input type="text" name="userSalary.secondMonthLevel"  class="editReadonly"
					value="${userSalary.secondMonthLevel}" /></td>
			</tr>
			<tr>
				<th>出勤天数</th>
				<td><input type="number" name="userSalary.attendanceRecords" class="editReadonly"
					value="${userSalary.attendanceRecords}" /></td>
			</tr>
			<tr>
				<th>基本工资</th>
				<td><input type="text" name="userSalary.baseSalary"  class="editReadonly"
					value="${userSalary.baseSalary}" /></td>
			</tr>
			<tr>
				<th>五险</th>
				<td><input type="text" name="userSalary.fiveInsurance"  class="editReadonly"
					value="${userSalary.fiveInsurance}" /></td>
			</tr>
			<tr>
				<th>公积金</th>
				<td><input type="text" name="userSalary.accumulationFund"  class="editReadonly"
					value="${userSalary.accumulationFund}" /></td>
			</tr>
			<tr>
				<th>事病假</th>
				<td><input type="text" name="userSalary.sickLeave"  class="editReadonly"
					value="${userSalary.sickLeave}" /></td>
			</tr>
			<tr>
				<th>迟到违纪</th>
				<td><input type="text" name="userSalary.latePrinciple"  class="editReadonly"
					value="${userSalary.latePrinciple}" /></td>
			</tr>
			<tr>
				<th>实发基本工资</th>
				<td><input type="text" name="userSalary.realBaseSalary"  class="editReadonly"
					value="${userSalary.realBaseSalary}" /></td>
			</tr>
			<tr>
				<th>绩效</th>
				<td><input type="text" name="userSalary.performance"  class="editReadonly"
					value="${userSalary.performance}" /></td>
			</tr>
			<tr>
				<th>提成</th>
				<td><input type="text" name="userSalary.percentage"  class="editReadonly"
					value="${userSalary.percentage}" /></td>
			</tr>
			<tr>
				<th>提成奖金小计</th>
				<td><input type="text" name="userSalary.subtotal"  class="editReadonly"
					value="${userSalary.subtotal}" /></td>
			</tr>
			<tr>
				<th>实发工资</th>
				<td><input type="text" name="userSalary.realSalary"  class="editReadonly"
					value="${userSalary.realSalary}" /></td>
			</tr>
			<tr>
				<th>备注</th>
				<td><input type="text" name="userSalary.info"  class="editReadonly"
					value="${userSalary.info}" /></td>
			</tr>
			<s:if  test="%{type==1 || type ==0}">	
			<tr>
				<th>工资发放状态</th>
				<td><z:dict  type="user_salary_status" code="%{userSalary.status}" /></td>
		    </tr>
			</s:if>
			<s:else>
			<tr>
				<th>工资发放状态</th>
				<td><select type="text" name="userSalary.status">
						<option value="0" <s:if test="%{userSalary.status==0}">selected =selected</s:if>>未发放</option>
						<option value="1" <s:if test="%{userSalary.status==1}">selected =selected</s:if>>已发放</option>
				</select></td>
			</tr>
			</s:else>
		</table>
		<input type="hidden" name="userSalary.salaryId" value="${userSalary.salaryId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/userSalary/"/>
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		</form>
	</body>
</html>