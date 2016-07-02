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
				doAction('goodsUsedForm', 'ComD_del', '')
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
				<a href="<%=path%>/core/goodsUsed/ComM_list.do"
					style="color: #cc0000">物品领取管理</a>
			</h2>
		</div>
	</div>
	<form action="#" method="post" id="goodsUsedForm" style="clear: both;">
		<fieldset class="navSearch">
			<legend>
				<span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span>
			</legend>
			<table cellpadding="0" cellspacing="0" class="navSearch"
				id="targetTable">
				<tr>
					<th style="width: 20%">物品名称</th>
					<td style="width: 30%"><input type="text"
						name="igoodsUsed.goodsName" value="${igoodsUsed.goodsName}" /></td>
					<th style="width: 20%">用户名称</th>
					<td style="width: 30%"><input type="text"
						name="igoodsUsed.userName" value="${igoodsUsed.userName}" /></td>
				</tr>
			</table>
		</fieldset>
		<div class="navButton">
			<input class="btSearch" value="检索"
				onclick="doAction('goodsUsedForm','ComM_list','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			<input class="btAdd" value="新增"
				onclick="doAction('goodsUsedForm','ComC_add','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/goodsUsed/" />
		<input type="hidden" name="id" id="id" /> <input type="hidden"
			name=_query id="_query" value="_query" />
	</form>
	<table cellpadding="0" cellspacing="0" align="center" class="listTable">
		<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>物品名称</th>
				<th>领取人</th>
				<th>领取数量</th>
				<th>领取状态</th>
				<th style="width: 20%">操作</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="dataPage.data" status="st">
				<tr <s:if test="!#st.odd">class="trodd"</s:if>>
					<td align="center"><s:property
							value="%{dataPage.start+#st.index + 1}" /></td>
					<td><s:property value="goodsName" />&nbsp;</td>
					<td><s:property value="userName" />&nbsp;</td>
					<td><s:property value="nums" />&nbsp;</td>
					<td><z:dict type="goods_used_status" code="%{status}" />&nbsp;</td>
					<td align="center"><a
						href="<%=request.getContextPath()%>/core/goodsUsed/ComU_edit.do?id=<s:property value="goodsUsedId"/>">修改</a>
						<a href="javascript:doDel('<s:property value="goodsUsedId"/>','');">删除</a>
						<a
						href="<%=request.getContextPath()%>/core/goodsUsed/ComR_load.do?id=<s:property value="goodsUsedId"/>">查看</a>
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