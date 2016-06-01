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
	function reset(id,name) {
		$.messager.confirm('重置确认','你确认重置用户"' + name + '"密码吗?', function(bt){
			$("#id").val(id);
			if (bt){doAction('resetForm','resetPwd_reset','')};
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
  	#resetForm table input[type='text']{
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
					<a href="javascript:void(0);" style="color:#cc0000">帐号管理</a>&nbsp;>>&nbsp;
					<a  style="color:#cc0000" href="<%=path %>/core/user/resetPwd_list.do">密码重置</a>
				</h2>
			</div>
<%-- 		<div id="operate" style="margin-bottom: 20px;">
			<div id="table_select_circle" style="width: 750px;">
				<div class="rtop">
					<div class="r1"></div>
					<div class="r2"></div>
					<div class="r3"></div>
					<div class="r4"></div>
				</div>
				<div class="circle_content">
					<div
						style="position: absolute; left: 20px; top: -13px; width: 100px; color: #4395C6">
						检索条件
					</div>
					<div style="margin-top: 10px;">
						<form action="#" method="post" id="resetForm">
							<table>
								<tr>
									<td align="right">
										登录账号:
									</td>
									<td>
										<input type="text" name="info.loginId"
											value="${inUser.loginId}" />
									</td>
								</tr>
								<tr>
									<td align="right">
										姓名:
									</td>
									<td>
										<input type="text" name="info.userName"
											value="${inUser.userName}" />
									</td>
								</tr>
								<tr>
									<td align="right">
										状态:
									</td>
									<td>
										<s:radio list="#{'0':'可用','1':'禁用'}" name="info.status" />
									</td>
								</tr>
								<tr>
									<td align="right">
										用户类型:
									</td>
									<td>
										<s:radio list="#{'0':'系统用户','2':'普通用户'}"
											name="info.userType" />
									</td>
								</tr>
								<tr style="height: 30px;">
									<td colspan="4" style="">
										<input type="hidden" name="_ns" id="_ns" value="/core/user/" />
										<input type="hidden" name="id" id="id" />
										<input type="hidden" name=_query id="_query" value="_query" />
									</td>
								</tr>
								<tr>
									<td colspan="4" style="text-align: center;">
									<input type="button"   class="btSearch" value="查找"  onclick="doAction('resetForm','resetPwd_list','')" style="color:#FFF;border-style:none;width:49px;height:25px;padding:0;background: url(<%=path %>/common/images/blue_bg.png)  no-repeat scroll 0px 0px transparent;text-align: center" />
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div class="rtop">
					<div class="r4"></div>
					<div class="r3"></div>
					<div class="r2"></div>
					<div class="r1"></div>
				</div>
			</div>
		</div>
		<div>
			<div style="margin-left: 27px;">
				<table cellspacing="0" class="table_list" style="width: 100%">
					<tr style="background: none" class="table_tr_title title_qingse">
						<td style="border-left: 2px solid #F5F5F5; width: 5%">
							序号
						</td>
						<td>
							登录账号
						</td>
						<td>
							姓名
						</td>
						<td>
							状态
						</td>
						<td>
							用户类型
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
								<s:property value="loginId" />
							</td>
							<td>
								<s:property value="userName" />
							</td>
							<td align="center">
								<s:if test="status==0">可用</s:if>
								<s:elseif test="status==1">禁用</s:elseif>
								<s:else>&nbsp;</s:else>
							</td>
							<td align="center">
								<s:if test="userType==0">系统用户</s:if>
								<s:elseif test="userType==2">普通用户</s:elseif>
								<s:else>&nbsp;</s:else>
							</td>
							<td align="center">
								<s:if test="userId!=#session['_COM_FRAMEWORK_USER_KEY'].userId">
									<a
										href="javascript:reset('<s:property value="userId"/>','<s:property value="userName"/>');">重置密码</a>
								</s:if>
								&nbsp;
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
			<div  style="margin-left: 27px;">
				<d:pages currentPage="%{currentPage}" showPageNumber="3"
						totalPage="%{totalPage}" url="resetPwd_list.do" cssClass="pagnation">
					<s:param name="info.loginId">${info.loginId}</s:param>
					<s:param name="info.userName">${info.userName}</s:param>
					<s:param name="info.status">${info.status}</s:param>
					<s:param name="info.userType">${info.userType}</s:param>
				</d:pages>
			</div>
		</div> --%>
		</div>
	</body>
</html>
