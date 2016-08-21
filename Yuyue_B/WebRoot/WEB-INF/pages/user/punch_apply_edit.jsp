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
		var _validator = $("#punchApplyForm").validate({
			onsubmit : true,
			rules : {

			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('punchApplyForm', 'ComU_upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('punchApplyForm', 'ComM_list', '');
		});

	});
	$(function () {
		var type =${type};
		if(type ==1){
			
		}else if(type ==5){
			
		}else {
			$("#reason").attr("readonly","readonly");
			$("#inOrOut").attr("disabled","disabled");
			$("#applyPunchTime").attr("readonly","readonly").attr("onfocus","");
		}
	})     
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/punchApply/ComM_list.do"
					style="color: #cc0000">忘打卡管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">忘打卡管理</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="punchApplyForm">
	    <input type="hidden" id="opreateType" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>用户</th>
				<td><input  type="text" name="punchApply.userName" id="userName"
					value="${punchApply.userName}" readonly/></td>
			</tr>
			<tr>
				<th>忘记打卡原因</th>
				<td><input type="text" name="punchApply.reason" id ="reason"
					value="${punchApply.reason }" /></td>
			</tr>
			<tr>
				<th>忘记打卡开始时间</th>
				<td><input type="text" name="punchApply.applyPunchTime"  id="applyPunchTime"
					value="<s:date format="yyyy-MM-dd HH:mm:ss" name="punchApply.applyPunchTime" />"
					onfocus="WdatePicker({ dateFmt:'yyyy-MM-dd HH:mm:ss'})" /></td>
			</tr>
			<s:if  test="%{type==1}">	
			<tr>
				<th>上下班</th>
				<td> <s:radio list="#{'1':'上班','2':'下班'}" name="punchApply.inOrOut" id="inOrOut"/> </td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><z:dict  type="out_apply_status" code="%{punchApply.status}" /></td>
		    </tr>
			</s:if>
			<s:else>
			<tr>
				<th>上下班</th>
				<td> <z:dict  type="punch_apply_type" code="%{punchApply.inOrOut}" /> </td>
			</tr>
			<tr>
				<th>审核状态</th>
				<td><select name="punchApply.status">
						<option value="0" <s:if test="%{punchApply.status==0}">selected =selected</s:if>>待审批</option>
						<option value="1" <s:if test="%{punchApply.status==1}">selected =selected</s:if>>已审批</option>
				</select></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="punchApply.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="punchApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			</s:else>
		</table>
	    <input type="hidden" name="punchApply.punchApplyId" value="${punchApply.punchApplyId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/punchApply/"/>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/punchApply/" />
	</form>
</body>
</html>