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
			if (bt){doAction('debtForm','ComD_del','')};
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
					<a href="<%=path %>/core/debt/ComM_list.do" style="color:#cc0000">债权管理</a>
				</h2>
			</div></div>
		<form action="#" method="post" id="debtForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
	<th style="width: 20%">出借人名称</th>
	<td style="width: 30%"><input type="text" name="info.customerName" value="${info.customerName}"/></td>
	<th style="width: 20%">债权状态</th>
    <td><select name="info.status" >
				        <option  value="">请选择</option>
				        <option value="2" <c:if test="${info.status ==2}">selected=selected </c:if> >失效</option>
						<option value="1" <c:if test="${info.status ==1}">selected=selected </c:if> >生效</option>
				</select></td>
     </tr> 
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('debtForm','ComM_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/debt/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>理财协议合同编号</th>
				<th>出借人名称</th>
				<th>理财结束时间</th>
				<th>理财协议的总额(元)</th>
				<th>未债权金额(元)</th>
				<th>债权状态</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="dataPage.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{dataPage.start+#st.index + 1}"/></td>
				<td><s:property value="contractId"/>&nbsp;</td>
				<td><s:property value="customerName"/>&nbsp;</td>
				<td><s:date name="%{financingEndTime}"  format="yyyy-MM-dd"/>&nbsp;</td>
				<td><s:property value="money"/></td>
				<td><s:property value="noDebtsMoney"/>&nbsp;</td>
				<td><s:if test="%{status==1}">生效</s:if><s:elseif test="%{status==2}">失效</s:elseif> <s:else>未初始化</s:else></td>
				<td align="center">
				    <s:if test="%{status ==0}">
					<a href="<%=request.getContextPath()%>/core/debt/ComU_edit.do?id=<s:property value="debtId"/>">初始化</a> 
					</s:if>
					<s:elseif test="%{status ==1}">
					<a href="<%=request.getContextPath()%>/core/debt/ComU_edit.do?id=<s:property value="debtId"/>">修改</a> 
					<a href="<%=request.getContextPath()%>/core/debt/ComC_loan.do?financingApplyId=<s:property value="debtId"/>">关联借款协议</a> 
					
					</s:elseif>
					<a href="<%=request.getContextPath()%>/core/debt/ComR_load.do?id=<s:property value="debtId"/>">查看</a>
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${dataPage.totalCount}" url="${url}" type="0" pageSize="10" />
	</body>
</html>