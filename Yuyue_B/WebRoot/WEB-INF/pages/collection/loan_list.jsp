<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="<%=path%>/common/css/tablelist_new.css"
	type="text/css" />
<link rel="stylesheet" href="<%=path%>/common/css/paging.css"
	type="text/css" />
<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
	type="text/css" />
<script type="text/javascript">
	function doDel(id, name) {
		$.messager.confirm('删除确认', '你确认删除吗?', function(bt) {
			$("#id").val(id);
			if (bt) {
				doAction('collectionForm', 'del', '')
			}
			;
		});
	}
	function changeCurrentTr(obj, type) {
		if (type == 1) {
			$(obj).attr('oldbg', $(obj).css('background-color'));
			$(obj).attr('oldc', $(obj).css('color'));
			$(obj).css({
				background : '#00B5DA',
				color : '#FFFFFF'
			});
		} else {
			$(obj).css({
				background : $(obj).attr('oldbg'),
				color : $(obj).attr('oldc')
			});
		}
	}
	$(function() {
		if ("${msg}" != "") {
			$.colorbox.alert("${msg}");
		}
	});
</script>
<style type="text/css">
#collectionForm table input[type='text'] {
	background: #FFF;
	height: 22px;
	line-height: 22px;
}
</style>
</head>

<body>
    <s:set name="button" value="#session.button"/>
    <s:set name="button_type" value="type"/>
	<div class='right'>
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="javascript:void(0);" style="color: #cc0000">借款催收管理</a>&nbsp;>>&nbsp;
				<a style="color: #cc0000" href="<%=path%>/collection/loan/list.do">借款催收列表</a>
			</h2>
		</div>
		<form action="#" method="post" id="collectionForm" style="clear: both;">
			<fieldset class="navSearch">
				<legend>
					<span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span>
				</legend>
				<table cellpadding="0" cellspacing="0" class="navSearch"
					id="targetTable">
					<tr>
						<th style="width: 20%">客户姓名</th>
						<td style="width: 30%"><input type="text"
							name="info.customerName" value="${info.customerName}" /></td>
					</tr>
				</table>
				<br />
			</fieldset>
			<div class="msg">
				<s:actionmessage />
				<s:fielderror />
				<s:actionerror />
			</div>
			<div class="navButton">
				<input class="btSearch" value="检索"
					onclick="doAction('collectionForm','list','')"
					style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
				<c:choose> 
				<c:when test="${fn:contains(button, 'loan_back_add') && button_type ==1}">
				<input class="btAdd" value="新增"
					onclick="doAction('collectionForm','add','')"
					style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			    </c:when>
			    <c:when test="${fn:contains(button, 'loan_collection_add') && button_type ==2}">
				<input class="btAdd" value="新增"
					onclick="doAction('collectionForm','add','')"
					style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			    </c:when>
			    </c:choose>
			</div>
			<input type="hidden" name="_ns" id="_ns" value="/collection/loan/" />
			<input type="hidden" name="id" id="id" /> <input type="hidden"
				name=_query id="_query" value="_query" /> <input type="hidden" name="type"
			id="type" value="${type}" />
		</form>
		<div>
			<table cellspacing="0" class="table_list" style="width: 100%">
				<tr style="background: none" class="table_tr_title title_qingse">
					<td style="border-left: 2px solid #F5F5F5; width: 5%">序号</td>
					<td>客户名称</td>
					<td>联系电话</td>
					<td>还款类型</td>
					<td>借款总金额</td>
					<td>已还月数</td>
					<td>提前还款</td>
					<td>是否逾期</td>
					<td>状态</td>
					<td style="width: 20%">操作</td>
				</tr>
				<s:iterator value="dataPage.data" status="st">
					<tr class="table_tr_content"
						<s:if test="#st.index%2==0">style='background-color:#E6FDF1'</s:if>
						onmouseover="changeCurrentTr(this,1);"
						onmouseout="changeCurrentTr(this,2);">
						<td align="center"><s:property
								value="%{dataPage.start+#st.index + 1}" /></td>
						<td><s:property value="customerName" />&nbsp;</td>
						<td><s:property value="telephone" />&nbsp;</td>
						<td><z:dict  type="collection_loan_type" code="%{type}" />&nbsp;</td>
						<td><s:property value="money" />&nbsp;</td>
						<td><s:property value="repaymentMonths" />&nbsp;</td>
						<td><z:dict  type="collection_loan_prepayment" code="%{isPrepayment}"  />&nbsp;</td>
						<td><z:dict  type="collection_loan_overdue" code="%{isOverdue}"  />&nbsp;</td>
						<td><z:dict  type="collection_loan_status" code="%{status}"  />&nbsp;</td>
						<td align="center">
						   <c:choose> 
						    <c:when test="${fn:contains(button, 'loan_collection_edit') && button_type==1}">
						    <a href="<%=request.getContextPath()%>/collection/loan/edit.do?type=${button_type}&id=<s:property value="loanCollectionId"/>">修改</a>
							</c:when>
							 <c:when test="${fn:contains(button, 'loan_back_edit') && button_type==2}">
						    <a href="<%=request.getContextPath()%>/collection/loan/edit.do?type=${button_type}&id=<s:property value="loanCollectionId"/>">修改</a>
							</c:when>
							</c:choose>
							<c:choose>
							<c:when test="${fn:contains(button, 'loan_collection_del') && button_type==1}">
							<a href="javascript:doDel('<s:property value="loanCollectionId"/>','');">删除</a>
							</c:when>
							<c:when test="${fn:contains(button, 'loan_back_del') && button_type==2}">
							<a href="javascript:doDel('<s:property value="loanCollectionId"/>','');">删除</a>
							</c:when>
							</c:choose>
							<c:choose>
							<c:when test="${fn:contains(button, 'loan_collection_load') && button_type ==1}">
							<a href="<%=request.getContextPath()%>/collection/loan/load.do?type=${button_type}&id=<s:property value="loanCollectionId"/>">查看</a>
							</c:when>
							<c:when test="${fn:contains(button, 'loan_back_load') && button_type ==2}">
							<a href="<%=request.getContextPath()%>/collection/loan/load.do?type=${button_type}&id=<s:property value="loanCollectionId"/>">查看</a>
							</c:when>
							</c:choose>
							
						</td>
					</tr>
				</s:iterator>
			</table>
		</div>
		<div>
			<d:pages currentPage="%{currentPage}" showPageNumber="3"
				totalPage="%{totalPage}" url="list.do" cssClass="pagnation">
				<s:param name="info.collectionName">${info.collectionName}</s:param>
				<s:param name="info.cardId">${info.cardId}</s:param>
				<s:param name="info.telephone">${info.telephone}</s:param>
			</d:pages>
		</div>
	</div>
</body>
</html>
