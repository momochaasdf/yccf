<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	function doDel(id, name) {
		$.messager.confirm('删除确认', '你确认删除吗?', function(bt) {
			$("#id").val(id);
			if (bt) {
				doAction('customerForm', 'ComD_del', '')
			}
			;
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
	<div class="right" style="background: #FFF;">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/customer/financing/ComM_list.do"
					style="color: #cc0000">理财客户管理</a>
			</h2>
		</div>
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
						name="inCustomer.customerName" value="${inCustomer.customerName}" /></td>
					<th style="width: 20%">证件号码</th>
					<td style="width: 30%"><input type="text"
						name="inCustomer.cardId" value="${inCustomer.cardId}" /></td>
				</tr>
				<tr>
					<th style="width: 20%">手机号码</th>
					<td style="width: 30%"><input type="text"
						name="inCustomer.telephone" value="${inCustomer.telephone}" /></td>
					<th style="width: 20%"></th>
					<td style="width: 30%"></td>
				</tr>
			</table>
		</fieldset>
		<div class="navButton">
			<input class="btSearch" value="检索"
				onclick="doAction('customerForm','ComM_list','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			<input class="btAdd" value="新增"
				onclick="doAction('customerForm','ComC_add','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</div>
		<input type="hidden" name="_ns" id="_ns"
			value="/core/customer/financing/" /> <input type="hidden" name="id"
			id="id" /> <input type="hidden" name=_query id="_query"
			value="_query" />
	</form>
	<table cellpadding="0" cellspacing="0" align="center" class="listTable">
		<thead>
			<tr>
				<th style="width: 5%">编号</th>
				<th>名称</th>
				<th>证件类型</th>
				<th>证件号码</th>
				<th>生日</th>
				<th>手机号</th>
				<th>住址</th>
				<th style="width: 20%">操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="pgn.data" status="st">
				<tr <s:if test="!#st.odd">class="trodd"</s:if>>
					<td align="center"><s:property
							value="%{pgn.start+#st.index + 1}" /></td>
					<td><s:property value="customerName" />&nbsp;</td>
					
					<td><s:iterator value="cardTypeMap" id="cardTypeSelected">
							<s:if test="#cardTypeSelected.key==cardType">
								<s:property value="#cardTypeSelected.value" />
							</s:if>
						</s:iterator> &nbsp;</td>
					<td><s:property value="cardId" />&nbsp;</td>
					<td><s:date format="yyyy-MM-dd" name="customer.birthday" /></td>
					<td><s:property value="telephone" />&nbsp;</td>
					
					<td><s:property value="address" />&nbsp;</td>
					<td align="center"><a
						href="<%=request.getContextPath()%>/core/customer/financing/ComU_edit.do?id=<s:property value="customerId"/>">修改</a>
						<a href="javascript:doDel('<s:property value="customerId"/>','');">删除</a>
						<a
						href="<%=request.getContextPath()%>/core/customer/financing/ComR_load.do?id=<s:property value="customerId"/>">查看</a>
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