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
		var _validator = $("#rewardForm").validate({
			onsubmit : true,
			rules : {

			}
		});
		$("input.btOk").click(function() {
			if (_validator.form()) {
				doAction('rewardForm', 'ComU_upd', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('rewardForm', 'ComM_list', '');
		});

	});
	$(function(){
		var type =${type};
		if(type ==2){
		$(".editReadonly").attr("readonly","readonly");
		$("#rewardTime").attr("onfocus","");
		}
	})
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/reward/ComM_list.do"
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
	<form action="#" method="post" id="rewardForm">
	     <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<s:if test="%{type==0}">
			 <tr>
				<th>部门</th>
				<td><select type="text" name="reward.departmentId" id="departmentName" >
						<s:iterator value="dicList" status="st">
						<option value="${dictCode}_${dictName}" <s:if test="%{reward.departmentId ==dictCode}">selected = selected</s:if>>${dictName}</option>
						</s:iterator>
				</select></td>
			</tr>
			 <tr>
				<th>用户</th>
				<td><select type="text" name="reward.userName" id="userName" >
						<s:iterator value="userList" status="st">
							<option value="${userId}_${userName}" <s:if test="%{reward.userId ==userId}">selected = selected</s:if>>${userName}</option>
						</s:iterator>
				</select></td>
			</tr>
			</s:if>
			<s:else>
			<tr>
			   <th>部门</th>
				<td><input  type="text" 
					value="${reward.departmentName}" readonly/></td>
			</tr>
			<tr>
			   <th>用户</th>
				<td><input  type="text" 
					value="${reward.userName}" readonly/></td>
			</tr>
			</s:else>
			<tr>
				<th>奖励原因</th>
				<td><input type="text" name="reward.reason" class="editReadonly"
					value="${reward.reason }" /></td>
			</tr>
			<tr>
				<th>奖励金额</th>
				<td><input type="number" name="reward.money" class="editReadonly"
					value="${reward.money}" /></td>
			</tr>
			<tr>
				<th>奖励时间</th>
				<td><input type="text" name="reward.rewardTime" class="editReadonly" id="rewardTime"
					value="<s:date format="yyyy-MM-dd" name="reward.rewardTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			<s:if  test="%{type==1 || type ==0}">	
			<tr>
				<th>审核状态</th>
				<td><z:dict  type="reward_apply_status" code="%{reward.status}" /></td>
		    </tr>
			</s:if>
			<s:else>
			<tr>
				<th>审核状态</th>
				<td><select name="reward.status">
						<option value="0"  <s:if test="%{reward.status==0}">selected =selected</s:if> >待审批</option>
						<option value="1"  <s:if test="%{reward.status==1}">selected =selected</s:if> >已审批</option>
						<option value="2"   <s:if test="%{reward.status==2}">selected =selected</s:if>>已奖励</option>
				</select></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="reward.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="reward.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			</s:else>
			
		</table>
	    <input type="hidden" name="reward.rewardId" value="${reward.rewardId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/reward/"/>
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/reward/" />
	</form>
</body>
</html>