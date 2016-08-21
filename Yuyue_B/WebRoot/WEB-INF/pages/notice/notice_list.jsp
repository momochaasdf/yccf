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
	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css" type="text/css" />
	<script type="text/javascript">
		function doDel(id,name) {
			$.messager.confirm('删除确认','你确认删除吗?', function(bt){
				$("#id").val(id);
				if (bt){doAction('noticeForm','notice_del','')};
			});
		}
		function changeCurrentTr(obj,type){
			if(type==1){
				$(obj).attr('oldbg',$(obj).css('background-color'));
				$(obj).attr('oldc',$(obj).css('color'));
				$(obj).css({background:'#00B5DA',color:'#FFFFFF'});
			}else{
				$(obj).css({background:$(obj).attr('oldbg'),color:$(obj).attr('oldc')});
			}
		}
		$(function(){
		  if("${msg}" != ""){
		     $.colorbox.alert("${msg}");
		  }
		});
  </script>
  <style type="text/css">
  	#noticeForm table input[type='text']{
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
						<a href="javascript:void(0);" style="color:#cc0000">通知管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/notice/notice_list.do">通知列表</a>
					</h2>
			</div>
			<form action="#" method="post" id="noticeForm" style="clear: both;">
				<fieldset class="navSearch">
					<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
					<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
						<tr>
							<th style="width: 20%">通知标题</th>
							<td style="width: 30%"><input type="text" name="info.title" value="${info.title}"/></td>
							<th style="width: 20%">通知状态</th>
							<td style="width: 30%">
								<input type="radio" name="info.status" id="status2" value="" <s:if test="info.status == 2">checked="checked"</s:if> /><label for="status2" >全部</label>
								<input type="radio" name="info.status" id="status1" value="1" <s:if test="info.status == 1">checked="checked"</s:if> /><label for="status1" >进行中</label>
								<input type="radio" name="info.status" id="status0" value="0" <s:if test="info.status == 0">checked="checked"</s:if> /><label for="status0" >已结束</label>
							</td>
						</tr>
					</table>
					<br />
				</fieldset>
				<div class="msg"><s:actionmessage/><s:fielderror/><s:actionerror/></div>
				<div class="navButton">
					<input type="button" value="检索" class="btSearch" onclick="doAction('noticeForm','notice_list','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
					<s:if test="#session.button.notice_add.indexOf('notice_add')>=0 && type ==0">
					<input class="btAdd"  value="新增"  onclick="doAction('noticeForm','notice_add','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
					</s:if>
				</div>
				<input type="hidden" name="_ns" id="_ns" value="/notice/"/>
				<input type="hidden" name="id" id="id"/>
				<input type="hidden" name=_query id="_query" value="_query"/>
				<input type="hidden" name="type" id="type" value="${type}" />
			</form>
			<div>
				<table cellspacing="0" class="table_list" style="width: 100%">
					<tr style="background: none" class="table_tr_title title_qingse">
						<td style="border-left: 2px solid #F5F5F5; width: 5%">
							序号
						</td>
						<td>
							标题
						</td>
						<td>
							内容
						</td>
						<td>
							状态
						</td>
						<td style="width: 20%">
							操作
						</td>
					</tr>
					<s:iterator value="dataPage.data" status="st">
						<tr class="table_tr_content"
							<s:if test="#st.index%2==0">style='background-color:#E6FDF1'</s:if>
							onmouseover="changeCurrentTr(this,1);"
							onmouseout="changeCurrentTr(this,2);">
							<td align="center">
								<s:property value="%{dataPage.start+#st.index + 1}" />
							</td>
							<td>
								<s:property value="title" />
							</td>
							<td>
								<s:property value="content" />
							</td>
							<td align="center">
								<s:if test="status==1">进行中</s:if>
								<s:elseif test="status==0">已结束</s:elseif>
								<s:else>&nbsp;</s:else>
							</td>
							<td align="center">
                                 <s:if test="#session.button.notice_edit.indexOf('notice_edit')>=0 && type ==0">								
                                 <a href="<%=path %>/notice/notice_edit.do?type=${type}&id=<s:property value="noticeId"/>">修改</a> 
                                 </s:if>
                                 <s:if test="#session.button.notice_del.indexOf('notice_del')>=0 && type ==0">	
								 <a href="javascript:doDel('<s:property value="noticeId"/>','');">删除</a>
								 </s:if>
								 <s:if test="(#session.button.notice_load.indexOf('notice_load')>=0 && type ==0) || (#session.button.notice_list.indexOf('notice_list')>=0 && type ==1)  ">	
								 <a href="<%=path %>/notice/notice_load.do?type=${type}&id=<s:property value="noticeId"/>">查看</a>
								 </s:if>
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div>
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="notice_list.do" cssClass="pagnation">
					<s:param name="info.title">${info.title}</s:param>
					<s:param name="info.status">${info.status}</s:param>
					<s:param name="type">${type}</s:param>
				</d:pages>
			</div>
		</div>
	</body>
</html>
