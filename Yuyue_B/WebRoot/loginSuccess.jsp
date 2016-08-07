<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<script type="text/javascript">
	$(document).ready(function() {
		var lr_systembtn = $("#lr_systembtn");
		var lr_menu = $("#lr_menu");

		lr_systembtn.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu.fadeIn("slow");
			}, 200);
		});
		lr_systembtn.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu.fadeOut("slow");
		});

		var lr_systembtn1 = $("#lr_systembtn1");
		var lr_menu1 = $("#lr_menu1");
		lr_systembtn1.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu1.fadeIn("slow");
			}, 200);
		});
		lr_systembtn1.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu1.fadeOut("slow");
		});

		var lr_systembtn2 = $("#lr_systembtn2");
		var lr_menu2 = $("#lr_menu2");
		lr_systembtn2.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu2.fadeIn("slow");
			}, 200);
		});
		lr_systembtn2.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu2.fadeOut("slow");
		});

		var lr_systembtn3 = $("#lr_systembtn3");
		var lr_menu3 = $("#lr_menu3");
		lr_systembtn3.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu3.fadeIn("slow");
			}, 200);
		});
		lr_systembtn3.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu3.fadeOut("slow");
		});

		var lr_systembtn4 = $("#lr_systembtn4");
		var lr_menu4 = $("#lr_menu4");
		lr_systembtn4.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu4.fadeIn("slow");
			}, 200);
		});
		lr_systembtn4.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu4.fadeOut("slow");
		});

		var lr_systembtn5 = $("#lr_systembtn5");
		var lr_menu5 = $("#lr_menu5");
		lr_systembtn5.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu5.fadeIn("slow");
			}, 200);
		});
		lr_systembtn5.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu5.fadeOut("slow");
		});

		var lr_systembtn6 = $("#lr_systembtn6");
		var lr_menu6 = $("#lr_menu6");
		lr_systembtn6.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu6.fadeIn("slow");
			}, 200);
		});
		lr_systembtn6.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu6.fadeOut("slow");
		});

		var lr_systembtn7 = $("#lr_systembtn7");
		var lr_menu7 = $("#lr_menu7");
		lr_systembtn7.mouseenter(function() {
			t_delay = setTimeout(function() {
				lr_menu7.fadeIn("slow");
			}, 200);
		});
		lr_systembtn7.mouseleave(function() {
			clearTimeout(t_delay);
			lr_menu7.fadeOut("slow");
		});
	});
</script>
<style>
dl,dt,dd {
	padding: 0px;
	margin: 0px;
}

#lr_systembox {
	height: 73px;
	margin-left: 65px;
	margin-top: 40px;
	position: relative;
	width: 177px;
	z-index: 10;
	float: left;
}

.lr_systembtn {
	line-height: 33px;
	position: absolute;
}

.lr_systembtn .lr_abtn {
	width: 100%;
	height: 35px;
	display: block;
	font-size: 15px;
	font-weight: bold;
	color: #666666;
	background-image: url(lr_images/btn_system.png);
	background-repeat: no-repeat;
	background-position: left top;
}

.lr_systembtn .lr_abtn:hover {
	color: #333333;
	background-position: left bottom;
}

.lr_systembtn .lr_abtn span {
	padding-left: 28px;
}

.lr_menu {
	width: 184px;
	min-height: 75px;
	padding: 8px 6px 8px 6px;
	background-color: #ffffff;
	border: #ACACAC solid 1px;
	filter: alpha(opacity = 90);
	opacity: 0.90;
	position: absolute;
	top: -10px;
	right: -10px;
	z-index: 15;
	display: none;
}

.lr_menu dl {
	width: 100%;
	display: block;
	overflow: hidden;
}

.lr_menu a {
	width: 100%;
	display: block;
	color: #666666;
	border-bottom: #ACACAC dashed 1px;
	height: 30px;
	line-height: 30px;
	font-size: 14px;
}

.lr_menu a:hover {
	background-color: #E2E2E2;
	color: #333333;
	text-decoration: none;
}

.lr_menu dt {
	
}

.lr_menu dt a {
	font-weight: bold;
	text-indent: 14px;
}

.lr_menu dd a {
	text-indent: 24px;
	background-position: 16px center;
}

#main {
	background: url(<%=path%>/common/images/mainbg.png) no-repeat bottom
		left;
	margin-top: 18px;
}

.indexInput {
	background: url(<%=path%>/common/images/input.png) no-repeat;
	width: 220px;
	height: 22px;
	border: 0px;
	text-indent: 4px;
	line-height: 22px;
}

#main ul {
	clear: both;
}

#main ul li {
	float: left;
	text-indent: -9999px;
	margin: 35px;
}

a.mainShop:link,a.mainShop:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat left top;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainShop:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat left -73px;
	width: 177px;
	height: 73px;
}

a.mainStatistics:link,a.mainStatistics:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px -146px;
	height: 73px;
	width: 177px;
	display: block;
}

a.mainStatistics:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px -219px;
	width: 177px;
	height: 73px;
}

a.mainConference:link,a.mainConference:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat left -292px;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainConference:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat left -365px;
	width: 177px;
	height: 73px;
}

a.mainPurchase:link,a.mainPurchase:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px top;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainPurchase:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px -73px;
	width: 177px;
	height: 73px;
}

a.mainSettlement:link,a.mainPurchase:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px -146px;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainSettlement:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px -219px;
	width: 177px;
	height: 73px;
}

a.mainFeast:link,a.mainFeast:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px 0;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainFeast:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px -73px;
	width: 177px;
	height: 73px;
}

a.mainUserCenter:link,a.mainUserCenter:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -534px top;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainUserCenter:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -534px -73px;
	width: 177px;
	height: 73px;
}

a.mainComm:link,a.mainComm:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat 0px -146px;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainComm:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat 0px -219px;
	width: 177px;
	height: 73px;
}

a.mainActivity:link,a.mainActivity:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px -292px;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainActivity:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -354px -365px;
	width: 177px;
	height: 73px;
}

a.mainActivity:link,a.mainActivity:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px -146px;
	width: 177px;
	height: 73px;
	display: block;
}

a.mainActivity:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -177px -219px;
	width: 177px;
	height: 73px;
}

a.mainPassword:link,a.mainPassword:visited {
	background: url(<%=path%>/common/images/pic.png) no-repeat -531px -146px;
	width: 180px;
	height: 73px;
	display: block;
}

a.mainPassword:hover {
	background: url(<%=path%>/common/images/pic.png) no-repeat -531px -219px;
	width: 180px;
	height: 73px;
}
</style>
</head>
<body>
	<div id="main" style="width: 800px; min-height: 500px;">
		<div id="lr_systembox">
			 </div>
			 </div>
</body>
</html>
