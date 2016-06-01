package com.deying.util.Filter;

import java.io.IOException;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.UserContext;

/**
 * @author wangxj
 * 
 */
public class AuthorityFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		String requestUrl = hreq.getServletPath();
		List<String> urls = FileConstants.ACCESSIBLE_URL;
		boolean isIntercept = true;
		for(int i = 0; i < urls.size(); i++) {
			String url = urls.get(i).replace(".", "\\.")
				.replace("*", ".+") + "((\\.do)|(\\.action))?";
			if(requestUrl.matches(url)) {
				isIntercept = false;
				break;
			}
		}
		if(isIntercept) {
			boolean isLogin = false;
			HttpSession session = hreq.getSession(false);
			if(session != null) {
				UserContext uc = (UserContext)session.getAttribute(Constants.USER_KEY);
				if(uc != null) 
					isLogin = true;
			}
			if(!isLogin) {
				String basePath = hreq.getContextPath();
				resp.sendRedirect(basePath + "/cooperation_loadCooperationShop.action");
			}else
				chain.doFilter(request, response);
		}else
			chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
	


}
