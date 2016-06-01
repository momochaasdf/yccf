<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="Pragma" CONTENT="no-cache" />
<meta http-equiv="Cache-Control" CONTENT="no-cache" />
<meta http-equiv="Expires" CONTENT="0" />
<title>404</title>
<style type="text/css">
body .error_page{
    background: none repeat scroll 0 0 #F9FEE8;
    color: #666666;
    font-family: Arial,Helvetica,sans-serif;
    font-size: 14px;
    text-align: center;
}
.error_page {
    margin: auto;
    padding: 50px;
    width: 600px;
}
.error_page h1 {
    margin: 20px 0 0;
}
.error_page p {
    margin: 10px 0;
    padding: 0;
    color: red;
    font-size: 16px;
    font-weight: bold;
}
</style>
</head>

<body>
  <div class="error_page">
    <img alt="Kidmondo_face_sad" src="<%=path%>/common/images/errorPage/face_sad.gif">
    <h1>404 NOT FOUND...</h1>
  </div>
</body>
</html>