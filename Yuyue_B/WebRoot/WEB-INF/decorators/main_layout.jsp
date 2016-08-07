<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.deying.util.core.com.framework.common.tools.Constants"%>
<%@page import="com.deying.util.FileConstants"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page"%>
<!DOCTYPE HTML>
<% String ctx = request.getContextPath(); %>
<html>
<head>
<link rel="shortcut icon" href="<%=ctx %>/common/imgs/favicon.ico"
	type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Pragma" CONTENT="no-cache" />
<meta http-equiv="Cache-Control" CONTENT="no-cache" />
<meta http-equiv="Expires" CONTENT="0" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title><decorator:title
		default="仪诚财富管理系统" /></title>
<%@include file="/common/jsp/constants.jsp"%>
<link href="<%=ctx%>/common/imgs/favicon.ico" rel="SHORTCUT ICON" />
<link href="<%=ctx%>/common/css/base.css" rel="stylesheet"
	type="text/css" />
<link href="<%=ctx%>/common/css/style.css" rel="stylesheet"
	type="text/css" />
<link
	href="<%=ctx%>/common/tools/jquery-easyui/themes/default/easyui.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=ctx %>/common/js/loadingbox/loadingbox.css" />
<link rel="stylesheet" type="text/css"
	href="<%=ctx %>/common/js/colorbox/colorbox.css" />
<link rel="stylesheet" type="text/css"
	href="<%=ctx%>/common/tools/jquery-easyui/themes/icon.css" />
<script type="text/javascript"
	src="<%=ctx%>/common/js/jquery-1.7.2.min.js" charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/js/jquery.form.js" charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/js/formvalidator/formValidator-4.1.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/js/formvalidator/formValidatorRegex.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/tools/jquery-easyui/jquery.easyui.min.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=ctx%>/common/js/utils.js"
	charset="utf-8"></script>
<script type="text/javascript">
		BaseData.init({
			path: '<%=ctx%>'
		});
	</script>
<script type="text/javascript"
	src="<%=ctx %>/common/js/colorbox/jquery.colorbox.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=ctx%>/common/js/msg.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=ctx%>/common/js/global.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=ctx%>/common/js/msgbox/msgbox.js"
	charset="utf-8"></script>
<script type="text/javascript" charset="javascript">var jsCtx = '<%=ctx%>';</script>
<!-- JS验证框架依赖库，包括CSS和JS两个文件 -->
<link rel="stylesheet"
	href="<%=ctx%>/common/js/livevalidation/livevalidation_standalone.css"
	type="text/css" />
<script type='text/javascript'
	src='<%=ctx%>/common/js/livevalidation/livevalidation_standalone.js'></script>
<script type='text/javascript' src='<%=ctx%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=ctx%>/dwr/util.js'></script>
<script type='text/javascript'
	src='<%=ctx%>/dwr/interface/RegisterUser.js'></script>
<script type="text/javascript"
		src="<%=ctx%>/common/js/datepicker/WdatePicker.js"></script>
<decorator:head />
<div id="loading_background" class="loading_background" style="display: none; "></div>
<div id="loading_progressBar" class="loading_progressBar" style="display: none; ">数据加载中，请稍等...</div>
<script type="text/javascript">
var loadingbox = $("#loading_background,#loading_progressBar");
loadingbox.hide(); 
	$(function(){
		$(".menu-div").click(function(){
			if($(this).hasClass("closed")){
				$(this).next().show();
				$(this).removeClass("closed");
			}else{
				$(this).next().hide();
				$(this).addClass("closed");
			}
		});
		
		var menuId = $.cookie(BaseData.topMenu);
		if(!menuId)
			menuId = $(".topMenu:first").attr("menuid");
		$(".topMenu[menuid=" + menuId + "]").addClass("selected");
		$(".menu-box").not(".menu-box[topmenuid=" + menuId+ "]").hide();
		$(".menu-box[topmenuid=" + menuId+ "]").show();
		
		$(".topMenu").click(function(){
			$(".topMenu.selected").removeClass("selected");
			$(this).addClass("selected");
			menuId = $(this).attr("menuid");
			$.cookie(BaseData.topMenu,menuId,{path: '/'})
			$(".menu-box").not(".menu-box[topmenuid=" + menuId+ "]").hide();
			$(".menu-box[topmenuid=" + menuId+ "]").show();
		});
		if(navigator.appVersion.indexOf("MSIE 6.0")>0){
			alert("您的浏览器版本过低，可能会影响您浏览本网站\n\r请升级浏览器至IE7以上版本");
		}
		
	});
	
	window.setInterval(showPopWin, 3000);
	function showPopWin() {
		$("#popWin").css('display','block');
		$("#foodCartAllNumber").html("23");
	}
</script>
</head>
<body
	<decorator:getProperty property="body.onload" writeEntireProperty="true" />>
	<div
		style="width:100%; height:34px; line-height:34px; background:#efefef;border-bottom: 1px solid #CCC;"
		class="head">
		<div style="width: 1200px;margin: 0 auto;">
			<s:if test="#session._COM_FRAMEWORK_USER_KEY.companyName != null">
				<div style="margin-right:10px; float: left;">
					公司名称&nbsp;<SPAN
						style="color: #C97E67;
font-weight: bold;font-size: 14px;line-height: 0;">(&nbsp;${sessionScope._COM_FRAMEWORK_USER_KEY.companyName}&nbsp;)</SPAN>
				</div>
			</s:if>
			<div style="position:relative; float: right;">
				欢迎您：
				<s:property value="#session._COM_FRAMEWORK_USER_KEY.userName" />
				&nbsp;&nbsp;&nbsp; <a class="whiteLink" href="javascript:void(0);">
					<span class="span_un_read_message"></span> </a> <a
					href="<%=ctx%>/loginSuccess.jsp" class="whiteLink"><img
					style="vertical-align:middle" src="<%=ctx%>/common/images/man.png" />
					返回首页</a> <a href="<%=ctx%>/exit.do" class="whiteLink"><img
					style="vertical-align:middle" src="<%=ctx%>/common/images/quit.png" />
					退出</a> <a href="<%=ctx%>/help.jsp" target="_blank" class="whiteLink"><img
					style="vertical-align:middle" src="<%=ctx%>/common/images/help.png" />
					帮助</a>
			</div>
		</div>
	</div>
	<div id="header"
		style="width:100%; height:80px;margin:0 auto; background: #fff;position: relative;z-index: 100">
		<div style="width: 1200px;margin:0 auto;">
			<div style="width:198px;height:80px; float: left;margin-left: 10px;">
				<img src="<%=ctx %>/common/images/main/logo_index.jpg" width="198"
					height="80" style="cursor:pointer; " />
			</div>
		</div>
	</div>
	<div style="width:1202px; height:auto; margin:0 auto; margin-top:1px;">
		<div id="topnav">
			<ul class="guid">
				<s:iterator value="#session.TOP_MENU_KEY" var="menuVar" status="st">
					<li menuId='<s:property value="#menuVar.key"/>'
						class="topMenu <s:if test='#st.first' >first</s:if><s:elseif test='#st.last'>last</s:elseif>">
						<a href="javascript:void(0);"><span><s:property
									value="#menuVar.value" /> </span> </a>
					</li>
				</s:iterator>
			</ul>
		</div>
		<div style="width:100%; height:auto; margin-top:10px;">
			<div
				style="width:180px; height:auto; float:left;border: 1px solid #D5E5F5;box-shadow: 0 1px 3px #E9E9E9; background:url(<%=ctx %>/common/images/main/left_bg.jpg) repeat-x;">
				<div id="menu-div">
					<div class="menu-div-bd">
						<div class="menu-div-bd" style="padding-bottom: 20px;">
							<z:nav></z:nav>
						</div>
					</div>
				</div>
			</div>
			<div
				style="width:1008px; float:left; margin-left:10px;border: 1px solid #D5E5F5;">
				<div style="padding: 10px;">
					<decorator:body />
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>
	</div>
	
	<%-- <div id="popWin" style="display:none;position:relative;cursor: pointer;float: right;z-index: 3;border:1px solid red;" >
		<div  id="imgCart"  >
		<!-- 购物车 -->
		 <div id="headCart" class="rhsyyhqDIV">
			<div class="content">
					<div class="smt">最新加入的菜品（按照商铺分类）</div>
					<div id="realCarPro" class="smc">
					</div>
					<div class="smb ar p-price">共 <b id="foodCartAllNumber">0</b> 种菜　共计 <strong id="foodCartAllPrice">0.0</strong></div>
			</div>
		</div> 
		</div>
	</div> --%>
	
	<%-- <div style="width: 200px;height: 140px;position: fixed;right: 10px;bottom: 10px;border:1px solid #00B5DA;">
		<div id="dvDockAppLsit" class="le" style="height: 410px;">
			<ul>
				<li style="height: 30px;width: 98%;margin:0px auto 0px auto;line-height:30px;padding-left: 4px;background-color: #00B5DA;color: white;">切换以下餐馆<br></li>
				<li onmouseover="$(this).css('background','#E6FDF1');" onmouseout="$(this).css('background','');" style="height: 25px;width: 100%;margin-bottom: 0px;line-height:25px;"><a href="<%=ctx %>/holidayRemind/holidayRemind_list.do">&nbsp;&nbsp;&nbsp;&nbsp;1，testxxxxxxxxxx  {2}</a><br></li>
				<li onmouseover="$(this).css('background','#E6FDF1');" onmouseout="$(this).css('background','');" style="height: 25px;width: 100%;margin-bottom: 0px;line-height:25px;"><a href="<%=ctx %>/holidayRemind/holidayRemind_list.do">&nbsp;&nbsp;&nbsp;&nbsp;2，testxxxxxxxxxx  {3}</a><br></li>
				<s:iterator value="shops.data" status="st" > 
				<li onmouseover="$(this).css('background','#E6FDF1');" onmouseout="$(this).css('background','');" style="height: 25px;width: 100%;margin-bottom: 0px;line-height:25px;"><a href="<%=ctx %>/shopIndex/shopIndex_loadOne.action?id=${id}">${st.count}  ${name }</a><br></li>
				</s:iterator>
			</ul>
		</div>
	</div> --%>
	
	<div
		style="width:100%; height:auto;margin-top:10px; border-top:2px solid #ff7d23;float: left;">
		<div id="ft">
			<div class="copyright" id="yui_3_8_0_1_1368666683020_213">
				<p>
					Copyright &copy; 2016
					<strong>yichengcaifu.com</strong> All rights reserved.&nbsp;&nbsp;&nbsp;&nbsp;
					<strong>仪诚财富</strong>
				</p>
			</div>

			<ul class="cert cf">
				<li><span class="cert__item  cert__item--record"><a
						target="_blank" hidefocus="true" href="#" title="备案信息">备案信息</a> </span> <span
					class="cert__item cert__item--knet"><a rel="nofollow"
						title="可信网站认证">可信网站</a> </span>
				</li>

			</ul>
		</div>
	</div>
</body>
<script type="text/javascript" src="<%=ctx%>/common/js/Com.js"
	charset="utf-8"></script>
<script type="text/javascript" src="<%=ctx%>/common/js/jquery.cookie.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/tools/validator/jquery.validate.min.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/tools/validator/jquery.metadata.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/tools/validator/localization/messages_cn.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/tools/jquery-easyui/locale/easyui-lang-zh_CN.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="<%=ctx%>/common/js/expand/placeholder.min.js" charset="utf-8"></script>
</html>
