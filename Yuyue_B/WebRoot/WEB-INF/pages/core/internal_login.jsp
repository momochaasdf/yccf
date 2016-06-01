<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.deying.util.*" %>
<%
	String ctx = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>快点订商家管理系统--供内部使用</title>
		<link rel="icon" href="<%=ctx %>/common/imgs/favicon.ico" type="image/x-icon" />
		<meta content="text/html; charset=utf-8" http-equiv="Content-type"/>
		<meta http-equiv='P3P' name='CP'
			content='CURa ADMa DEVa PSAo PSDo OUR BUS UNI PUR INT DEM STA PRE COM NAV OTC NOI DSP COR' />
		<meta name="keywords" content="供内部使用" />
		<meta name="description" content="供内部使用" />
		<link href="<%=ctx %>/common/css/login.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="<%=ctx%>/common/js/jquery-1.4.4.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/formvalidator/formValidator-4.1.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/formvalidator/formValidatorRegex.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/CookieHelper.js" charset="utf-8"></script>
	
	<script  type="text/javascript">
		
		$(function(){
			if(navigator.appVersion.indexOf("MSIE 6.0")>0){
				alert("您的浏览器版本过低，可能会影响您浏览本网站\n\r请升级浏览器至IE7以上版本");
			}
			$("#sub").click(function(){
				subs();
			});
		});
		function subs(){
		 $("form").submit();
		}
		var names=false;
		var passwords=false;
		function checkName(){
			var name=$("#name").val().replace('/(^/s*)|(/s*$)/g', "");
			if(name.length <=0 || name.length>50){
				names=false;
				$(".nameTd .onError").show().siblings("div").hide();
			}else{
				names=true;
				$(".nameTd .onCorrect").show().siblings("div").hide();
			}
		}
		function nameFocus(){
			$('.nameTd .onFocus').show().siblings('div').hide();
		}
		function nameBlur(){
			checkName();
		}
		function passwordFocus(){
			$('.passwordTd .onFocus').show().siblings('div').hide();
		}
	</script>
	</head>
	
	<body>
		<div class="body-bg">
			<div id="wrap">
				<div class="left-box">
					<div class="function img1">
						<p class="f-title">
							节省商家人力成本
						</p>
						<p>
							通过网站、手机点单，节省商家人力成本
						</p>
					</div>
					<div class="function img2">
						<p class="f-title">
							动态网上管理
						</p>
						<p>
							动态网上管理，简单易操作
						</p>
					</div>
					<div class="function img3">
						<p class="f-title">
							sssssssssssssssssssssssssssss视图化的订单统计
						</p>
						<p>
							sssssssssssssssssssssssss视图化的订单统计，直观不易出错
						</p>
					</div>
				</div>
				<div class="right-box">
				<form action="<%=ctx%>/internal_logining.do"  method="post" id="login">
					<div class="login">
						<div class="r-box">
							<table class="login-form">
								<tr>
									<td colspan="2">
										<div  style="background:url(<%=ctx %>/common/images/login/login_input1.png) no-repeat scroll 9px center #E9E9E9;float:left;width:33px;height:28px;border-top:1px solid #BFBFBF;
										border-bottom:1px solid #BFBFBF;border-left:1px solid #BFBFBF; " ></div>
										<div style="float: left; "><input id="name" type="text" name="loginId" class="input" onfocus="nameFocus();" onblur="nameBlur();" style="background:#E9E9E9;"/></div>
									</td>
								</tr>
								<tr style="height: 25px;">
									<td colspan="2" class="nameTd">
										<div style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;"  class="onError">
											<div class="onError">长度过长或未填</div>
										</div>
										<div class="onCorrect"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onCorrect">输入正确</div>
										</div>
										<div class="onFocus"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onFocus">不能为空</div>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div  style="background:url(<%=ctx %>/common/images/login/login_input2.png) no-repeat scroll 9px center #E9E9E9;float:left;width:33px;height:28px;border-top:1px solid #BFBFBF;
										border-bottom:1px solid #BFBFBF;border-left:1px solid #BFBFBF; " ></div>
										<div style="float: left; "><input type="password" id="password" name="password" class="input"  onfocus="passwordFocus();" style="background:#E9E9E9;"/></div>
										
									</td>
								</tr>
								<tr style="height:25px;">
									<td colspan="2" class="passwordTd">
										<div style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;"  class="onError">
											<div class="onError">请输入1-20位密码</div>
										</div>
										<div class="onCorrect"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onCorrect">输入正确</div>
										</div>
										<div class="onFocus"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onFocus">不能为空</div>
										</div>
									</td>
								</tr>
								<tr style="height: 25px;">
									<td colspan="2" class="validatecodeTd">
										<s:if test="msg=='loginfalse'"><span class="wrongMsg">用户名或密码错误</span></s:if>
										<s:elseif test="msg=='userfalse'"><span class="wrongMsg">用户已被关闭</span></s:elseif>
										<s:else></s:else>
										<div style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;"  class="onError">
											<div class="onError">验证码错误</div>
										</div>
										<div class="onCorrect"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onCorrect">输入正确</div>
										</div>
										<div class="onFocus"  style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;">
											<div class="onFocus">请输入4位验证码</div>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="checkbox" id="remember-password" name="saveLoginId" value="1" />
										<label for="remember-password" >
											记住帐号
										</label>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="submit" class="login-button"  value="登录" />
									</td>
								</tr>
							</table>
						</div>
					</div>
					</form>
				</div>
			</div>
			<div >
				<div>
				  <span style="margin-left:120px;">输入用户名或者用户昵称:</span><input type="text" id="user_name" name="nickname"/>
			    </div>
			    <div id="activationCode_div" style="display:none;margin-left:120px;margin-top:2px;margin-bottom:2px;">
			     <span>激活码是：<input type="text" id="activationCode" size="40" readonly="readonly"/></span>
			    </div>
				<div style="margin-left:120px;">
			      <input type="button" onclick="javascript:do_search_activationCode(this);" value="查询激活码"/>
				</div>
			</div>
			<div id="footer">
				<p>
					Copyright &copy; 2013
					<strong>KuaiDianDing.Com</strong> All rights
					reserved.&nbsp;&nbsp;&nbsp;&nbsp;苏ICP备13027952号-2
					<a href="${frontendUrl }" title="快点订"target="_blank"
						rel="external">快点订</a>
				</p>
			</div>
		</div>
		<script type="text/javascript">
	    function do_search_activationCode(obj){
	      var user_name = $("#user_name").val();
	      if( user_name == ""){
	       alert("请输入用户名或昵称");
	       return false;
	      }
	      $.ajax({
			    type: 'post',
			    url: '<%=ctx%>/jinternal_search.do',
		    	data:{"info.nickname":$("#user_name").val()},
			    success: function(data){
			    if(data.activationCode != ""){
			      $("#activationCode_div").show();
			      $("#activationCode").val(data.activationCode);
			    }else{
			     alert("对不起改用户没有激活码!");
			     } 
			    }
		   });
	    
	    }
	
	   </script>
	</body>
</html>