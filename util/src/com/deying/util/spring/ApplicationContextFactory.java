package com.deying.util.spring;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * @author wangxj
 * Feb 26, 2013
 * 
 */
@Component
public class ApplicationContextFactory implements ApplicationContextAware {

	private static ApplicationContext context;
	
	@Override
	public void setApplicationContext(ApplicationContext context)
			throws BeansException {
		ApplicationContextFactory.context = context;
	}

	public static ApplicationContext newInstance() {
		return context;
	}

	

}
