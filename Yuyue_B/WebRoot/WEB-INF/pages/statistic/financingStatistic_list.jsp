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
			function changeCurrentTr(obj,type){s
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
  	#backupForm table input[type='text']{
  		background: #FFF;
  		height: 22px;
  		line-height: 22px;
  	}
  </style>
	</head>

	<body>
		<div class='right'>
			<div class="o-mt">
					<h2 style="margin-top: 0;">
						<a href="javascript:void(0);" style="color:#cc0000">理财业绩管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/financingStatistic/financingStatistic_list.do">理财业绩统计列表</a>
					</h2>
			</div>
			<form action="#" method="post" id="financingApplyForm" style="clear: both;">
		<fieldset class="navSearch" >
			<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
			<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
				<tr>
	<th style="width: 20%">理财经理名称</th>
	<td style="width: 30%"><input type="text" name="statistic.employeeName" value="${statistic.employeeName}"/></td>
     </tr> 
			</table>
		</fieldset>
		<div class="navButton" >
		<input class="btSearch" value="检索"  onclick="doAction('financingApplyForm','financingStatistic_list','')"  style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
		</div>
		<input type="hidden" name="_ns" id="_ns" value="/financingStatistic/"/>
		<input type="hidden" name="id" id="id"/>
		<input type="hidden" name=_query id="_query" value="_query"/>
		</form>
			<div>
				<table cellspacing="0" class="table_list" style="width: 100%">
					<tr style="background: none" class="table_tr_title title_qingse">
						<td style="border-left: 2px solid #F5F5F5; width: 5%">
							序号
						</td>
						<td>
							理财经理名称
						</td>
						<td>
							客户总数
						</td>
						<td>
							总金额(万)
						</td>
						<td>
							统计时间
						</td>
						<td>
							统计类型
						</td>
						<td>
							年份
						</td>
						<td style="width: 30%">
							备注
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
								<s:property value="employeeName" />
							</td>
							<td>
								<s:property value="customerNums" />
							</td>
							<td>
								<s:property value="moneyAll" />
							</td>
							<td>
								<s:property value="time" />
							</td>
							<td> 
								 <z:dict type="statistic_type" code="%{timeRange}"></z:dict>
							</td>
							<td>
								<s:property value="year" />
							</td>
							<td align="left">
								<s:property value="info" />
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div>
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="financingStatistic_list.do" cssClass="pagnation">
				</d:pages>
			</div>
		</div>
	</body>
</html>
