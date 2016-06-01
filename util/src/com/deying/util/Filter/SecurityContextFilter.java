package com.deying.util.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.deying.util.bo.User;
import com.deying.util.http.HttpUtil;
import com.deying.util.security.SecurityContext;
import com.deying.util.security.SecurityContexts;
import com.deying.util.security.SecurityUtils;

/**
 * @author wangxj
 * Apr 8, 2013
 * 
 */
public class SecurityContextFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		SecurityContexts.setCurSecurityContext(getSecurityContext(req));
		try{
			chain.doFilter(request, response);
		}finally{
			SecurityContexts.resetSecurityContext();
		}
		
	}
	
	private SecurityContext<User> getSecurityContext(HttpServletRequest request) {
		User user = SecurityUtils.getUser(request.getSession(false));
		SecurityContext<User> context = new SecurityContext<User>();
		if(user != null) {
			context.setSecurity(user);
		}
		context.setIpAddress(HttpUtil.getIpAddr(request));
		context.setSessionId(request.getSession(true).getId());
		return context;
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
