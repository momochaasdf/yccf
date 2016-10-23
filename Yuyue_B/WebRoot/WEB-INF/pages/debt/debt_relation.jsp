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
			'debtRel.type':{required: true},
			'debtRel.annualizedRate':{required: true,maxbytelen:100},
			'debtRel.annualizedRateEnd':{maxbytelen:100},
			'debtRel.months':{min:1,number:true,required: true},
			'debtRel.monthsEnd':{min:1,number:true},
			'debtRel.startUp':{min:5,max:100,number:true,required: true}
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('debtForm','ComC_relSave','');}
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
					<a href="<%=path %>/core/debt/ComC_loan.do" style="color:#cc0000">债权管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">关联借款协议</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="debtForm">
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="debtRel.debtRelId" value="${debtRel.debtRelId}"  /> 
		<input type="hidden" name="debtRel.financingApplyId" value="${debtRel.financingApplyId}"  /> 
		<table cellpadding="0" cellspacing="0" class="editTable">
		    <tr>
				<th>理财协议ID</th>
				<td><input type="text" name="debtRel.financingApplyId" value="${debtRel.financingApplyId}" placeholder="不可编辑" readonly/></td>
			</tr>
			<tr>
				<th>借款协议ID</th>
				<td><input type="text" name="debtRel.loanApplyId" value="${debtRel.loanApplyId}" placeholder="不可编辑" readonly/></td>
			</tr>
			<tr>
				<th>借款人</th>
				<td><input type="text" name="debtRel.customerName" value="${debtRel.customerName}" placeholder="不可编辑" readonly/></td>
			</tr><tr>
				<th>身份证号码</th>
				<td><input type="text" name="debtRel.cardId" value="${debtRel.cardId}" placeholder="不可编辑" readonly/></td>
			</tr>
			<tr>
				<th>未债权金额(元)</th>
				<td><input type="text" name="haveMoney" value="${haveMoney}" placeholder="不可编辑" readonly/></td>
			</tr>
			<tr>
				<th>未关联金额(元)</th>
				<td><input type="text" name="needMoney" value="${needMoney}" placeholder="不可编辑" readonly/></td>
			</tr>
			<tr>
				<th>借款金额(元)</th>
				<td><input type="text" name="debtRel.loanMoney" value="${debtRel.loanMoney}" placeholder="手动填写"   /></td>
			</tr>
			<tr>
				<th>需支付对价</th>
				<td><input type="text" name="debtRel.consideration" value="${debtRel.consideration}" placeholder="手动填写"  /></td>
			</tr>
			<tr>
				<th>借款人职业</th>
				<td><input type="text" name="debtRel.loanProfession" value="${debtRel.loanProfession}"  placeholder="手动填写" /></td>
			</tr>
			<tr>
				<th>借款用途</th>
				<td><input type="text" name="debtRel.loanReason" value="${debtRel.loanReason}"  placeholder="手动填写" /></td>
			</tr>
			<tr>
				<th>预计债权收益率（元）</th>
				<td><input type="text" name="debtRel.rate" value="${debtRel.rate}" placeholder="手动填写" /></td>
			</tr>
			<tr>
				<th>还款起始日期</th>
				<td><input type="text" name="debtRel.loanStartTime" value="${debtRel.loanStartTime}" readonly/></td>
			</tr>
			<tr>
				<th>还款期限</th>
				<td><input type="text" name="debtRel.months" value="${debtRel.months}" readonly/></td>
			</tr>
			<tr>
				<th>剩余还款月数</th>
				<td><input type="text" name="debtRel.surplusDate" value="${debtRel.surplusDate}" readonly/></td>
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