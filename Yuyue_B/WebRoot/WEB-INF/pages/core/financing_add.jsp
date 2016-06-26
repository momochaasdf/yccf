<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		var _validator=$("#financingForm").validate({
		onsubmit: true,
		rules: {
			'financing.type':{required: true},
			'financing.annualizedRate':{required: true,maxbytelen:100},
			'financing.months':{min:1,number:true,required: true},
			'financing.startUp':{min:5,max:100,number:true,required: true}
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('financingForm','ComC_save','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('financingForm','ComM_list','');
		});
		
	});
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/financing/ComM_list.do" style="color:#cc0000">理财产品管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">新增理财产品</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="financingForm">
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>代码</th>
				<td><select type="text" name="financing.type"   >
				 <s:iterator value="dicList" status="st">
				   <option value="${dictCode}">${dictName}</option>
				   </s:iterator>
				</select></td>
			</tr><tr>
				<th>产品名称</th>
				<td><input type="text" name="financing.financingName" value="${financing.financingName}" /></td>
			</tr><tr>
				<th>本利回收方式</th>
				<td><input type="text" name="financing.financingDesc" value="${financing.financingDesc}" /></td>
			</tr><tr>
				<th>年传化收益率(%)</th>
				<td><input type="text" name="financing.annualizedRate" value="${financing.annualizedRate}" /></td>
			</tr>
			<tr>
				<th>封闭期(月)</th>
				<td><input type="number" name="financing.months" value="${financing.months}" /></td>
			</tr>
			<tr>
				<th>起点(万元)</th>
				<td><input type="text" name="financing.startUp" value="${financing.startUp}" /></td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="确定" name="btOk" class="btOk" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		<input type="button" value="返回" name="btBack" class="btBack" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/financing/"/>
		</form>
	</body>
</html>