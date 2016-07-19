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
		$.messager.confirm('删除确认','你确认删除吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('dictForm','ComD_del','')};
		});
	}
	$(function(){
	 if("${msg}" != ""){ 
	  $.colorbox.alert("${msg}");
	 }
	});
	</script>
	</head>
	<body>
	    <s:set name="button" value="#session.button"/>
		<div class="right" style="background:#FFF;">
		<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/dict/ComM_list.do" style="color:#cc0000">字典管理</a>
				</h2>
			</div></div>
		<form action="#" method="post" id="dictForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
	<th style="width: 20%">代码</th>
	<td style="width: 30%"><input type="text" name="inDict.dictCode" value="${inDict.dictCode}"/></td>
	<th style="width: 20%">名称</th>
	<td style="width: 30%"><input type="text" name="inDict.dictName" value="${inDict.dictName}"/></td>
</tr><tr>
	<th style="width: 20%">类型代码</th>
	<td style="width: 30%"><input type="text" name="inDict.dictTypeCode" value="${inDict.dictTypeCode}"/></td>
	<th style="width: 20%"></th>
	<td style="width: 30%"></td>
</tr><tr>
	<th style="width: 20%">排序</th>
	<td style="width: 30%"><input type="text" name="inDict.sortNo" value="${inDict.sortNo}"/></td>
	<th style="width: 20%">&nbsp;</th>
	<td style="width: 30%">&nbsp;</td>
</tr>
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('dictForm','ComM_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		<c:if test="${fn:contains(button, 'dic_add')}">
		<input class="btAdd"  value="新增"  onclick="doAction('dictForm','ComC_add','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/dict/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>代码</th>
				<th>名称</th>
				<th>类型代码</th>
				<th>排序</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="pgn.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{pgn.start+#st.index + 1}"/></td>
				<td><s:property value="dictCode"/>&nbsp;</td>
				<td><s:property value="dictName"/>&nbsp;</td>
				<td><s:property value="dictTypeCode"/>&nbsp;</td>
				<td><s:property value="sortNo"/>&nbsp;</td>
				<td align="center">
				    <c:if test="${fn:contains(button, 'dic_edit')}">
					<a href="<%=request.getContextPath()%>/core/dict/ComU_edit.do?id=<s:property value="dictId"/>">修改</a> 
					</c:if>
					<c:if test="${fn:contains(button, 'dic_del')}">
					<a href="javascript:doDel('<s:property value="dictId"/>','');">删除</a>
					</c:if>
					<c:if test="${fn:contains(button, 'dic_load')}">
					<a href="<%=request.getContextPath()%>/core/dict/ComR_load.do?id=<s:property value="dictId"/>">查看</a>
					</c:if>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" />
	</body>
</html>