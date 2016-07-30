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
		var _validator = $("#outApplyForm").validate({
			onsubmit : true,
			rules : {

			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('outApplyForm', 'ComU_upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('outApplyForm', 'ComM_list', '');
		});

	});
	$(function () {
		var type =${type};
		if(type ==1){
			
		}else {
			$("#reason").attr("readonly","readonly")
			$("#d4311").attr("readonly","readonly").attr("onfocus","");
			$("#d4322").attr("readonly","readonly").attr("onfocus","");
		}
	})    
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/outApply/ComM_list.do"
					style="color: #cc0000">奖励管理</a> &nbsp;&gt;&gt;&nbsp; <a
					style="color: #cc0000" href="javascript:void(0);">修改奖励</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="outApplyForm">
	    <input type="hidden" id="opreateType" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<s:if test="%{type==1 }">
				<td><select type="text" name="outApply.departmentId">
						<s:iterator value="dicList" status="st">
							<option value="${dictCode}_${dictName}">${dictName}</option>
						</s:iterator>
				</select></td>
				</s:if>
				<s:else>
				<td><input  type="text"   value="${outApply.departmentName}" readonly/></td>
				</s:else>
			</tr>
			<tr>
				<th>用户</th>
				<td><input  type="text" name="outApply.userName" id="userName"
					value="${outApply.userName}" readonly/></td>
			</tr>
			<tr>
				<th>外出原因</th>
				<td><input type="text" name="outApply.reason" id="reason"
					value="${outApply.reason }" /></td>
			</tr>
			<tr>
				<th>外出开始时间</th>
				<td><input type="text" name="outApply.applyStartTime" id="d4311"
					value="<s:date format="yyyy-MM-dd" name="outApply.applyStartTime" />"
					onfocus="WdatePicker({maxDate:'#F{$dp.$D(\'d4322\')}',dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<tr>
				<th>外出结束时间</th>
				<td><input type="text" name="outApply.applyEndTime"  id="d4322"
					value="<s:date format="yyyy-MM-dd" name="outApply.applyEndTime" />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})"  /></td>
			</tr>
			
			<s:if  test="%{type==1}">	
			<tr>
				<th>审核状态</th>
				<td><z:dict  type="out_apply_status" code="%{outApply.status}" /></td>
		    </tr>
			</s:if>
			<s:else>
			<tr>
				<th>审核状态</th>
				<td><select name="outApply.status">
						<option value="0" <s:if test="%{leaveApply.status==0}">selected =selected</s:if>>待审批</option>
						<option value="1" <s:if test="%{leaveApply.status==1}">selected =selected</s:if>>已审批</option>
				</select></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="outApply.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="outApply.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			</s:else>
		</table>
	    <input type="hidden" name="outApply.outApplyId" value="${outApply.outApplyId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/outApply/"/>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/outApply/" />
	</form>
</body>
</html>