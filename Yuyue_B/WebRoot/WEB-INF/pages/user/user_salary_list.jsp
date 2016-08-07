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
			if (bt){doAction('userSalaryForm','ComD_del','')};
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
					<a href="<%=path %>/core/userSalary/ComM_list.do" style="color:#cc0000">工资管理</a>
				</h2>
			</div></div>
		<form action="#" method="post" id="userSalaryForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
				<th style="width: 20%">用户名称</th>
				<td style="width: 30%"><input type="text" name="iuserSalary.userName" value="${iuserSalary.userName}"/></td>
				<th style="width: 10%">月份</th>
				<td style="width: 50%">
					<input type="text" name="iuserSalary.month"  value="${userSalary.month}" 
					onfocus="WdatePicker({doubleCalendar:false,dateFmt:'yyyy-MM'})" />
				</td>
			     </tr> 
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('userSalaryForm','ComM_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		<c:if test="${fn:contains(button, 'salary_add') && type ==0}">
		<input class="btAdd"  value="新增"  onclick="doAction('userSalaryForm','ComC_add','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</c:if>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/core/userSalary/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		<input type="hidden" name="type" id="type" value="${type}" />
		</form>
		<table cellpadding="0" cellspacing="0" align="center" class="listTable">
			<thead>
			<tr>
				<th style="width: 5%">序号</th>
				<th>用户名称</th>
				<th>当月级别</th>
				<th>次月级别</th>
				<th>出勤天数</th>
				<th>基本工资</th>
				<th>实发基本工资</th>
				<th>实发工资</th>
				<th>月份</th>
				<th style="width: 20%">操作</th>
			</tr>
			</thead>
			<tbody>
			<s:iterator value="dataPage.data" status="st">
			<tr <s:if test="!#st.odd">class="trodd"</s:if>>
				<td align="center"><s:property value="%{dataPage.start+#st.index + 1}"/></td>
				<td><s:property value="userName"/>&nbsp;</td>
				<td><s:property value="theMonthLevel"/>&nbsp;</td>
				<td><s:property value="secondMonthLevel"/>&nbsp;</td>
				<td><s:property value="attendanceRecords"/>% &nbsp;</td>
				<td><s:property value="baseSalary"/>&nbsp;</td>
				<td><s:property value="realBaseSalary"/>&nbsp;</td>
				<td><s:property value="realSalary"/>&nbsp;</td>
				<td><s:property value="month"/>&nbsp;</td>
				<td align="center">
				     <c:choose> 
					       <c:when test="${fn:contains(button, 'salary_edit') && type==0}">
					<a href="<%=request.getContextPath()%>/core/userSalary/ComU_edit.do?type=${type}&id=<s:property value="salaryId"/>">修改</a> 
					       </c:when>
					        <c:when test="${fn:contains(button, 'salary_check') && type ==2}">
					<a href="<%=request.getContextPath()%>/core/userSalary/ComU_edit.do?type=${type}&id=<s:property value="salaryId"/>">审核</a> 
					       </c:when>
					</c:choose>
					<c:if test="${fn:contains(button, 'salary_del') && type ==0}">
					<a href="javascript:doDel('<s:property value="salaryId"/>','');">删除</a>
					</c:if>
					
					 <c:choose> 
					       <c:when test="${fn:contains(button, 'salary_load')  && type ==0}">
					<a href="<%=request.getContextPath()%>/core/userSalary/ComR_load.do?type=${type}&id=<s:property value="salaryId"/>">查看</a>
					       </c:when>
					        <c:when test="${fn:contains(button, 'user_salary_load')  && type ==1}">
					<a href="<%=request.getContextPath()%>/core/userSalary/ComR_load.do?type=${type}&id=<s:property value="salaryId"/>">查看</a>
					       </c:when>
					       <c:when test="${fn:contains(button, 'salary_load_check') && type ==2}">
					<a href="<%=request.getContextPath()%>/core/userSalary/ComR_load.do?type=${type}&id=<s:property value="salaryId"/>">查看</a>
					       </c:when>
					  </c:choose>     
				</td>
			</tr>
			</s:iterator>
			</tbody>
		</table><s:url  action="ComM_list.do" id="url"></s:url>
		<z:pgination totalCount="${pgn.totalCount}" url="${url}" type="0" pageSize="10" />
	</body>
</html>