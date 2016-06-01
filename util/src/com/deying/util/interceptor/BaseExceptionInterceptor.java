package com.deying.util.interceptor;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.struts2.BaseAction;
import com.deying.util.http.HttpUtil;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * @author wangxj
 * 
 */
public class BaseExceptionInterceptor implements Interceptor {

	private Logger LOG = LoggerFactory.getLogger(BaseExceptionInterceptor.class);
	
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest hreq = ServletActionContext.getRequest();
		String method = null;
		String session = hreq.getSession(true).getId();
		try{
			String actionClass = invocation.getAction().getClass().getSimpleName();
			method = invocation.getProxy().getMethod();
			String actionName = invocation.getProxy().getActionName();
			LOG.info("<==Session <<{}>>.Begin <<{}>> action.Method <<{}>> of class <<{}>>",new String[]{session,actionName,method,actionClass});
			String returnStr = invocation.invoke();
			LOG.info("==>Session <<{}>>.End <<{}>> action.Method <<{}>> of class <<{}>>",new String[]{session,actionName,method,actionClass});
			return returnStr;
		}catch(Exception e) {
			//登录拦截器使用- 登录完链式操作之前的请求，当操作发生异常时跳转的地址。
			//因为此异常为非正常操作引起的(登录以后继续执行上次请求)
			String responsePath = (String)hreq.getAttribute(FileConstants.RESPONSE_PATH);
//			LOG.error(responsePath == null ? "" : "(LoginChain Exception,baleful request.)" + "Session <<" + session + ">>.Action<<" + invocation.getAction().getClass().toString() + ">>. Method<<" + method  + ">>." + e.getMessage(), e);
			if(HttpUtil.isAjaxRequest(hreq)) {
				JSONObject jo = new JSONObject();
				jo.element(BaseAction.ERROR_CODE, "fail");
				invocation.getStack().set("jsonObject", jo);
				return BaseAction.JSON;
			}else {
				if(responsePath != null) {
					//不显示异常页面，直接跳到指定的路径
					invocation.getStack().set(FileConstants.RESPONSE_PATH, responsePath);
					return FileConstants.RESPONSE_PATH;
				}
				else 
					return Action.ERROR;
			}
		}
	}
	
	public void setLogger(String loggerName) {
		if(StringUtils.isNotBlank(loggerName)) 
			LOG = LoggerFactory.getLogger(loggerName);
	}
	
}
