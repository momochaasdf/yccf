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
<title><s:property
		value="#session._COM_FRAMEWORK_USER_KEY.shopName" /> - <decorator:title
		default="快点订远程预订系统" /></title>
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
<decorator:head />
<div id="loading_background" class="loading_background" style="display: none; "></div>
<div id="loading_progressBar" class="loading_progressBar" style="display: none; ">数据加载中，请稍等...</div>
<script type="text/javascript">
var loadingbox = $("#loading_background,#loading_progressBar");
loadingbox.hide(); 
	function showMsg(message){
		if(typeof message == "string")
			message = JSON.parse(message); 
		if(!message.detailUrl || message.detailUrl == "")
			message.detailUrl = "messageElves/messageElves_loadAlertMsg.do?id=" + message.id;
		else if(utils.isParamUrl(message.detailUrl))
			message.detailUrl = message.detailUrl 
							+ "&msgId=" + message.id;
		else
			message.detailUrl = message.detailUrl 
							+ "msgId=" + message.id;
		//未读信息数+1
		if(message.accepterId)
			$.get("<%=ctx%>/jmessage/jmessage_addUnreadMsg.do");
		$.msgbox({
			msgId: message.id,
			title: message.title,
			content: message.content,
			contentHeight: "80px",
			wordsNum: 140,
			detailUrl: "<%=ctx%>/" + message.detailUrl
		});
	}
	var interpret="请输入完整的16位订单号";
	var dataSize=/^[\d]{16}$/;
	$(function(){
		if("${_COM_FRAMEWORK_USER_KEY.companyId}" != "" 
				&& "${unreadMsg}" > 0){
			$.get("<%=ctx%>/jmessage/jmessage_listShopUnreadMsgs.action?t=" + new Date().getTime(),function(data){
				for(var i = 0; i < data.length; i++){
					showMsg(data[i]);
				} 
			});
		}
		//dwr配置
		if("${_COM_FRAMEWORK_USER_KEY.companyId}" != ""){
			dwr.engine.setActiveReverseAjax(true);
	        dwr.engine.setErrorHandler(function errorHandler(message, ex){
               console.log(message);
	        });
	        dwr.engine.setPollStatusHandler(function updatePollStatus(pollStatus){
            	console.log(pollStatus);
	        });
	        RegisterUser.register("SHOP", "${_COM_FRAMEWORK_USER_KEY.companyId}");
		}
	
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
		$(".xialabiao").click(function(){
			$(this).next("div").show();
		});
		$(".xialabiao").parent("div").mouseleave(function(){
			$(".xialabiao").next("div").hide();
		});
		
		$(".searchType").click(function(){
			$("#searchTypeName").html($(this).text());
			$("#searchType").val($(this).attr("data"));
			interpret=$(this).attr("dataValue");
			if($(this).attr("dataSize")== 12){
				dataSize=/^[\d]{12}$/;
			}else{
				dataSize=/^[\d]{16}$/;
			}
			$("#site_search").val(interpret).css("color","#AAA");
			$(".xialabiao").next("div").hide();
		});
		$("#site_search").focus(function(){
			if($("#site_search").val() == $(".searchType").eq(0).attr("dataValue")
				|| $("#site_search").val() == $(".searchType").eq(1).attr("dataValue") ){
				$("#site_search").val("").css("color","#000");
			}
		}).blur(function(){
			if($.trim($(this).val()).length <= 0){
				$("#site_search").val(interpret).css("color","#AAA");
			}
		});
		$(".interpret").click(function(){
			$(".interpret").html("");
		});
		$(".btn").click(function(){
			if(dataSize.test($.trim($("#site_search").val()))){
				$("#searchTypeValue").val($.trim($("#site_search").val()));
				doActions($("#searchType").val());
			}else{
				$.colorbox.alert(interpret);
			}
		});
		
	});
	function doActions(type){
		if(type == 1){
			$.ajax({
				    type: "post",
				    url: "<%=ctx%>/jpurchase/searchTypePurchase_searchOrder.action",
			    	data:{"info.searchValue":$("#searchTypeValue").val()},
				    success: function(data){
				    	if(data.result == 'purchase'){
				    		window.location.href="<%=ctx%>/purchase/purchase_load.do?id="+data.id;
				    	}else if(data.result == 'ourMeal'){
				    		window.location.href="<%=ctx%>/purchase/outMealOrder_load.do?outMealOrder.id="+data.id;
				    	}else{
				    		$.colorbox.alert("未找到对应的订单");
				    	}
				    }
				  });
		}else{
			$.ajax({
				    type: "post",
				    url: "<%=ctx%>/jpurchase/searchTypePurchase_searchDock.action",
			    	data:{"info.searchValue":$("#searchTypeValue").val()},
				    success: function(data){
				    	if(data.result == 'purchase'){
				    		window.location.href="<%=ctx%>/purchase/purchase_consume.do?info.dock="+$("#searchTypeValue").val();
				    	}else if(data.result == 'coupon'){
				    		window.location.href="<%=ctx%>/coupon/coupon_query.do?info.dock="+$("#searchTypeValue").val();
				    	}else{
				    		$.colorbox.alert("未找到对应的消费");
				    	}
				    }
				  });
		}
	}
	$(function(){
	if("${_COM_FRAMEWORK_USER_KEY.companyId}" != "" ){
			$.get("<%=ctx%>/jnotice/shopNotice_shopNotice.action?t=" + new Date().getTime(),function(data){ 
				var _position = 1;
				if( data.length == 0 ){
				   $(".scroll").hide();   
				   return false;
				}
				$(data).each(function(index, domEle){ 
				   var per_content = "<a class='s_end' href='javascript:void(0);' onclick='javascript:go_message_load("+domEle.id+")'>"+_position+".&nbsp;"+domEle.title  + "</a>";     
				   $(".div_un_message").append(per_content);  
				   _position +=1;
				});		
				$(".scroll").show(); 						
			});
		}else{
		 	$(".scroll").hide(); 
		 	return false; 
		}
		setInterval('AutoScroll(".scroll")',6000) 
	});
	$(function(){
	if("${_COM_FRAMEWORK_USER_KEY.companyId}" != ""){
			$.get("<%=ctx%>/jmessage/jmessage_statisticsUnreadMsgs.action",function(data){  
				if(typeof(data.count) != 'undefined' ){
					$(".span_un_read_message").html("<a class='whiteLink' onclick='javascript:go_unMessage_detail();'>未读消息("+data.count+")</a>");
					return true; 
				}
			});
		}
	});
	function go_unMessage_detail(){
		window.location.href="<%=ctx%>/messageElves/messageElves_messageshoplist.do";  
	}
	function go_message_load(_messageId){
		window.location.href="<%=ctx%>/notice/shopNotice_load.do?id="+_messageId; 
	}
	//添加进收藏夹
function AddFavorite(sURL, sTitle)
{
    try
    {
        window.external.addFavorite(sURL, sTitle);
    }
    catch (e)
    {
        try
        {
            window.sidebar.addPanel(sTitle, sURL, "");
        }
        catch (e)
        {
            alert("加入收藏失败，请使用Ctrl+D进行添加");
        }
    }
}

</script>
<script type="text/javascript"> 
// 简单滚动
function AutoScroll(obj){
	$(obj).find("div").animate({
		marginTop:"-25px"
	},1000,function(){ 
		$(this).css({marginTop:"0px"}).find("a:first").appendTo(this);
	});
}
</script>
<style>	
/*简单滚动*/
.scroll {
	float: right;
	margin-top: 4px;
	width: 493px;
	height: 25px;
	line-height: 25px;
	border: #ccc 1px solid;
	overflow: hidden; ////
	margin-right: 10px;
	margin-top: 10px;
}

.scroll a {
	height: 25px;
	display: block;
	padding-left: 10px;
}

.o-mt a:hover {
	text-decoration: underline;
}

#header  .btn {
	background: url("<%=ctx%>/common/imgs/button_icon.png") repeat scroll 0
		-165px transparent;
	border: medium none;
	color: #555555;
	cursor: pointer;
	font-size: 12px;
	font-weight: 700;
	height: 27px;
	padding-top: 0;
	text-shadow: 1px 1px #FFFFFF;
	width: 83px;
}

#header .text {
	border-radius: 3px 0 0 3px;
	color: #aaa;
	height: 25px;
	line-height: 25px;
	width: 320px;
}

.xialabiao {
	background:
		url("<%=ctx%>/common/images/main/T1MzccXoJcXXa0_6.A-70-800.png")
		no-repeat scroll -50px -139px transparent;
	cursor: pointer;
	float: right;
	height: 100%;
	width: 20px;
}

.searchType {
	cursor: pointer;
}

.searchType:hover {
	cursor: pointer;
	background: #6CAAE3;
	color: #FFF;
}
</style>
</head>
<body
	<decorator:getProperty property="body.onload" writeEntireProperty="true" />>
	<div
		style="width:100%; height:34px; line-height:34px; background:#efefef;border-bottom: 1px solid #CCC;"
		class="head">
		<div style="width: 1200px;margin: 0 auto;">
			<div style=" margin-right:10px;cursor: pointer;float: left;"
				onClick="AddFavorite('<%=FileConstants.FRONTEND_URL %>','快点订 - 订餐|外卖|预订|订餐网|网上订餐')"
				href="<%=FileConstants.FRONTEND_URL %>" target="_self">收藏本站</div>
			<div style="margin-right:10px; float: left;cursor: pointer;"
				onclick="javascript:window.location.href='<%=FileConstants.FRONTEND_URL%>/diet/download_load.action'">快点订手机客户端</div>
			<s:if test="#session._COM_FRAMEWORK_USER_KEY.companyId != null">
				<div style="margin-right:10px; float: left;">
					公司编号<SPAN
						style="color: #C97E67;
font-weight: bold;font-size: 14px;line-height: 0;">(${sessionScope._COM_FRAMEWORK_USER_KEY.companyId})</SPAN>
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
					height="80" style="cursor:pointer; "
					onclick="javascript:window.location.href='<%=FileConstants.FRONTEND_URL%>'" />
			</div>
			<div
				style="float: right; margin-right: 10px;margin-top: 13px;width: 800px;">
				<div style="float: right;position: relative;">
					<input type="text" autocomplete="off" id="site_search" name="kw"
						class="text fl" tabindex="1" value="请输入完整的16位订单号">
					<!-- <label class="search-label" for="site_search">搜索店名、地址、菜系等</label> -->
					<input type="button" value=" 搜 索" class="btn fl" hidefocus="true">
				</div>
				<div
					style="padding-left:15px;width:70px;height: 25px;line-height: 25px;border: 1px solid #ccc;position: relative;background-color: #FFF;margin-right: -2px;border-radius: 3px 0 0 3px;float: right;">
					<div id="searchTypeName" style="float: left;color: #aaa">搜订单</div>
					<div class="xialabiao">&nbsp;</div>
					<div
						style="position: absolute;top: 27px;left:-1px;height: auto;width: 85px;border: 1px solid #ccc;background-color: #FFF;padding-top: 3px;margin-top: -4px;border-top: none;display: none;">
						<div data="1" class="searchType" style="padding-left: 15px;"
							dataValue="请输入完整的16位订单号" dataSize="16">搜订单</div>
						<div data="2" class="searchType" style="padding-left: 15px;"
							dataValue="请输入完整的12位消费码" dataSize="12">搜消费码</div>
						<input type="hidden" id="searchType" value="1" name="info.search">
						<input type="hidden" id="searchTypeValue" value=""
							name="info.searchValue">
					</div>

				</div>
				<div class="scroll" style="display: none;">
					<div class="div_un_message"></div>
				</div>
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


	<div
		style="width:100%; height:auto;margin-top:10px; border-top:2px solid #ff7d23;float: left;">
		<div id="ft">
			<div class="ftbox">
				<h3>用户帮助</h3>
				<ul>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_FAQ.action">常见问题</a>
					</li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_procedure.action">用户使用流程</a>
					</li>
				</ul>
			</div>
			<div class="ftbox">
				<h3>商家帮助</h3>
				<ul>
					<li><a href="" rel="nofollow">常见问题</a></li>
					<li><a href="" rel="nofollow">商户入驻</a></li>
					<li><a href="" rel="nofollow">账户安全</a></li>
				</ul>
			</div>
			<div class="ftbox">
				<h3>使用条款</h3>
				<ul>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_agreement.action"
						rel="nofollow">服务协议</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_disclaimer.action"
						rel="nofollow">免责声明</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_legalNotices.action"
						rel="nofollow">法律声明</a></li>
				</ul>
			</div>
			<div class="ftbox">
				<h3>商务合作</h3>
				<ul>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_marketCooperation.action"
						rel="nofollow">市场合作</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_marketCooperation.action"
						rel="nofollow">招商加盟</a></li>
				</ul>
			</div>
			<div class="ftbox">
				<h3>相关产品</h3>
				<ul>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_reservation.action"
						rel="nofollow">定座</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_bookDinner.action"
						rel="nofollow">订餐</a></li>
				</ul>
			</div>
			<div class="ftbox">
				<h3>公司信息</h3>
				<ul>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_aboutUs.action"
						rel="nofollow">关于我们</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_promise.action"
						rel="nofollow">承诺</a></li>
					<li><a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_mediaCoverage.action"
						rel="nofollow">媒体报道</a></li>
					<li><a gaevent="footer/job"
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_joinUs.action"
						rel="nofollow">加入我们</a></li>
				</ul>
			</div>
			<div class="ftbox service">
				<i class="hotline"></i>
				<p class="desc">客服电话(免长途费)</p>
				<p class="num">400-6363-212</p>
				<p class="time">周一到周日 9:00 - 22:00</p>
			</div>

			<div class="copyright" id="yui_3_8_0_1_1368666683020_213">
				<p id="yui_3_8_0_1_1368666683020_212">
					&copy; <span title="I:3; Q:6; S:6; C:24; F:0; T:75.72; H:com">2015</span>
					<a href="<%=FileConstants.FRONTEND_URL%>">快点订</a> kuaidianding.com
					<span style="cursor: pointer;"
						onclick="javascript:window.location.href='http://www.miibeian.gov.cn/'">苏ICP备13027952号-2</span>
					<a
						href="<%=FileConstants.FRONTEND_URL %>/diet/bottom_electronicBulletin.action ">
						电子公告服务规则</a>
				</p>
				<p id="yui_3_8_0_1_1368666683020_212">网站邮箱 web@kuaidianding.com</p>
			</div>

			<ul class="cert cf">
				<li><span class="cert__item  cert__item--record"><a
						target="_blank" hidefocus="true" href="#" title="备案信息">备案信息</a> </span> <span
					class="cert__item cert__item--knet"><a rel="nofollow"
						title="可信网站认证">可信网站</a> </span>
				</li>

			</ul>
		</div>
		<div id="tbox">
			<a id="gotop" href="javascript:void(0)"></a> <a id="jianyi"
				target="_blank"
				href="<%=FileConstants.FRONTEND_URL %>/diet/propose_load.action"></a>
		</div>
	</div>

	<script type="text/javascript" language="javascript">
		var errorArry = new Array();
		<s:if test="hasFieldErrors()">
		    <s:iterator value="fieldErrors">
		     errorArry.push('<s:property value="key"/>');
		    </s:iterator>
		</s:if>
		if (errorArry.length>0) {
			for (var i = 0; i < errorArry.length; i++) {
				$("input[name='" + errorArry[i]+"'],textarea[name='" + errorArry[i]+"']").css('border', '1px solid red');
			}
		}
		$(document).ready(function(){
			$("input[type=text],input[type=checkbox],input[type=radio],textarea").bind("change", function(){
				$(this).css('background-image', 'url("<%=ctx%>/common/imgs/change.gif")');
				$(this).css('background-repeat', 'no-repeat');
			});
		});
	</script>
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
