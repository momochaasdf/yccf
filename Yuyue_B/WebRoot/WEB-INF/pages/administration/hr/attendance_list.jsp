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
	        var importFun = function () {
	            var file = $('#excelFile').val();
	            var re = new RegExp("^.*\.(?:xls)$");
	            var result = re.test(file);
	            if (result) {
	            	loadingbox.show();
	                $("#attendanceForm").attr("action", jsCtx + '/attendance/attendanceJ_importAttendanceExcel.do');
	                $("#attendanceForm").ajaxSubmit({
	                    dataType: "json",
	                    success: function (result) {
	                    	loadingbox.hide();
	                        if (result.success) {
	                            $.messager.alert('提示', "数据导入成功", 'info');
	                            setTimeout(window.location.href="<%=path%>/attendance/attendance_list.do",2000);
	                        } else {
	                        	$.messager.alert('提示', result.message, 'info');
	                        }
	                        $("#excelFile").val("");
	                    }
	                });
	            } else {
	                $.messager.alert('提示', '请选择xls文件！', 'error');
	            }
	        };
	        
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
	     <s:set name="button" value="#session.button"/>
		<div class='right'>
			<div class="o-mt">
					<h2 style="margin-top: 0;">
						<a href="javascript:void(0);" style="color:#cc0000">考勤管理</a>&nbsp;>>&nbsp;
						<a  style="color:#cc0000" href="<%=path %>/attendance/attendance_list.do">考勤列表</a>
					</h2>
			</div>
			<form action="#" method="post" id="attendanceForm" style="clear: both;" enctype="multipart/form-data">
			    <c:if test="${fn:contains(button, 'attendance_import')}">
				<fieldset class="navSearch">
				    
					<legend><span>导入数据<span id="updown" target="targetTable">[隐藏]</span></span></legend>
					<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
						<tr>
							<td style="width: 20%">
								<input type='file' id="excelFile" name="excelFile" style="width:200px;" />
							</td>
							<td>
								<span class="addfood" onclick="javascript:importFun();">导入考勤</span>
							</td>
						</tr>
					</table>
					<br />
				</fieldset>
				</c:if>
				<fieldset class="navSearch">
					<legend><span>检索条件<span id="updown" target="targetTable">[隐藏]</span></span></legend>
					<table cellpadding="0" cellspacing="0" class="navSearch" id="targetTable">
						<tr>
							<th style="width: 10%">员工名称</th>
							<td style="width: 30%"><input type="text" name="info.userName" value="${info.userName}"/></td>
						</tr>
					</table>
					<br />
				</fieldset>
				<div class="msg"><s:actionmessage/><s:fielderror/><s:actionerror/></div>
				<div class="navButton">
					<input type="button" value="检索" class="btSearch" onclick="doAction('attendanceForm','attendance_list','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
					<input type="button" value="导出" class="btSearch" onclick="doAction('attendanceForm','attendance_exportAttendanceExcel','')" style="color: #FFF; border-style: none; width: 49px; height: 25px; padding: 0; background: url(<%=path %>/common/images/blue_bg.png) no-repeat scroll 0px 0px transparent;margin-left: 5px;"/>
				</div>
				<input type="hidden" name="_ns" id="_ns" value="/attendance/"/>
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
							员工名称
						</td>
						<td>
							开始时间
						</td>
						<td>
							终了时间
						</td>
						<td>
							出勤天数
						</td>
						<td style="width: 30%">
							备注
						</td>
					</tr>
					<s:property value="%{session.button}" />
					<s:iterator value="dataPage.data" status="st">
						<tr class="table_tr_content"
							<s:if test="#st.index%2==0">style='background-color:#E6FDF1'</s:if>
							onmouseover="changeCurrentTr(this,1);"
							onmouseout="changeCurrentTr(this,2);">
							<td align="center">
								<s:property value="%{dataPage.start+#st.index + 1}" />
							</td>
							<td>
								<s:property value="%{userName}" />
							</td>
							<td>
								<s:date name="%{startTime}" format="yyyy-MM-dd"/>
							</td>
							<td>
								<s:date name="%{endTime}" format="yyyy-MM-dd"/>
							</td>
							<td>
								<s:property value="%{attendanceDays}" />
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
						totalPage="%{totalPage}" url="attendance_list.do" cssClass="pagnation">
					<s:param name="info.name">${info.name}</s:param>
					<s:param name="info.minStartTime">${info.minStartTime}</s:param>
					<s:param name="info.maxStartTime">${info.maxStartTime}</s:param>
				</d:pages>
			</div>
		</div>
	</body>
</html>
