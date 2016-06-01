<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<link rel="stylesheet" href="<%=path%>/common/css/tablelist_new.css"
			type="text/css" />
 	<link rel="stylesheet" href="<%=path%>/common/css/shopBase.css" type="text/css" />
 	<style type="text/css">
	td.sh_v_s {
	   width: 150px; 
	   border-right:  0 none;
	}
	
	.q_sh_v_s {
		width: 150px;
	}
	</style>
	<script type="text/javascript">
	function v_n_o(){
	  if( $("#oldPassword").val() != " " ){
	     if( $("#newPassword").val() == $("#oldPassword").val() ){
	        $.messager.alert("提示","新旧密码不能相同，请确认！");
		    $("#newPassword").val("");
		    return false; 
	     }
	  } 
	}
	function v_n_r(){
	if( $("#newPassword").val() != " " && $("#rePassword").val()!= " " ){
	     if( $("#newPassword").val() != $("#rePassword").val() ){
	        $.messager.alert("提示","新密码和确认密码要相同，请确认！");
		    $("#rePassword").val("");
		    return false; 
	     }
	  }
	}
	
       function do_u_commit(){
        var re_oldPassword = new RegExp(regexEnum.username, "g");
		var re_newPassword = new RegExp(regexEnum.username, "g");
		var re_rePassword = new RegExp(regexEnum.username, "g");
		
		var oldPassword=$("#oldPassword").val(); 
		var newPassword=$("#newPassword").val();
		var rePassword=$("#rePassword").val();
		 if(!re_oldPassword.test(oldPassword)) {
			$.messager.alert("提示","旧密码格式不正确，请确认！");
			return false;
		 }
		 if(!re_newPassword.test(newPassword)) {
			$.messager.alert("提示","新密码格式不正确，请确认！");
			return false;
		 }
		 if(!re_rePassword.test(rePassword)) {
			$.messager.alert("提示","确认密码格式不正确，请确认!");
			return false;
		 }
		 if( newPassword != rePassword){
		    $.messager.alert("提示","新密码和确认密码不相同，请确认！");
		    $("#oldPassword").val();
		    $("#newPassword").val();
		    $("#rePassword").val();
		    return false; 
		 }
		 if( newPassword == oldPassword ){
		    $.messager.alert("提示","新旧密码不能相同，请确认！");
		    $("#oldPassword").val();
		    $("#newPassword").val();
		    $("#rePassword").val();
		    return false; 
		 }
		  window.location.href="<%=path%>/core/user/upPwd.do?oldPassword="+oldPassword
		  +"&newPassword="+ newPassword+"&rePassword="+rePassword;
		}
	$(function(){
			$.formValidator.initConfig({formID:"userForm",theme:"ArrowSolidBox",submitOnce:true,  
					onError:function(msg,obj,errorlist){
						$("#errorlist").empty();
						$.map(errorlist,function(msg){
							$("#errorlist").append("<li>" + msg + "</li>")
						});
					},
					ajaxPrompt : '有数据正在异步验证，请稍等...'
				});
			$("#oldPassword").formValidator({  
		        onFocus:"至少输入8个长度"
		    }).inputValidator({
		    	min:8,max:16,
			    empty:{leftEmpty:false,rightEmpty:false,emptyError:"旧密码两边不能有空符号"},
				onError:"请输入8-16位长度的密码,请确认"
			});
			$("#newPassword").formValidator({
		        onFocus:"至少输入8个长度"
		    }).inputValidator({
		    	min:8,max:16, 
			    empty:{leftEmpty:false,rightEmpty:false,emptyError:"新密码两边不能有空符号"}, 
				onError:"请输入8-16位长度的密码,请确认"
			});
			$("#rePassword").formValidator({ 
				tipID:"rePasswordTip",
				onFocus:"确认密码必须与新密码相同"
			}).inputValidator({
				min:8,max:16,
				onError:"你输入的确认密码长度不正确,请确认"
			});
			if( "${msg}" != "" ){
			   $.colorbox.alert("${msg}");
			}
		});
	</script>
	</head>
	<body>
	<div class="right">
		<div class="o-mt">
				<h2 style="margin-top: 0;">
					<a href="javascript:void(0);" style="color:#cc0000">帐号管理</a>&nbsp;>>&nbsp;
					<a  style="color:#cc0000" href="<%=path %>/core/user/resetPwd_list.do">密码修改</a>
				</h2>
			</div>
		<div class="msg" style="clear: both;"><s:actionmessage/><s:fielderror/><s:actionerror/> </div>
		<div id="operate" style="margin-bottom: 20px;">
			<div id="table_select_circle" style="width: 750px;">
				<div class="rtop">
					<div class="r1"></div>
					<div class="r2"></div>
					<div class="r3"></div>
					<div class="r4"></div>
				</div>
				<div class="circle_content">
					<div style="margin-top: 10px;">
						<form id="userForm"  method="post" action="#"> 
							<s:token></s:token>
							<table>
							 <tr>
							  <th nowrap="nowrap">
								 <span style="color:red;">*</span>
									旧密码:
								</th>
								<td class="sh_v_s">
								   <input type="password" id="oldPassword" name="oldPassword" value="${oldPassword}" />
								</td>
								<td class="q_sh_v_s">
									<div id="oldPasswordTip" style="width: 230px"></div>
								</td>
							  </tr>
								<tr>
									<th nowrap="nowrap">
									<span style="color:red;">*</span>
										新密码:
									</th>
									<td class="sh_v_s">
									 <input type="password" name="newPassword" id="newPassword" value="${newPassword}" onblur="v_n_o()"/>
									</td>
									<td class="q_sh_v_s">
										<div id="newPasswordTip" style="width: 230px"></div>
									</td>
								</tr>
								<tr>
									<th nowrap="nowrap">
									<span style="color:red;">*</span>
										确认密码:
									</th>
									<td class="sh_v_s">
										<input type="password"  id="rePassword" name="rePassword"  value="${rePassword}" onblur="v_n_r()"/>
									    
									</td>
									<td class="q_sh_v_s">
									  <div id="rePasswordTip" style="width: 230px"></div>
									</td>
								</tr>
								
								<tr style="height: 30px;">
									<td colspan="4" style="">
									<input type="hidden" name="_ns" id="_ns" value="/core/user/"/>
									</td>
								</tr>
								<tr>
									<td colspan="4">
										<input type="button" style="margin-left: 100px;border-style:none;width:122px;height:31px;font-size: 12px;color:#FFF;padding:0;background: url('<%=path %>/common/images/shop/anniu.png')  no-repeat scroll -69px -65px transparent;" value="确定" name="btOk" onclick="javascript:do_u_commit();" class="btCommit"/>
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
		</div>
	</body>
</html>