<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
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
	<script type="text/javascript">
	function doDel(id,name) {
		$.messager.confirm('删除确认','你确认删除权限"' + name + '"吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('functionForm','ComD_del','')};
		});
	}
	$(document).ready(function(){
		$('#funstree').tree({
			checkbox: false,
			url: jsCtx+'/core/function/ComJ_loadtree.do?fixCookie=funstree_',
			onClick:function(node){
				$("#id").val(node.id == undefined ? "" : node.id);
				$.cookie('funstree_' + node.id, node.state,{expires:7});
				doAction('functionForm','ComM_list','');
			}
		});
	});
	$(function(){
	  if("${msg}" != ""){
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
					<a href="<%=path %>/core/function/ComM_list.do" style="color:#cc0000">资源管理</a>
				</h2>
			</div>
		</div>
		<form action="#" method="post" id="functionForm" style="clear: both;">
		<div class="navButton">
		<c:if test="${fn:contains(button, 'function_add')}">
		<input type="button" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;" value="新增" class="btAdd" onclick="doAction('functionForm','ComC_add','')" />
		</c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/function/"/>
		<input type="hidden" name="id" id="id" value="<s:property value="id"/>"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
		<table>
		<tr>
		<td width="200px;" valign="top">
			<ul id="funstree"></ul>
		</td>
		<td valign="top">
		<table cellpadding="0" cellspacing="0" align="center" class="listTable" style="float: left">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
<th>功能名称</th>
<th>代码</th>
<th>资源URL</th>
<th>排序</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="pgn.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{pgn.start+#st.index + 1}"/></td>
<td><s:property value="functionName"/>&nbsp;</td>
<td><s:property value="treeCode"/>&nbsp;</td>
<td><s:property value="url"/>&nbsp;</td>
<td align="center"><s:property value="sortNo"/></td>
				<td align="center">
				    <c:if test="${fn:contains(button, 'function_edit')}">
					<a href="<%=request.getContextPath()%>/core/function/ComU_edit.do?id=<s:property value="functionId"/>">修改</a> 
					</c:if>
					<c:if test="${fn:contains(button, 'function_del')}">
					<a href="javascript:doDel('<s:property value="functionId"/>','<s:property value="functionName"/>');">删除</a>
					</c:if>
					<c:if test="${fn:contains(button, 'function_load')}">
					<a href="<%=request.getContextPath()%>/core/function/ComR_load.do?id=<s:property value="functionId"/>">查看</a>
					</c:if>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" ></z:pgination>
		</td>
		</tr>
		</table>
		<div class="navButton">
		<input type="button" value="新增" class="btAdd" onclick="doAction('functionForm','ComC_add','')"  style="margin-top:5px;color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;" />
		</div>
	</body>
</html>