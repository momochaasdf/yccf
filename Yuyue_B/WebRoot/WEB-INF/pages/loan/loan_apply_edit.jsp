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
<script type="text/javascript">
	$(document).ready(function() {
		var _validator = $("#loanApplyForm").validate({
			onsubmit : true,
			rules : {

			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('loanApplyForm', 'ComU_upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('loanApplyForm', 'ComM_list', '');
		});

	});
	function changeDays(){
		var start = $("#d4311").val();
		var end = $("#d4322").val();
		if((start !==null)& (end !==null)){
			$("#days").val(GetDateDiff(start,end,"day"));
		}
	}
	    /* 

	* 获得时间差,时间格式为 年-月-日 小时:分钟:秒 或者 年/月/日 小时：分钟：秒 
	 * 其中，年月日为全格式，例如 ： 2010-10-12 01:00:00 
	 * 返回精度为：秒，分，小时，天 
	 */
	function GetDateDiff(startTime, endTime, diffType) {
		//将xxxx-xx-xx的时间格式，转换为 xxxx/xx/xx的格式 
		startTime = startTime.replace(/\-/g, "/");
		endTime = endTime.replace(/\-/g, "/");
		//将计算间隔类性字符转换为小写 
		diffType = diffType.toLowerCase();
		var sTime = new Date(startTime); //开始时间 
		var eTime = new Date(endTime); //结束时间 
		//作为除数的数字 
		var divNum = 1;
		switch (diffType) {
		case "second":
			divNum = 1000;
			break;
		case "minute":
			divNum = 1000 * 60;
			break;
		case "hour":
			divNum = 1000 * 3600;
			break;
		case "day":
			divNum = 1000 * 3600 * 24;
			break;
		default:
			break;
		}
		return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(divNum));
	}
	    
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
				<a href="<%=path%>/core/loanApply/ComM_list.do"
					style="color: #cc0000">借款申请管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">修改借款申请</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="loanApplyForm">
	<input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			 <tr>
				<th>客户名称</th>
				<td><input type="text" name="loanApply.customerName" value="${loanApply.customerName}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>出借人名字</th>
				<td><input type="text" name="loanApply.lenderName"
					value="${loanApply.lenderName}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>出借人身份证号</th>
				<td><input type="text" name="loanApply.lenderCardId"
					value="${loanApply.lenderCardId}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>出借人现住地址</th>
				<td><input type="text" name="loanApply.lenderAddress"
					value="${loanApply.lenderAddress}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款户名1</th>
				<td><input type="text" name="loanApply.repaymentName1"
					value="${loanApply.repaymentName1}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款开户银行1（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank1"
					value="${loanApply.repaymentDepositBank1}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款卡号1</th>
				<td><input type="number" name="loanApply.repaymentBankCardId1"
					value="${loanApply.repaymentBankCardId1}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款户名2</th>
				<td><input type="text" name="loanApply.repaymentName2"
					value="${loanApply.repaymentName2}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款开户银行2（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank2"
					value="${loanApply.repaymentDepositBank2}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款卡号2</th>
				<td><input type="number" name="loanApply.repaymentBankCardId2"
					value="${loanApply.repaymentBankCardId2}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款户名3</th>
				<td><input type="text" name="loanApply.repaymentName3"
					value="${loanApply.repaymentName3}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款开户银行3（精确到支行）</th>
				<td><input type="text" name="loanApply.repaymentDepositBank3"
					value="${loanApply.repaymentDepositBank3}" class="editReadonly"/></td>
			</tr>
			<tr>
				<th>还款卡号3</th>
				<td><input type="number" name="loanApply.repaymentBankCardId3"
					value="${loanApply.repaymentBankCardId3}" class="editReadonly"/></td>
			</tr>
			
			<tr>
				<th>付款方式</th>
				<td><select name="loanApply.repaymentType" class="editReadonly">
						<option value="1"  <s:if test="%{loanApply.repaymentType==1}">selected =selected</s:if>>网银汇款</option>
						<option value="2"  <s:if test="%{loanApply.repaymentType==2}">selected =selected</s:if>>银行汇款</option>
						<option value="3"  <s:if test="%{loanApply.repaymentType==3}">selected =selected</s:if>>现金</option>
				</select></td>
			</tr>
			<tr>
				<th>合同</th>
				<td><select type="text" name="loanApply.contractUrl">
						<option value="1_test">test</option>
				</select></td>
			</tr>
			<tr>
				<th>业务员</th>
				<td><select type="text" name="loanApply.employeeName" class="editReadonly">
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}" <s:if test="%{loanApply.employeeId ==userId}" >selected=selected </s:if> >${userName}</option>
						</s:iterator>
				</select</td>
			</tr>
			<tr>
				<th>借款开始时间</th>
				<td><input type="text" name="loanApply.loanStartTime" id="d4311" class="editReadonly"
					value="<s:date format="yyyy-MM-dd" name="loanApply.loanStartTime" />"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>借款结束时间</th>
				<td><input type="text" name="loanApply.loanEndTime"  id="d4322" class="editReadonly"
					value="<s:date format="yyyy-MM-dd" name="loanApply.loanEndTime" />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})" onchange="changeDays()"/></td>
			</tr>
			<tr>
				<th>借款多少个月</th>
				<td><input type="number" name="loanApply.months" class="editReadonly"
					value="${loanApply.months}" /></td>
			</tr>
			<tr>
				<th>利率</th>
				<td><input type="number" name="loanApply.rate" class="editReadonly"
					value="${loanApply.rate}" /></td>
			</tr>
			<tr>
				<th>借款金额</th>
				<td><input type="number" name="loanApply.applyMoney" class="editReadonly"
					value="${loanApply.applyMoney}" /></td>
			</tr>
			<tr>
				<th>借款用途</th>
				<td><input type="text" name="loanApply.loanReason" class="editReadonly"
					value="${loanApply.loanReason}" /></td>
			</tr>
			<tr>
				<th>还款类型</th>
				<td><select name="loanApply.type" class="editReadonly">
						<option value="1" <s:if test="%{loanApply.type==1}">selected =selected</s:if>>本息同还</option>
						<option value="2" <s:if test="%{loanApply.type==2}">selected =selected</s:if>>先息后本</option>
				</select></td>
			</tr>
			<tr>
				<th>还款状态</th>
				<td><select name="loanApply.repaymentStatus" class="editReadonly">
						<option value="1" <s:if test="%{loanApply.repaymentStatus==1}">selected =selected</s:if>>还款中</option>
						<option value="2" <s:if test="%{loanApply.repaymentStatus==2}">selected =selected</s:if>>已还清</option>
				</select></td>
			</tr>
			<tr>
				<th>逾期次数</th>
				<td><input type="number" name="loanApply.overdueNums" class="editReadonly"
					value="${loanApply.overdueNums}" /></td>
			</tr>
			<tr>
				<th>批准金额</th>
				<td><input type="number" name="loanApply.agreeMoney"  
					value="${loanApply.agreeMoney}" /></td>
			</tr>
			<tr>
				<th>大写金额</th>
				<td><input type="text" name="loanApply.upperMoney"  
					value="${loanApply.upperMoney}" /></td>
			</tr>
			<tr>
				<th>月偿还本息数额</th>
				<td><input type="number" name="loanApply.permonthMoney" class="editReadonly"
					value="${loanApply.permonthMoney}" /></td>
			</tr>
			<tr>
				<th>大写月偿还本息数额</th>
				<td><input type="text" name="loanApply.upperPermonthMoney" class="editReadonly"
					value="${loanApply.upperPermonthMoney}" /></td>
			</tr>
			<s:if test="%{type==1}">
			<tr>
				<th>审核状态</th>
				<td> <z:dict  type="loan_apply_status" code="%{loanApply.status}" /></td>
			</tr>
			<tr>
				<th>拒绝理由</th>
				<td><input type="text" name="loanApply.refuseReason"
					value="${loanApply.refuseReason}" readonly/></td>
			</tr>
			</s:if>
			<s:else>
			<tr>
				<th>审核状态</th>
				<td><select name="loanApply.status">
						<option value="0"  <s:if test="%{loanApply.status==0}">selected =selected</s:if>>待审批</option>
						<option value="1"  <s:if test="%{loanApply.status==1}">selected =selected</s:if>>审核中</option>
						<option value="2"  <s:if test="%{loanApply.status==2}">selected =selected</s:if>>通过</option>
						<option value="3"  <s:if test="%{loanApply.status==3}">selected =selected</s:if>>拒绝</option>
						<option value="4"  <s:if test="%{loanApply.status==4}">selected =selected</s:if>>金额待修改</option>
				</select></td>
			</tr>
			<tr>
				<th>拒绝理由</th>
				<td><input type="text" name="loanApply.refuseReason"
					value="${loanApply.refuseReason}" /></td>
			</tr>
			<tr>
				<th>审核人</th>
				<td><input type="text" name="loanApply.reviewPerson"
					value="${loanApply.reviewPerson}" /></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="loanApply.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="loanApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			</s:else>
		</table>
	    <input type="hidden" name="loanApply.loanApplyId" value="${loanApply.loanApplyId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/loanApply/"/>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/loanApply/" />
	</form>
</body>
</html>