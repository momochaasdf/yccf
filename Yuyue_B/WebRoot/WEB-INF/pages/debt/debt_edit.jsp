<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		var _validator=$("#debtForm").validate({
		onsubmit: true,
		rules: {
			'debt.type':{required: true},
			'debt.annualizedRate':{required: true,maxbytelen:100},
			'debt.annualizedRateEnd':{maxbytelen:100},
			'debt.months':{min:1,number:true,required: true},
			'debt.monthsEnd':{min:1,number:true},
			'debt.startUp':{min:5,max:100,number:true,required: true}
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('debtForm','ComC_save','');}
		});
		$("input.btBack").click(function(){
			doAction('debtForm','ComM_list','');
		});
		
	});
	
	</script>
	
		
	<style type="text/css">
	input[type="text"], input[type="password"], textarea {
    border: 1px solid #CCCCCC;
    height: 27px;
    width: 200px;
    line-height: 27px;
 
    background-color: transparent;
    background-color: expression((this.readOnly==true || this.disabled==true)?"#DDDDDD":"");
    }
	</style>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/debt/ComM_list.do" style="color:#cc0000">债权管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">新增债权</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="debtForm">
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="debt.debtId" value="${debt.debtId}"  /> 
		<input type="hidden" name="debt.financingApplyId" value="${debt.financingApplyId}"  /> 
		<input type="hidden" name="debt.contractId" value="${debt.contractId}"  /> 
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>债权人</th>
				<td><input type="text" name="debt.customerName" value="${debt.customerName}" placeholder="不可编辑" readonly/></td>
			</tr><tr>
				<th>身份证号码</th>
				<td><input type="text" name="debt.cardId" value="${debt.cardId}" placeholder="不可编辑" readonly/></td>
			</tr><tr>
				<th>住址</th>
				<td><input type="text" name="debt.address" value="${debt.address}" placeholder="不可编辑" readonly /></td>
			</tr>
			<tr>
				<th>到期总额(元)</th>
				<td><input type="text" name="debt.expireMoney" value="${debt.expireMoney}" placeholder="不可编辑" readonly /></td>
			</tr>
			<tr>
				<th>资金出借/回收方式</th>
				<td><input type="text" name="debt.moneyOutBack" value="${debt.moneyOutBack}" /></td>
			</tr>
			<tr>
				<th>初始出借金额(元)</th>
				<td><input type="text" name="debt.startMonery" value="${debt.startMonery}" /></td>
			</tr>
			<tr>
				<th>账户管理费(元)</th>
				<td><input type="text" name="debt.manageMoney" value="${debt.manageMoney}" /></td>
			</tr>
			<tr>
				<th>借款开始时间</th>
				<td><input type="text" name="debt.startTime" id="d4311"
					value="<s:date format="yyyy-MM-dd" name="debt.startTime" />"
					onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/></td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/debt/"/>
		</form>
	</body>
</html>