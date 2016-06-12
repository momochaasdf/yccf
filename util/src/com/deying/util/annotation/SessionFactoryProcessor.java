package com.deying.util.annotation;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.stereotype.Component;

import com.deying.util.comman.GenericDaoImpl;

/**
 * @author wangxj
 * Feb 25, 2013
 * 
 */
@Component
public class SessionFactoryProcessor implements BeanPostProcessor{

	@Resource(name = "sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public Object postProcessAfterInitialization(Object bean, String beanName)
			throws BeansException {
		return bean;
	}

	@Override
	public Object postProcessBeforeInitialization(Object bean, String beanName)
			throws BeansException {
		if(bean instanceof AnnDaoImpl<?> && sessionFactory != null) {
			((AnnDaoImpl<?>)bean).setSessionFactory(sessionFactory);
		}else if(bean instanceof AnnCommonDao && sessionFactory != null){
			((AnnCommonDao)bean).setSessionFactory(sessionFactory);
		}else if(bean instanceof GenericDaoImpl && sessionFactory != null ){
		    	((GenericDaoImpl<?,?>)bean).setSessionFactory(sessionFactory);
		}
		return bean;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
}
