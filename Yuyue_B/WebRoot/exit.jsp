<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.getSession().invalidate();
response.sendRedirect(request.getContextPath() + "/login.jsp"); 
%>