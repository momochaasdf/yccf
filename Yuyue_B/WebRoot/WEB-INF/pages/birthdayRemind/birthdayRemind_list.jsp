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
			
			function doRemind(id,name) {
				$.messager.confirm('状态修改确认','确认更新状态吗?', function(bt){
					$("#id").val(id);
					if (bt){doAction('birthdayRemindForm','ComD_remind','')};
				});
			}
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
						<a href="javascript:void(0);" style="color:#cc0000">客户生日提醒管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/birthdayRemind/birthdayRemind_list.do">客户生日提醒列表</a>
					</h2>
			</div>
		    <form action="#" method="post" id="birthdayRemindForm" style="clear: both;">
			<input type="hidden" name="_ns" id="_ns" value="/birthdayRemind/"/>
				<input type="hidden" name="id" id="id"/>
				<input type="hidden" name=_query id="_query" value="_query"/>
				<input type="hidden" name="type" id="type" value="${type}" />
				<input type="hidden" name="dayType" id="dayType" value="${dayType}" />
			</form>
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
							生日时间
						</td>
						<td>
							存款是否提取
						</td>
						<td>
							提醒状态
						</td>
						<td style="width: 30%">
							备注
						</td>
						<td style="width: 10%">
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
								<s:property value="name" />
							</td>
							<td>
								<s:date name="%{birthdayTime}" format="yyyy-MM-dd"/>
							</td>
							<td align="left">
						        <s:if test="%{isPay==1}">
						         已提取
						        </s:if>
						        <s:else>
						         未提取	
						        </s:else>
								
							</td>
							<td align="left">
							       <s:if test="%{status==0}">
						         已提醒
						        </s:if>
						        <s:else>
						         未提醒
						        </s:else>
								 &nbsp;
							</td>
							<td align="left">
								<s:property value="info" />
							</td>
							<td>
								 <a href="javascript:doRemind('<s:property value="birthdayRemindId"/>','');">更新状态</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div>
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="birthdayRemind_list.do" cssClass="pagnation">
				</d:pages>
			</div>
		</div>
	</body>
</html>
