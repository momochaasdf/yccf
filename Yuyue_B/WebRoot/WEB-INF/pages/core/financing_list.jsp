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
			if (bt){doAction('financingForm','ComD_del','')};
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
					<a href="<%=path %>/core/financing/ComM_list.do" style="color:#cc0000">理财产品管理</a>
				</h2>
			</div></div>
		<form action="#" method="post" id="financingForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
	<th style="width: 20%">产品代码</th>
	<td style="width: 30%"><input type="text" name="ifinancing.type" value="${ifinancing.type}"/></td>
	<th style="width: 20%">产品名称</th>
	<td style="width: 30%"><input type="text" name="ifinancing.financingName" value="${ifinancing.financingName}"/></td>
     </tr> 
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('financingForm','ComM_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		<c:if test="${fn:contains(button, 'financing_add')}">
		<input class="btAdd"  value="新增"  onclick="doAction('financingForm','ComC_add','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/financing/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>产品代码</th>
				<th>产品名称</th>
				<th>封闭期(月)</th>
				<th>年转化率</th>
				<th>起点(万元)</th>
				<th>本利回收方式</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="dataPage.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{dataPage.start+#st.index + 1}"/></td>
				<td><s:property value="type"/>&nbsp;</td>
				<td><s:property value="financingName"/>&nbsp;</td>
				<td><s:property value="months"/><s:if test="type==6">-<s:property value="monthsEnd"/> &nbsp;</s:if></td>
				<td><s:property value="annualizedRate"/><s:if test="type==6">-<s:property value="annualizedRateEnd"/> &nbsp;</s:if>%</td>
				<td><s:property value="startUp"/>&nbsp;</td>
				<td><s:property value="financingDesc"/>&nbsp;</td>
				<td align="center">
				    <c:if test="${fn:contains(button, 'financing_edit')}">
					<a href="<%=request.getContextPath()%>/core/financing/ComU_edit.do?id=<s:property value="financingId"/>">修改</a> 
					</c:if>
					<c:if test="${fn:contains(button, 'financing_del')}">
					<a href="javascript:doDel('<s:property value="financingId"/>','');">删除</a>
					</c:if>
					<c:if test="${fn:contains(button, 'financing_load')}">
					<a href="<%=request.getContextPath()%>/core/financing/ComR_load.do?id=<s:property value="financingId"/>">查看</a>
					</c:if>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" />
	</body>
</html>