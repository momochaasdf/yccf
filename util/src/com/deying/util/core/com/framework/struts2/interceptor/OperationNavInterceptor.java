package com.deying.util.core.com.framework.struts2.interceptor;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class OperationNavInterceptor {
	private Log log = LogFactory.getLog(OperationNavInterceptor.class);
	private long start;
	//查询处理
	@Pointcut("execution(* com.deying.core.action..*Action.list(..))")
	public void listMethod(){};
	
	//新增初始化处理
	@Pointcut("execution(* com.deying.core.action..*Action.add(..))")
	public void addMethod(){};
	//新增确认处理
	@Pointcut("execution(* com.deying.core.action..*Action.save(..))")
	public void saveMethod(){};
	
	//编辑对象加载
	@Pointcut("execution(* com.deying.core.action..*Action.edit(..))")
	public void editMethod(){};
	//编辑对象保存
	@Pointcut("execution(* com.deying.core.action..*Action.upd(..))")
	public void updMethod(){};

	//删除对象
	@Pointcut("execution(* com.deying.core.action..*Action.del(..))")
	public void delMethod(){};
	
	@Around("listMethod() || addMethod() || saveMethod() || editMethod() ||updMethod() || delMethod()")
	public Object doCRUD(ProceedingJoinPoint p) throws Throwable {
		this.start = System.currentTimeMillis();
		System.out.println("正在处理方法......" + p.getSignature().getDeclaringTypeName());
		try {
			return p.proceed();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	@After("listMethod() || addMethod() || saveMethod() || editMethod() ||updMethod() || delMethod()")
	public void doAfter() {
		System.out.println("处理结束，用时(ms)：" + (System.currentTimeMillis() - this.start));
		this.log.debug("处理结束，用时(ms)：" + (System.currentTimeMillis() - this.start));
	}
	//---------------------------------------------------------------------------------------------------
}
