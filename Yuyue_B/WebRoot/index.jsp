<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.deying.util.core.com.framework.common.tools.Constants"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="z" uri="/z-tags"%>
<% 
	if (request.getSession().getAttribute(Constants.USER_KEY) == null) {
		response.sendRedirect(request.getContextPath() + "/cooperation_loadCooperationShop.action"); 
	} else {
		response.sendRedirect(request.getContextPath() + "/loginSuccess.jsp"); 
	}
%>
