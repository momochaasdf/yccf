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
		var _validator=$("#roleForm").validate({
		onsubmit: false,
		rules: {
			'role.roleName':{required: true,maxbytelen:100},'role.info':{maxlength:100}
		}});
		$("input.btOk").click(function(){
			if(_validator.form()){doAction('roleForm','ComU_upd','');}
		});
		$("input.btBack").click(function(){
			_validator.resetForm();
			doAction('roleForm','ComM_list','');
		});
	});
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a style="color:#cc0000" href="<%=path %>/core/role/ComM_list.do">角色管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">角色编辑</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<form action="#" method="post" id="roleForm">
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk" />
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" name="btBack" class="btBack" />
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th style="width: 20%"><span style="color:red">*</span>角色代码</th>
				<td><input type="text" name="role.roleCode"  readonly="readonly" value="${role.roleCode}"/></td>
			</tr>
			<tr>
				<th><span style="color:red">*</span>角色名称</th>
				<td><input type="text" name="role.roleName" value="${role.roleName}"/></td>
			</tr><!-- 
			<tr>
				<th>图标</th>
				<td><img src="#" alt="图标" border="0" width="16px" height="16px"/> </td>
			</tr> -->
			<tr>
				<th>是否系统角色</th>
				<td>
				<s:radio list="#{'1':'是','0':'否'}" name="role.isSysRole"/>
				</td>
			</tr>
			<tr>
				<th>备注</th>
				<td><textarea rows="5" cols="30" name="role.info">${role.info}</textarea> </td>
			</tr>
		</table>
		<input type="hidden" name="role.roleId" value="${role.roleId}"/>
		<input type="hidden" name="id" value="${id}"/>
		<input type="hidden" name="_ns" id="_ns" value="/core/role/"/>
		<div class="navButton">
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="确定" name="btOk" class="btOk" />
		<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" value="返回" name="btBack" class="btBack" />
		</div>
		</form>
	</body>
</html>