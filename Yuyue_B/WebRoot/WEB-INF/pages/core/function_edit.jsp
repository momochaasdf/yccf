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
		var _validator=$("#functionForm").validate({
		onsubmit: false,
		rules: {
			'function.functionName':{required: true,maxbytelen:100},'function.treeCode':{required: true,maxbytelen:200},
			'function.url':{required: true,maxbytelen:100},
			'function.description':{maxbytelen:100},'function.sortNo':{digits:true}
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('functionForm','ComU_upd','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('functionForm','ComM_list','');
		});
	});
	</script>
	</head>
	<body>
		<div class="right">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path %>/core/function/ComM_list.do" style="color:#cc0000">资源管理</a>
				&nbsp;&gt;&gt;&nbsp;
				<a href="javascript:void(0);" style="color:#cc0000">资源管理编辑</a>
			</h2>
		</div>
	</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="functionForm">
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk" />
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" name="btBack" class="btBack"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
	<th>上级功能</th>
	<td><s:property value="parentFun.functionName"/><input type="hidden" name="parentFun.functionName" value="<s:property value="parentFun.functionName"/>"/></td>
</tr><tr>
	<th><span style="color:red">*</span>功能名称</th>
	<td><input type="text" name="function.functionName" value="${function.functionName}" /></td>
</tr><tr>
	<th><span style="color:red">*</span>代码</th>
	<td><input type="text" name="function.treeCode" value="${function.treeCode}" /></td>
</tr><tr>
	<th><span style="color:red">*</span>资源URL</th>
	<td><input type="text" name="function.url" value="${function.url}" /></td>
</tr><tr>
	<th>描述</th>
	<td><input type="text" name="function.description" value="${function.description}" /></td>
</tr><tr>
	<th>排序</th>
	<td><input type="text" name="function.sortNo" value="${function.sortNo}" /></td>
</tr>
		</table>
		<input type="hidden" name="function.functionId" value="${function.functionId}"/>
		<input type="hidden" name="function.parentFunctionId" value="${function.parentFunctionId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/function/"/>
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk" />
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" name="btBack" class="btBack"/>
		</div>
		</form>
	</body>
</html>