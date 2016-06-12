<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
			type="text/css" />
	<script type="text/javascript">
	function doDel(id,name) {
		$.messager.confirm('删除确认','你确认删除角色"' + name + '"吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('roleForm','ComD_del','')};
		});
	}
	//角色授权
	function doAuthorized(id, name) {
		loadingbox.show();
		$('#funstree').tree({
			checkbox: true,
			url: jsCtx+'/core/function/ComJ_loadTreeAll.do?roleId='+id,
			loadFilter: function(data){
				$('#popTree').window({'title':'角色' + name + '授权'});
				$('#popTree').window('open');
				loadingbox.hide();
            	return data;
        	}
		});
		$("#roleId").val(id);
	}
	$(document).ready(function(){
		$("input.btOk").click(function(){
			var parentNodes = $('#funstree').tree('getChecked','indeterminate');
			var nodes = $('#funstree').tree('getChecked');
			var s = '';
			for(var i=0; i<parentNodes.length; i++){
				if (parentNodes[i].id == undefined)continue;
				if (s != '') {
					if (s.indexOf(parentNodes[i].id) == -1) {
						s += ',';
						s += parentNodes[i].id;
					}
				} else {
					s += parentNodes[i].id;
				}
			}
			for(var i=0; i<nodes.length; i++){
				if (s == undefined)continue;
				if (s != '') s += ',';
				s += nodes[i].id;
			}
			$.ajax({
				url: '<%=request.getContextPath()%>/core/role/ComJ_saveRoleFuns.do', 
				data: {roleId:$("#roleId").val(), funs: s},
				dataType:'json',
				type: 'post',
				success: function(data){
					var result = eval(data);
					$('#popTree').window('close');
					$.messager.alert("提示", "授权成功");
				},
				error:function(a,b,c){
					$.messager.alert("提示", "授权失败");
				}
			});
		});
	});
	</script>
	</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a style="color:#cc0000" href="<%=path %>/core/role/ComM_list.do">角色管理</a>
				</h2>
			</div>
		</div>
		<form action="#" method="post" id="roleForm" style="clear: both;">
		<fieldset class="navSearch">
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
					<th style="width: 20%">角色名称</th>
					<td style="width: 30%"><input type="text" name="inRole.roleName" value="${inRole.roleName}"/></td>
					<th style="width: 20%">是否系统角色</th>
					<td><s:radio list="#{'1':'是','0':'否','':'全部'}" name="inRole.isSysRole"/></td>
				</tr>
			</table>
		</fieldset>
		<div class="msg"><s:actionmessage/><s:fielderror/><s:actionerror/></div>
		<div class="navButton">
		<input type="button" value="检索" class="btSearch" onclick="doAction('roleForm','ComM_list','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
		<input type="button" value="新增" class="btAdd" onclick="doAction('roleForm','ComC_add','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/role/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th style="width: 15%">角色代码</th>
				<th style="width: 30%">角色名称</th>
				<th style="width: 10%">系统角色</th>
				<th style="width: 20%">备注</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="pgn.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{pgn.start+#st.index + 1}"/></td>
				<td><s:property value="roleCode"/>&nbsp;</td>
				<td><s:property value="roleName"/>&nbsp;</td>
				<td align="center"><s:if test="%{isSysRole==\"1\"}">是</s:if><s:else>否</s:else></td>
				<td><s:property value="info" escape="false"/>&nbsp;</td>
				<td align="center">
					<a href="<%=request.getContextPath()%>/core/role/ComU_edit.do?id=<s:property value="roleId"/>">修改</a> 
					<s:if test="%{isSysRole!=\"1\"}"><a href="javascript:doDel('<s:property value="roleId"/>','<s:property value="roleName"/>');">删除</a></s:if>
					<a href="<%=request.getContextPath()%>/core/role/ComR_load.do?id=<s:property value="roleId"/>">查看</a>
					<a href="javascript:doAuthorized('<s:property value="roleId"/>','<s:property value="roleName"/>');">授权</a>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" />
		<form action="#" id="authForm">
		<div id="popTree" class="easyui-window" closed="true" modal="true" resizable="false" collapsible="false" minimizable="false" maximizable="false" title="请选择权限" style="width:300px;height:400px;">
			<table style="height: 95%; width: 95%">
				<tr><td height="90%" valign="top"><ul id="funstree"></ul></td> </tr>
				<tr><td height="10%" align="center">
				<input type="button" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;" class="btOk" value="确定" />
				</td> </tr>
			</table>
			<input type="hidden" name="roleId" id="roleId"/>
		</div>
		</form>
	</body>
</html>