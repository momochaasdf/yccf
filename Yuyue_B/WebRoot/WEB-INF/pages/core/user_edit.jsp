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
		var _validator=$("#userForm").validate({
		onsubmit: false,
		rules: {'user.loginId':{required: true,maxbytelen:100},
		'user.userName':{required: true,maxbytelen:100},
		'user.password':{required: true,maxbytelen:64},
		'user.status':{required: true}}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('userForm','ComU_upd','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('userForm','ComM_list','');
		});
		$("input[type=password]").focus(function(){
			  $(this).val(""); 
	     });
	});
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a style="color:#cc0000" href="<%=path %>/core/user/ComM_list.do">用户管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">用户编辑</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="userForm">
		<div class="navButton">
			<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk"/>
			<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" 
			value="返回" name="btBack" class="btBack"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>登录账号</th>
				<td><input type="text" name="user.loginId" readonly="readonly" value="${user.loginId}" /></td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>姓名</th>
				<td><input type="text" name="user.userName" value="${user.userName}" /></td>
			</tr><tr>
				<th><span style="color:red">*</span>生日</th>
				<td><input type="date" name="user.birthday" value="<s:date format="yyyy-MM-dd" name="user.birthday" />" /></td>
			</tr><tr>
				<th><span style="color:red">*</span>住址</th>
				<td><input type="text" name="user.address" value="${user.address}" /></td>
			</tr><tr>
				<th><span style="color:red">*</span>E-MAIL</th>
				<td><input type="text" name="user.email" value="${user.email}" /></td>
			</tr><tr>
				<th><span style="color:red">*</span>QQ</th>
				<td><input type="number" name="user.qq" value="${user.qq}" /></td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>状态</th>
				<td><s:radio list="#{'1':'可用','0':'禁用'}" name="user.status"/></td>
			</tr>
		</table>
		<input type="hidden" name="user.userId" value="${user.userId}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/user/"/>
		<div class="navButton">
			<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk"/>
			<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" 
			value="返回" name="btBack" class="btBack"/>
		</div>
		</form>
	</body>
</html>