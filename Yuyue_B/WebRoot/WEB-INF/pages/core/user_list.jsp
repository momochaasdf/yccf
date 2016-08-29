<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%@ taglib prefix="d" uri="/deying-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
			type="text/css" />
	<link rel="stylesheet" href="<%=path%>/common/css/paging.css"
	type="text/css" />
	<script type="text/javascript">
	function doDel(id,name) {
		$.messager.confirm('删除确认','你确认删除用户"' + name + '"吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('userForm','ComD_del','')};
		});
	} 
	function confRole(userId,name) {
		$('#roletree').tree({
			animate:true,
			checkbox: true,
			url: jsCtx+'/core/role/ComJ_loadRoleAll.do?userId='+userId+'&s='+Math.random()
		});
		$('#roleTree').window({'title':'给用户"' + name + '"配置角色'});
		$('#roleTree').window('open');
		$('#userId').val(userId);
	}
	
	function confUser(userId,name) {
		$('#usertree').tree({
			animate:true,
			checkbox: true,
			url: jsCtx+'/core/role/ComJ_loadRoleUser.do?userId='+userId+'&s='+Math.random()
		});
		$('#userTree').window({'title':'给团队理财经理"' + name + '"关联普通理财经理'});
		$('#userTree').window('open');
		$('#userId_team').val(userId);
	}
	
	
	$(document).ready(function(){
		$("input.btOk").click(function(){
			var nodes = $('#roleTree').tree('getChecked');
			var s = '';
			for(var i=0; i<nodes.length; i++){
				if (s == undefined)continue;
				if (s != '') s += ',';
				s += nodes[i].id;
			}
			$.ajax({
				url: '<%=request.getContextPath()%>/core/user/ComJ_saveUserRole.do', 
				data: {userId:$("#userId").val(), roles: s},
				dataType:'json',
				type: 'post',
				success: function(data){
					var result = eval(data);
					$('#roleTree').window('close');
					$.messager.alert("提示", "用户角色维护成功");
				},
				error:function(a,b,c){
					$.messager.alert("提示", "用户角色维护失败");
				}
			});
		});
		
		
		
		$("input.btUserOk").click(function(){
			var nodes = $('#userTree').tree('getChecked');
			var s = '';
			for(var i=0; i<nodes.length; i++){
				if (s == undefined)continue;
				if (s != '') s += ',';
				s += nodes[i].id;
			}
			$.ajax({
				url: '<%=request.getContextPath()%>/core/role/ComJ_saveUserTeam.do', 
				data: {userId:$("#userId_team").val(), userIds: s},
				dataType:'json',
				type: 'post',
				success: function(data){
					var result = eval(data);
					$('#userTree').window('close');
					$.messager.alert("提示", "关系维护成功");
				},
				error:function(a,b,c){
					$.messager.alert("提示", "关系维护失败");
				}
			});
		});
		if( "${msg}" != "" ){
	       $.colorbox.alert("${msg}");
	     }
	});
	
	</script>
	</head>
	<body>
	      <s:set name="button" value="#session.button"/>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a style="color:#cc0000" href="<%=path %>/core/user/ComM_list.do"><c:if test="${type==0}">用户管理</c:if>
					<c:if test="${type==1}">个人资料管理</c:if><c:if test="${type==2}">员工资料管理</c:if></a>
				</h2>
			</div>
		</div>   
		<form action="#" method="post" id="userForm" style="clear: both;">
		<fieldset class="navSearch">
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
					<th style="width: 20%">登录账号</th>
					<td style="width: 30%"><input type="text" name="info.loginId" value="${info.loginId}"/></td>
	 				<th style="width: 20%">姓名</th>
					<td style="width: 30%"><input type="text" name="info.userName" value="${info.userName}"/></td>
				</tr><tr>
					<th style="width: 20%">状态</th>
					<td style="width: 30%"><s:radio list="#{'1':'可用','0':'禁用'}" name="info.status"/></td>
					<th style="width: 20%"></th>
					<td style="width: 30%"></td>
				</tr>
			</table>
		</fieldset>
		<div class="msg"><s:actionmessage/><s:fielderror/><s:actionerror/></div>
		<div class="navButton">
		<input type="button" value="检索" class="btSearch" onclick="doAction('userForm','ComM_list','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
		<c:if test="${fn:contains(button, 'user_add') && type ==0}">
		<input type="button" value="新增" class="btAdd" onclick="doAction('userForm','ComC_add','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
		</c:if>
		<c:if test="${fn:contains(button, 'hr_add') && type ==2}">
		<input type="button" value="新增" class="btAdd" onclick="doAction('userForm','ComC_add','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
		</c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/user/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		 <input type="hidden" name="type" id="type" value="${type}" />
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>登录账号</th>
				<th>姓名</th>
				<th>部门</th>
				<th>角色</th>
				<th>状态</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="dataPage.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{dataPage.start+#st.index + 1}"/></td>
				<td><s:property value="loginId"/></td>
				<td><s:property value="userName"/></td>
				<td><s:property value="departmentName"/></td>
				<td><s:iterator value="comUserRoles" status="ss"> 
				      <s:property value="comRole.roleName"/>
				     </s:iterator> </td>
				<td align="center"><s:if test="status==1">可用</s:if><s:elseif test="status==0">禁用</s:elseif><s:else>&nbsp;</s:else></td>
				<td align="center">
					<c:if test="${fn:contains(button, 'user_edit') && type ==0}">
					<a href="<%=request.getContextPath()%>/core/user/ComU_edit.do?type=${type}&id=<s:property value="userId"/>">修改</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'employee_edit') && type ==1}">
					<a href="<%=request.getContextPath()%>/core/user/ComU_edit.do?type=${type}&id=<s:property value="userId"/>">修改</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'hr_edit') && type ==2}">
					<a href="<%=request.getContextPath()%>/core/user/ComU_edit.do?type=${type}&id=<s:property value="userId"/>">修改</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'user_del') && type ==0}">
					<s:if test="userId!=#session['_COM_FRAMEWORK_USER_KEY'].userId"><a href="javascript:doDel('<s:property value="userId"/>','<s:property value="userName"/>');">删除</a></s:if>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'hr_del') && type ==2}">
					<s:if test="userId!=#session['_COM_FRAMEWORK_USER_KEY'].userId"><a href="javascript:doDel('<s:property value="userId"/>','<s:property value="userName"/>');">删除</a></s:if>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'user_load') && type ==0}">
					<a href="<%=request.getContextPath()%>/core/user/ComR_load.do?type=${type}&id=<s:property value="userId"/>">查看</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'employee_load') && type ==1}">
					<a href="<%=request.getContextPath()%>/core/user/ComR_load.do?type=${type}&id=<s:property value="userId"/>">查看</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'hr_load') && type ==2}">
					<a href="<%=request.getContextPath()%>/core/user/ComR_load.do?type=${type}&id=<s:property value="userId"/>">查看</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'user_reset_pwd') && type==0}">
					<a href="<%=request.getContextPath()%>/core/user/ComU_reset.do?type=${type}&id=<s:property value="userId"/>">重置</a>&nbsp;
					</c:if>
					<c:if test="${fn:contains(button, 'user_role_rel') && type==0}">
					<a href="javascript:confRole('<s:property value="userId"/>','<s:property value="userName"/>');">关联角色</a>
					</c:if>
					<c:if test="${fn:contains(button, 'user_role_rel') && type==0}">
					<a href="javascript:confUser('<s:property value="userId"/>','<s:property value="userName"/>');">关联理财经理</a>
					</c:if>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table>
		<d:pages currentPage="%{currentPage}" showPageNumber="3"
				totalPage="%{totalPage}" url="ComM_list.do" cssClass="pagnation">
				<s:param name="info.loginId">${info.loginId}</s:param>
				<s:param name="info.userName">${info.userName}</s:param>
				<s:param name="info.status">${info.status}</s:param>
				<s:param name="type">${type}</s:param>
		</d:pages>
		<div id="roleTree" class="easyui-window" closed="true" modal="true" resizable="false" collapsible="false" minimizable="false" maximizable="false" title="配置角色" style="width:300px;height:400px;">
			<table style="height: 95%; width: 95%">
				<tr><td height="90%" valign="top"><ul id="roletree"></ul></td> </tr>
				<tr><td height="10%" align="center">
				<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" class="btOk" value="确定" />
				</td> </tr>
			</table>
			<input type="hidden" name="userId" id="userId"/>
		</div>
		
		<div id="userTree" class="easyui-window" closed="true" modal="true" resizable="false" collapsible="false" minimizable="false" maximizable="false" title="关联理财经理" style="width:300px;height:400px;">
			<table style="height: 95%; width: 95%">
				<tr><td height="90%" valign="top"><ul id="usertree"></ul></td> </tr>
				<tr><td height="10%" align="center">
				<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" class="btUserOk" value="确定" />
				</td> </tr>
			</table>
			<input type="hidden" name="userId" id="userId_team"/>
		</div>
	</body>
</html>