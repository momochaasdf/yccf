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
				doAction('outApplyForm', 'ComC_save', '');
			}
		});
		$("input.btBack").click(function() {
			_validator.resetForm();
			doAction('outApplyForm', 'ComM_list', '');
		});

	});
</script>
</head>
<body>
	<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/outApply/ComM_list.do" style="color: #cc0000">外出管理</a>
				&nbsp;&gt;&gt;&nbsp; <a style="color: #cc0000"
					href="javascript:void(0);">新增外出信息</a>
			</h2>
		</div>
	</div>
	<div class="msg" style="clear: both;">
		<s:actionmessage />
		<s:fielderror />
		<s:actionerror />
	</div>
	<form action="#" method="post" id="outApplyForm">
	     <input type="hidden" name="type"  value="${type}" />
		<div class="navButton">
			<input type="button" value="确定" name="btOk" class="btOk"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
			<input type="button" value="返回" name="btBack" class="btBack"
				style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path%>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>

				<th>部门名称</th>
				<td><select type="text" name="outApply.departmentId">
						<s:iterator value="dicList" status="st">
							<option value="${dictCode}_${dictName}">${dictName}</option>
						</s:iterator>
				</select></td>
			</tr>
			<tr>
				<th>外出原因</th>
				<td><input type="text" name="outApply.reason"
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
					value="<s:date format="yyyy-MM-dd" name="outApply.applyEndTime"	 />"
					onfocus="WdatePicker({minDate:'#F{$dp.$D(\'d4311\')}',dateFmt:'yyyy-MM-dd'})"  /></td>
			</tr>
		</table>
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