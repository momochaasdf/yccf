<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css"
			type="text/css" />
</head>
	<body>
		<div class="right">
			<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="<%=path %>/notice/notice_list.do" style="color:#cc0000">通知管理</a>
					&nbsp;&gt;&gt;&nbsp;
					<a style="color:#cc0000" href="javascript:void(0);">通知详情</a>
				</h2>
			</div>
		</div>
		<div class="msg" style="clear: both;"><s:actionmessage/></div>
		<form action="#" method="post" id="noticeForm">
		<input type="hidden" id="opreateType" name="type"  value="${type}" />
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('noticeForm','notice_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<table cellpadding="0" cellspacing="0" class="editTable">
			<tr>
				<th>标题</th>
				<td>
					<input type="text" name="data.title" value="${data.title}" readonly="readonly" />
				</td>
			</tr><tr>
				<th>内容</th>
				<td>
					<textarea rows="5" cols="50" style="height:180px" name="data.content" readonly="readonly" >${data.content}</textarea>
				</td>
			</tr>
			<tr>
				<th>开始时间</th>
				<td><input type="text" name="data.startTime" id="d4311"
					value="<s:date format="yyyy-MM-dd" name="data.startTime" />"
					readonly /></td>
			</tr>
			<tr>
				<th>结束时间</th>
				<td><input type="text" name="data.endTime"  id="d4322"
					value="<s:date format="yyyy-MM-dd" name="data.endTime" />"
					 readonly/></td>
			</tr>
			<tr>
				<th>状态</th>
				<td>
					<s:radio list="#{'1':'进行中','0':'已结束'}" name="data.status" disabled="true"/>
					
					<%--<s:radio name="data.status" list="gender" listKey="dictCode" listValue="dictName" label="type"></s:radio>--%>
					
					<%--<input type="radio" name="data.status" id="status1" value="1" <s:if test="data.status == 1">checked="checked"</s:if> /><label for="status1" >进行中</label>
					<input type="radio" name="data.status" id="status0" value="0" <s:if test="data.status == 0">checked="checked"</s:if> /><label for="status0" >已结束</label>--%>
				</td>
			</tr><tr>
				<th>通知对象</th>
				<td>
					<%--<select id="companyId" name="data.companyId">
						<option value="">---请选择---</option>
						<s:iterator value="companyList">
							<option value="${dictCode}" <s:if  test="data.companyId==dictCode">selected="selected"</s:if>>${dictName}</option>
						</s:iterator>
					</select>--%>
					<s:select id="companyId" list="companyList"  name="data.companyId" headerKey=""  headerValue="请选择"  listKey="dictCode"  listValue="dictName" disabled="true"></s:select>
				</td>
			</tr>
		</table>
		<div class="navButton">
		<input type="button" value="返回" class="btBack" onclick="doAction('noticeForm','notice_list','');" style="color:#FFF;border-style:none;width:66px;height:25px;padding:0;background: url(<%=path %>/common/images/shop/anniu.png)  no-repeat scroll -63px -20px transparent;"/>
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/notice/"/>
		</form>
	</body>
</html>