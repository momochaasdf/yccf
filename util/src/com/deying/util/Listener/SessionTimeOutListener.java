package com.deying.util.Listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * @author wangxj
 * Apr 7, 2013
 * 
 */
public class SessionTimeOutListener implements HttpSessionListener{

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
		// do nothing
	}

	public void sessionDestroyed(HttpSessionEvent arg0) {
		/*HttpSession session = arg0.getSession();
		if(session == null) return;
		SessionPool.remove(session.getId());*/
	}
}
