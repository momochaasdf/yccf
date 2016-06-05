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
			function do_backup(){
			 	window.location.href="<%=path%>/backup/backup_backup.do";
			}
			function reset(id,name) {
				$.messager.confirm('数据恢复确认','你确认恢复数据"' + name + '"吗?', function(bt){
					if (bt){window.location.href="<%=path%>/backup/backup_restore.do?id=" + id;};
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
						<a href="javascript:void(0);" style="color:#cc0000">备份管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/backup/backup_list.do">备份列表</a>
					</h2>
			</div>
			<div style="margin-left: 30px; height:34px;">
				<span class="addfood" onclick="javascript:do_backup();">备份数据</span>
				<div style=" clear:left"></div>
			</div>
			<div>
				<table cellspacing="0" class="table_list" style="width: 100%">
					<tr style="background: none" class="table_tr_title title_qingse">
						<td style="border-left: 2px solid #F5F5F5; width: 5%">
							序号
						</td>
						<td>
							备份时间
						</td>
						<td>
							数据库名称
						</td>
						<td>
							备份路径
						</td>
						<td>
							备份名称
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
								<s:date name="%{crtTime}" format="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<s:property value="dbName" />
							</td>
							<td>
								<s:property value="path" />
							</td>
							<td>
								<s:property value="backupName" />
							</td>
							<td align="center">
								<a href="javascript:reset('<s:property value="backupId"/>','<s:property value="backupName"/>');">数据恢复</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div>
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="backup_list.do" cssClass="pagnation">
				</d:pages>
			</div>
		</div>
	</body>
</html>
