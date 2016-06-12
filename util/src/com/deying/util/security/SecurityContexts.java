package com.deying.util.security;

import java.io.Serializable;

/**
 * @author wangxj
 * Apr 7, 2013
 * 
 */
public class SecurityContexts {
	
	private static final ThreadLocal<SecurityContext<? extends Serializable>> CONTEXT = new ThreadLocal<SecurityContext<? extends Serializable>>();

	public static SecurityContext<? extends Serializable> getCurSecurityContext() {
		return CONTEXT.get();
	}
	
	public static void setCurSecurityContext(SecurityContext<? extends Serializable> context) {
		CONTEXT.set(context);
	}
	
	public static void resetSecurityContext() {
		CONTEXT.set(null);
	}
}
