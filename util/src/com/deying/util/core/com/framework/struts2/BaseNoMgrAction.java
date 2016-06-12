/**
 * com.framework.struts2.BaseNoMgrAction.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		2010-10-12		新建
 */
package com.deying.util.core.com.framework.struts2;

import org.springframework.beans.factory.annotation.Autowired;

public class BaseNoMgrAction extends BaseAction {


	private static final long serialVersionUID = 1L;
	@Autowired
	private ContextCore ctx;
	
	public ContextCore getCtx() {
		return ctx;
	}
	public void setCtx(ContextCore ctx) {
		this.ctx = ctx;
	}
}
