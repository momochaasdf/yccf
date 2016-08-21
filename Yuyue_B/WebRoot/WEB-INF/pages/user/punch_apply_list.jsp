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
				doAction('punchApplyForm', 'ComD_del', '')
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
    <s:set name="button" value="#session.button"/>
	<div class="right" style="background: #FFF;">
		<div class="o-mt">
			<h2 style="margin-top: 0;">
				<a href="<%=path%>/core/punchApply/ComM_list.do"
					style="color: #cc0000">忘记打卡管理</a>
			</h2>
		</div>
	</div>
	<form action="#" method="post" id="punchApplyForm" style="clear: both;">
		<fieldset class="navSearch">
			<legend>
				<span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span>
			</legend>
			<table cellpadding="0" cellspacing="0" class="navSearch"
				id="targetTable">
				<tr>
					<th style="width: 20%">用户名称</th>
					<td style="width: 30%"><input type="text"
						name="info.userName" value="${info.userName}" /></td>
					<th style="width: 20%">部门名称</th>
					<td style="width: 30%"><select type="text"
						name="info.departmentId">
							<option value="">所有部门</option>
							<s:iterator value="dicList" status="st">
								<option value="${dictCode}">${dictName}</option>
							</s:iterator>
					</select></td>
				</tr>
			</table>
		</fieldset>
		<div class="navButton">
			<input class="btSearch" value="检索"
				onclick="doAction('punchApplyForm','ComM_list','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
			<c:if test="${fn:contains(button, 'punch_apply_add') && type ==1 }">
			<input class="btAdd" value="新增"
				onclick="doAction('punchApplyForm','ComC_add','')"
				style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path%>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		    </c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/punchApply/" /> <input
			type="hidden" name="id" id="id" /> <input type="hidden" name=_query
			id="_query" value="_query" /> <input type="hidden" name="type"
			id="type" value="${type}" />
	</form>
	<table cellpadding="0" cellspacing="0" align="center" class="listTable">
		<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>部门</th>
				<th>用户</th>
				<th>忘记打卡理由</th>
				<th>忘记打卡开始时间</th>
				<th>忘记打卡区间</th>
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
					<td><s:property value="departmentName" />&nbsp;</td>
					<td><s:property value="userName" />&nbsp;</td>
					<td><s:property value="reason" />&nbsp;</td>
					<td><s:date name="%{applyPunchTime}" format="yyyy-MM-dd HH:mm:ss" />&nbsp;</td>
					<td><z:dict  type="punch_apply_type" code="%{inOrOut}" />&nbsp;</td>
					<td><s:property value="reviewPerson" />&nbsp;</td>
					<td><z:dict  type="punch_apply_status" code="%{status}" />&nbsp;</td>
					<td><s:date name="%{reviewTime}" format="yyyy-MM-dd"/> &nbsp;</td>
					<td align="center">
					    <c:choose> 
					       <c:when test="${fn:contains(button, 'punch_apply_edit') && type ==1 && status==0}">
					         <a href="<%=request.getContextPath()%>/core/punchApply/ComU_edit.do?type=${type}&id=<s:property value="punchApplyId"/>">修改</a>
						   </c:when>
						   <c:when test="${fn:contains(button, 'punch_edit') && type ==2}">
					         <a href="<%=request.getContextPath()%>/core/punchApply/ComU_edit.do?type=${type}&id=<s:property value="punchApplyId"/>">审核</a>
						   </c:when>
						 </c:choose>
						<c:if test="${fn:contains(button, 'punch_apply_del') && type ==1  && status==0}">  
						<a href="javascript:doDel('<s:property value="punchApplyId"/>','');">删除</a>
						</c:if>
						 <c:choose> 
					       <c:when test="${fn:contains(button, 'punch_apply_load') && type ==1}">
						    <a href="<%=request.getContextPath()%>/core/punchApply/ComR_load.do?type=${type}&id=<s:property value="punchApplyId"/>">查看</a>
					       </c:when>
					       <c:when test="${fn:contains(button, 'punch_load') && type ==2}">
						    <a href="<%=request.getContextPath()%>/core/punchApply/ComR_load.do?type=${type}&id=<s:property value="punchApplyId"/>">查看</a>
					       </c:when>
					     </c:choose>  
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