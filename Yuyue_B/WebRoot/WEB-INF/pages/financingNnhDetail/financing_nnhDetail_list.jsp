<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%@ taglib prefix="d" uri="/deying-tags"%>
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
						<a href="javascript:void(0);" style="color:#cc0000">年年红返还明细管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/financingRemind/financingRemind_list.do">年年红返还明细列表</a>
					</h2>
			</div>
			<div>
				<table cellspacing="0" class="table_list" style="width: 100%">
					<tr style="background: none" class="table_tr_title title_qingse">
						<td style="border-left: 2px solid #F5F5F5; width: 5%">
							序号
						</td>
						<td>
							客户名称
						</td>
						<td>
							金额(万元)
						</td>
						<td>
							签约时间
						</td>
						<td>
							到期时间
						</td>
						<td>
							理财产品
						</td>
						<td>
							业务员
						</td>
						<td>
							理财状态
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
								<s:property value="customerName" />
							</td>
							<td>
								<s:property value="money" />
							</td>
							<td>
								<s:date name="%{financingStartTime}" format="yyyy-MM-dd"/>
							</td>
							<td>
								<s:date name="%{financingEndTime}" format="yyyy-MM-dd"/>
							</td>
							<td>
								<z:dict  type="financing_type" code="%{type}" />
							</td>
							<td>
								<s:property value="employeeName" />
							</td>
							<td>
								<z:dict  type="financing_remind_status" code="%{status}" />
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div>
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="financingRemind_list.do" cssClass="pagnation">
				</d:pages>
			</div>
		</div>
	</body>
</html>
