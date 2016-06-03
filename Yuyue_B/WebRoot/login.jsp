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
		<title>仪诚财富管理系统</title>
		<link rel="icon" href="<%=ctx %>/common/imgs/favicon.ico" type="image/x-icon" />
		<meta content="text/html; charset=utf-8" http-equiv="Content-type"/>
		<meta http-equiv='P3P' name='CP'
			content='CURa ADMa DEVa PSAo PSDo OUR BUS UNI PUR INT DEM STA PRE COM NAV OTC NOI DSP COR' />
		<meta name="keywords" content="仪诚财富管理系统" />
		<meta name="description" content="仪诚财富管理系统" />
		<link href="<%=ctx %>/common/css/login.css" rel="stylesheet" type="text/css"/>
		<script type="text/javascript" src="<%=ctx%>/common/js/jquery-1.4.4.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/formvalidator/formValidator-4.1.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/formvalidator/formValidatorRegex.js" charset="utf-8"></script>
	<script type="text/javascript" src="<%=ctx%>/common/js/CookieHelper.js" charset="utf-8"></script>
	
	<script  type="text/javascript">
		function changeVerifyCode(){
			var t= new Date().getTime();
	   		$("#vdimgck").attr("src","<%=ctx%>/servlet/VerifyCodeServlet?t=" + t);
		}
		$(function(){
			if(navigator.appVersion.indexOf("MSIE 6.0")>0){
				alert("您的浏览器版本过低，可能会影响您浏览本网站\n\r请升级浏览器至IE7以上版本");
			}
		
			if('${msg}' != null && '${msg}' != ''){
				names=false;
		    	passwords=false;
		  		validatecodes=false;
			}
			$("form input").click(function(){
				$(".wrongMsg").html("");
			});
			var loginid=cookie.Get1("backName");
			if(loginid != '' && loginid != 'null'){
				$("#name").val(loginid);
			}
			$.formValidator.initConfig({formID:"login",theme:"Default",submitOnce:true,
				onError:function(msg,obj,errorlist){
					$("#errorlist").empty();
					$.map(errorlist,function(msg){
						$("#errorlist").append("<li>" + msg + "</li>")
					});
				}
			});
			$("#sub").click(function(){
				subs();
			});
		});
		function subs(){
			if(names&&passwords&&validatecodes){
					$("form").submit();
					
			}else{
					if(!names){
						checkName();
					}
					if(!passwords){
						checkPassword();
					}
					if(!validatecodes){
						var validatecode=$("#validatecode").val().replace('/(^/s*)|(/s*$)/g', "");
						if(validatecode.length !=4){
							validatecodes=false;
							$(".validatecodeTd .onError").show().siblings("div").hide();
						}else{
							 $.ajax({
							    type: "post",
							    url: "<%=ctx%>/checkCode_check.action",
						    	data:{"codes":validatecode},
							    success: function(data){ 
							    	 if( data == 1 ) {
							    	 	validatecodes=true;
							    	 	$(".validatecodeTd .onCorrect").show().siblings("div").hide();
							    	 	if(names&&passwords&&validatecodes){
											$("form").submit();
										}
							    	 }else{
							    	 	validatecodes=false;
										$(".validatecodeTd .onError").show().siblings("div").hide();
							    	 }
							     }
							 });
							
						}
					}
				}
		}
		var names=false;
		var passwords=false;
		var validatecodes=false;
		function checkName(){
			var name=$("#name").val().replace('/(^/s*)|(/s*$)/g', "");
			if(name.length <= 0 || name.length > 50){
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
		
		function checkPassword(){
			var password=$("#password").val().replace('/(^/s*)|(/s*$)/g', "");
			if(password.length < 8 || password.length > 20){
				passwords=false;
				$(".passwordTd .onError").show().siblings("div").hide();
			}else{
				passwords=true;
				$(".passwordTd .onCorrect").show().siblings("div").hide();
			}
		}
		function passwordFocus(){
			$('.passwordTd .onFocus').show().siblings('div').hide();
		}
		function passwordBlur(){
			checkPassword();
		}
		
		function checkValidatecode(){
			var validatecode=$("#validatecode").val().replace('/(^/s*)|(/s*$)/g', "");
			if(validatecode.length !=4){
				validatecodes=false;
				$(".validatecodeTd .onError").show().siblings("div").hide();
			}else{
				 $.ajax({
				    type: "post",
				    url: "<%=ctx%>/checkCode_check.action",
			    	data:{"codes":validatecode},
				    success: function(data){ 
				    	 if( data == 1 ) {
				    	 	validatecodes=true;
				    	 	$(".validatecodeTd .onCorrect").show().siblings("div").hide();
				    	 }else{
				    	 	validatecodes=false;
							$(".validatecodeTd .onError").show().siblings("div").hide();
				    	 }
				     }
				 });
				
			}
		}
		function validatecodeFocus(){
				$('.validatecodeTd .onFocus').show().siblings('div').hide();
		}
		function validatecodeBlur(){
			checkValidatecode();
		}
	
		
		$(function(){
			$("body").keydown(function(event){
				if(event.keyCode==13){
					$("#validatecode").blur();
					 $("#sub").click();
				}
			});
		});
				
	</script>
	</head>
	
	<body>
		<div class="body-bg">
			<%--<div onclick="javascript:window.location.href='${backendUrl}/app/deying/shop_kdd/kddShopApp.apk'"  style="cursor:pointer;position: absolute;top: 302px;right: 0;width: 166px;height: 303px;background-image: url('<%=ctx %>/common/imgs/float.png');">
			</div>--%>
			<div id="wrap">
				<div class="left-box">
					<div class="function img1">
						<p class="f-title">
							节省公司人力成本
						</p>
						<p>
							通过网站、手机系统管理，节省公司人力成本
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
							视图化的理财统计
						</p>
						<p>
							视图化的理财统计，直观不易出错
						</p>
					</div>
				</div>
				<div class="right-box">
				<form action="<%=ctx%>/login.do"  method="post" id="login">
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
										<div style="float: left; "><input type="password" id="password" name="password" class="input"  onfocus="passwordFocus();" onblur="passwordBlur();" style="background:#E9E9E9;"/></div>
										
									</td>
								</tr>
								<tr style="height:25px;">
									<td colspan="2" class="passwordTd">
										<div style="width: 236px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent;display: none;"  class="onError">
											<div class="onError">请输入8-20位密码</div>
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
									<td >
										<div  style="background:url(<%=ctx %>/common/images/login/login_input3.png) no-repeat scroll 9px center #E9E9E9;float:left;width:33px;height:28px;border-top:1px solid #BFBFBF;
										border-bottom:1px solid #BFBFBF;border-left:1px solid #BFBFBF; " ></div>
										<div style="float: left; ">
										<input type="text" name="codes"  class="code-input input" style="height: 28px;background:#E9E9E9;"
											id="validatecode"   onfocus="validatecodeFocus();" onblur="validatecodeBlur();"/>
											</div>
									</td>
									<td>
										<img src="<%=ctx%>/servlet/VerifyCodeServlet" onclick="changeVerifyCode();" alt="看不清？点击更换"
											id="vdimgck" style="cursor: pointer;max-width:81px;"  />
									</td>
								</tr>
								<tr style="height: 25px;">
									<td colspan="2" class="validatecodeTd">
										<s:if test="msg=='loginfalse'"><span class="wrongMsg">用户名或密码错误</span></s:if>
										<s:elseif test="msg=='userfalse'"><span class="wrongMsg">用户已被禁用</span></s:elseif>
										<s:elseif test="msg=='userDelete'"><span class="wrongMsg">用户已被删除</span></s:elseif>
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
										<input type="button" class="login-button" id="sub" value="登录" />
									</td>
								</tr>
							</table>
						</div>
					</div>
					</form>
				</div>
			</div>
			<div style="height: 100px;">
			</div>
			<div id="footer">
				<p>
					Copyright &copy; 2015
					<strong>yichengcaifu.com</strong> All rights
					reserved.&nbsp;&nbsp;&nbsp;&nbsp;苏ICP备13027952号-2
					<a href="#" title="仪诚财富" rel="external">仪诚财富</a>
				</p>
			</div>
		</div>
	</body>
</html>