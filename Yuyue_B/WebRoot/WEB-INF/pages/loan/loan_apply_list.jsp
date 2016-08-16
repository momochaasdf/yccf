<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	function doDel(id, name) {
		$.messager.confirm('删除确认', '你确认删除吗?', function(bt) {
			$("#id").val(id);
			if (bt) {
				doAction('loanApplyForm', 'ComD_del', '')
			}
			;
		});
	}
	function doExport(id,name) {
		$.messager.confirm('导出确认','你确认导出吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('loanApplyForm','ComE_excWord','')};
		});
	}
	$(function() {
		if ("${msg}" != "") {
			$.colorbox.alert("${msg}");
		}
	});
</script>
</head>
<body>
     <s:set name="button" value="#session.button"/>
      <s:set name="button_type" value="type"/>
	<div class="right" style="background: #FFF;">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/loanApply/ComM_list.do"
					style="color: #cc0000">借款申请管理</a>
			</h2>
		</div>
	</div>
	<form action="#" method="post" id="loanApplyForm" style="clear: both;">
		<fieldset class="navSearch">
			<legend>
				<span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span>
			</legend>
			<table cellpadding="0" cellspacing="0" class="navSearch"
				id="targetTable">
				<tr>
					<th style="width: 20%">客户名称</th>
					<td style="width: 30%"><input type="text"
						name="iloanApply.customerName" value="${iloanApply.customerName}" /></td>
				</tr>
			</table>
		</fieldset>
		<div class="navButton">
			<input class="btSearch" value="检索"
				onclick="doAction('loanApplyForm','ComM_list','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			<c:if test="${fn:contains(button, 'loan_apply_add') && button_type ==0}">
			<input class="btAdd" value="新增"
				onclick="doAction('loanApplyForm','ComC_add','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		     </c:if>
		     
		     <c:if test="${fn:contains(button, 'loan_add') && button_type ==1}">
			<input class="btAdd" value="新增"
				onclick="doAction('loanApplyForm','ComC_add','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		     </c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/loanApply/" /> <input
			type="hidden" name="id" id="id" /> <input type="hidden" name=_query
			id="_query" value="_query" /> <input type="hidden" name="type" id="type" value="${type}" />
	</form>
	<table cellpadding="0" cellspacing="0" align="center" class="listTable">
		<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>借款客户名称</th>
				<th>出借人名称</th>
				<th>还款方式</th>
				<th>借款金额</th>
				<th>借款开始时间</th>
				<th>借款结束时间</th>
				<th>借款总时间(月)</th>
				<th>审核人</th>
				<th>审核状态</th>
				<th>审核时间</th>
				<th style="width: 20%">操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="dataPage.data" status="st">
				<tr <s:if test="!#st.odd">class="trodd"</s:if>>
					<td align="center"><s:property
							value="%{dataPage.start+#st.index + 1}" /></td>
					<td><s:property value="customerName" />&nbsp;</td>
					<td><s:property value="lenderName" />&nbsp;</td>
					<td><z:dict  type="collection_loan_type" code="%{type}" />&nbsp;</td>
					<td><s:property value="applyMoney" />&nbsp;</td>
					<td><s:date name="%{loanStartTime}" format="yyyy-MM-dd" />&nbsp;</td>
					<td><s:date name="%{loanEndTime}" format="yyyy-MM-dd" />&nbsp;</td>
					<td><s:property value="months" />&nbsp;</td>
					<td><s:property value="reviewPerson" />&nbsp;</td>
					<td><z:dict  type="loan_apply_status" code="%{status}" />&nbsp;</td>
					<td><s:date name="%{reviewTime}" format="yyyy-MM-dd"/> &nbsp;</td>
					<td align="center">
					   <c:choose> 
					    <c:when test="${fn:contains(button, 'loan_edit') && button_type ==1}">
					    <a href="<%=request.getContextPath()%>/core/loanApply/ComU_edit.do?type=${button_type}&id=<s:property value="loanApplyId"/>">修改</a>
						</c:when>
						<c:when test="${fn:contains(button, 'loan_apply_edit') && button_type ==0}">
					    <a href="<%=request.getContextPath()%>/core/loanApply/ComU_edit.do?type=${button_type}&id=<s:property value="loanApplyId"/>">修改</a>
						</c:when>
						<c:when test="${fn:contains(button, 'loan_apply_check')  && button_type ==2}">
					    <a href="<%=request.getContextPath()%>/core/loanApply/ComU_edit.do?type=${button_type}&id=<s:property value="loanApplyId"/>">审核</a>
						</c:when>
						</c:choose> 
						<c:choose> 
						<c:when test="${fn:contains(button, 'loan_apply_del') && button_type ==0}">
						<a href="javascript:doDel('<s:property value="loanApplyId"/>','');">删除</a>
						</c:when>
						<c:when test="${fn:contains(button, 'loan_del') && button_type ==1}">
						<a href="javascript:doDel('<s:property value="loanApplyId"/>','');">删除</a>
						</c:when>
						</c:choose>
						<c:choose> 
						<c:when test="${fn:contains(button, 'loan_apply_load') && button_type ==0}">
						<a href="<%=request.getContextPath()%>/core/loanApply/ComR_load.do?type=${button_type}&id=<s:property value="loanApplyId"/>">查看</a>
						</c:when>
						<c:when test="${fn:contains(button, 'loan_load') && button_type ==1}">
						<a href="<%=request.getContextPath()%>/core/loanApply/ComR_load.do?type=${button_type}&id=<s:property value="loanApplyId"/>">查看</a>
						</c:when>
						</c:choose>
						 <a href="javascript:doExport('<s:property value="loanApplyId"/>','');">导出借款协议</a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<s:url action="ComM_list.do" id="url"></s:url>
	<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0"
		pageSize="10" />
</body>
</html>