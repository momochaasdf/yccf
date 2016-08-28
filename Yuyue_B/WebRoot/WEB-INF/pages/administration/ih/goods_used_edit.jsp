<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		var _validator=$("#goodsUsedForm").validate({
		onsubmit: false,
		rules: {
			 
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('goodsUsedForm','ComU_upd','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('goodsUsedForm','ComM_list','');
		});
	});
	
	$(function(){
		var type =${type};
		if(type ==2){
		$(".editReadonly").attr("readonly","readonly");
		$("#userName").attr("disabled","disabled");
		}
	})
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/goodsUsed/ComM_list.do" style="color:#cc0000">物品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">物品编辑</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="goodsUsedForm">
		<input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			 <tr>
				<th>物品名称</th>
				<td><input type="text" name="goodsUsed.goodsName" class="editReadonly"
					value="${goodsUsed.goodsName}" /></td>
			</tr>
			<tr>
				<th>领取数量</th>
				<td><input type="number" name="goodsUsed.nums"
					value="${goodsUsed.nums}"  class="editReadonly"/></td>
			</tr>
			
			<s:if  test="%{type==1}">	
			<tr>
				<th>申请状态</th>
                <td><z:dict type="goods_used_status" code="%{goodsUsed.status}" /></td>				
			</tr>
			</s:if>
			<s:else>
			<tr>
				<th>审核状态</th>
				<td><select name="goodsUsed.status">
						<option value="1" <s:if test="%{goodsUsed.status==1}">selected =selected</s:if>>申请中</option>
						<option value="2" <s:if test="%{goodsUsed.status==2}">selected =selected</s:if>>批准</option>
				</select></td>
			</tr>
			<tr>
				<th>审核时间</th>
				<td><input type="text" name="goodsUsed.reviewTime"
					value="<s:date format="yyyy-MM-dd" name="goodsUsed.reviewTime" />"
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM-dd'})" /></td>
			</tr>
			</s:else>
		</table>
		<input type="hidden" name="goodsUsed.goodsUsedId" value="${goodsUsed.goodsUsedId}"/>
		<input type="hidden" name="id" value="${goodsUsed.goodsUsedId}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/goodsUsed/"/>
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		</form>
	</body>
</html>