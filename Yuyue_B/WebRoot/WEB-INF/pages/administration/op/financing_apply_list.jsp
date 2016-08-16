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
			if (bt){doAction('financingApplyForm','ComD_del','')};
		});
	}
	function doExport(id,name) {
		$.messager.confirm('导出确认','你确认导出吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('financingApplyForm','ComE_excWord','')};
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
	     <s:set name="buttonType" value="type"/>
		<div class="right" style="background:#FFF;">
		<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/core/financingApply/ComM_list.do" style="color:#cc0000">理财协议管理</a>
				</h2>
			</div></div>
		<form action="#" method="post" id="financingApplyForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
	<th style="width: 20%">产品代码</th>
	<td style="width: 30%"><input type="text" name="ifinancingApply.type" value="${ifinancingApply.type}"/></td>
	<th style="width: 20%">客户名称</th>
	<td style="width: 30%"><input type="text" name="ifinancingApply.customerName" value="${ifinancingApply.customerName}"/></td>
     </tr> 
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('financingApplyForm','ComM_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		 <c:if test="${fn:contains(button, 'financing_apply_add') && type ==0}">
		<input class="btAdd"  value="新增"  onclick="doAction('financingApplyForm','ComC_add','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		 </c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/financingApply/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		 <input type="hidden" name="type" id="type" value="${type}" />
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>客户名称</th>
				<th>产品类型</th>
				<th>年转化率</th>
				<th>理财金额</th>
				<th>理财开始时间</th>
				<th>理财结束时间</th>
				<th>理财状态</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="dataPage.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{dataPage.start+#st.index + 1}"/></td>
				<td><s:property value="customerName"/>&nbsp;</td>
				<td><z:dict  type="financing_type" code="%{type}"/>&nbsp;</td>
				<td><s:property value="annualizedRate"/>&nbsp;</td>
				<td><s:property value="money"/>&nbsp;</td>
				<td><s:date name="%{financingStartTime}" format="yyyy-MM-dd"/> &nbsp;</td>
				<td><s:date name="%{financingEndTime}"  format="yyyy-MM-dd"/>&nbsp;</td>
				<td>
				 <z:dict  type="financing_remind_status" code="%{status}" />
				</td>
				<td align="center">
				   <c:if test="${fn:contains(button, 'financing_apply_edit') && buttonType ==0}">
					<a href="<%=request.getContextPath()%>/core/financingApply/ComU_edit.do?id=<s:property value="financingApplyId"/>&type=<s:property value="buttonType"/>">修改</a> 
					</c:if>
					<c:if test="${fn:contains(button, 'financing_apply_del') && buttonType ==0}">
					
					<a href="javascript:doDel('<s:property value="financingApplyId"/>','');">删除</a>
					</c:if>
					<c:if test="${fn:contains(button, 'financing_apply_load')&& buttonType ==0}">
					<a href="<%=request.getContextPath()%>/core/financingApply/ComR_load.do?id=<s:property value="financingApplyId"/>&type=<s:property value="buttonType"/>">查看</a>
				    </c:if>
				    <a href="javascript:doExport('<s:property value="financingApplyId"/>','');">导出借款协议</a>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" />
	</body>
</html>