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
				doAction('customerForm', 'del', '')
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
#customerForm table input[type='text'] {
	background: #FFF;
	height: 22px;
	line-height: 22px;
}
</style>
</head>

<body>
  <s:set name="button" value="#session.button"/>
	<div class='right'>
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="javascript:void(0);" style="color: #cc0000">理财客户管理</a>&nbsp;>>&nbsp;
				<a style="color: #cc0000"
					href="<%=path%>/customer/financing/list.do">理财客户列表</a>
			</h2>
		</div>
		<form action="#" method="post" id="customerForm" style="clear: both;">
			<fieldset class="navSearch">
				<legend>
					<span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span>
				</legend>
				<table cellpadding="0" cellspacing="0" class="navSearch"
					id="targetTable">
					<tr>
						<th style="width: 20%">姓名</th>
						<td style="width: 30%"><input type="text"
							name="info.customerName" value="${info.customerName}" /></td>
						<th style="width: 20%">证件类型</th>
						<td style="width: 30%"><select name="info.cardType">
								<option value="">全部</option>
								<s:iterator value="cardTypeMap" id="cardTypeSelected">

									<option value='<s:property value="#cardTypeSelected.key" />'
										<s:if test="#cardTypeSelected.key!=null&&#cardTypeSelected.key==info.cardType">
								selected
							</s:if>><s:property
											value="#cardTypeSelected.value" /></option>
								</s:iterator>
						</select></td>
					</tr>
					<tr>
						<th style="width: 20%">证件号码</th>
						<td style="width: 30%"><input type="text" name="info.cardId"
							value="${info.cardId}" /></td>
						<th style="width: 20%">联系电话</th>
						<td style="width: 30%"><input type="text"
							name="info.telephone" value="${info.telephone}" /></td>
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
					onclick="doAction('customerForm','list','')"
					style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
				<c:if test="${fn:contains(button, 'financing_customer_add') && type ==0}">
				<input class="btAdd" value="新增"
					onclick="doAction('customerForm','add','')"
					style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			    </c:if>
			</div>
			<input type="hidden" name="_ns" id="_ns" value="/customer/financing/" />
			<input type="hidden" name="id" id="id" /> <input type="hidden"
				name=_query id="_query" value="_query" /> <input type="hidden" name="type"  value="${type}" />
		</form>
		<div>
			<table cellspacing="0" class="table_list" style="width: 100%">
				<tr style="background: none" class="table_tr_title title_qingse">
					<td style="border-left: 2px solid #F5F5F5; width: 5%">序号</td>
					<td>名称</td>
					<td>证件类型</td>
					<td>证件号码</td>
					<td>生日</td>
					<td>联系电话</td>
					<td style="width: 30%">住址</td>
					<td style="width: 10%">操作</td>
				</tr>
				<s:iterator value="dataPage.data" status="st">
					<tr class="table_tr_content"
						<s:if test="#st.index%2==0">style='background-color:#E6FDF1'</s:if>
						onmouseover="changeCurrentTr(this,1);"
						onmouseout="changeCurrentTr(this,2);">
						<td align="center"><s:property
								value="%{dataPage.start+#st.index + 1}" /></td>
						<td><s:property value="customerName" />&nbsp;</td>

						<td><s:iterator value="cardTypeMap" id="cardTypeSelected">
								<s:if test="#cardTypeSelected.key==cardType">
									<s:property value="#cardTypeSelected.value" />
								</s:if>
							</s:iterator> &nbsp;</td>
						<td><s:property value="cardId" />&nbsp;</td>
						<td><s:date format="yyyy-MM-dd" name="birthday" /></td>
						<td><s:property value="telephone" />&nbsp;</td>

						<td><s:property value="address" />&nbsp;</td>
						<td align="center">
						    <c:if test="${fn:contains(button, 'financing_customer_edit') && type ==0}">
						    <a href="<%=request.getContextPath()%>/customer/financing/edit.do?type=${type}&id=<s:property value="customerId"/>">修改</a>
							</c:if>
							<c:if test="${fn:contains(button, 'financing_customer_del') && type ==0}">
							<a href="javascript:doDel('<s:property value="customerId"/>','');">删除</a>
							</c:if>
							<c:choose>
							<c:when test="${fn:contains(button, 'financing_customer_load') && type ==0}">
							<a href="<%=request.getContextPath()%>/customer/financing/load.do?type=${type}&id=<s:property value="customerId"/>">查看</a>
							</c:when>
							<c:when test="${fn:contains(button, 'financing_customer_list')&& type ==2}">
							<a href="<%=request.getContextPath()%>/customer/financing/load.do?type=${type}&id=<s:property value="customerId"/>">查看客户资料</a>
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
				<s:param name="info.customerName">${info.customerName}</s:param>
				<s:param name="info.cardId">${info.cardId}</s:param>
				<s:param name="info.cardType">${info.cardType}</s:param>
				<s:param name="info.telephone">${info.telephone}</s:param>
			</d:pages>
		</div>
	</div>
</body>
</html>
