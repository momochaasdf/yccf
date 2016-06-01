/**
 * com.frameword.struts2.views.jsp.SignInTag.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		Jan 22, 2010		新建
 */
package com.deying.core.util.view.jsp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.deying.core.util.Nav;
import com.opensymphony.xwork2.util.ValueStack;

public class NavTag extends ComponentTagSupport {

	private static final long serialVersionUID = 1L;
	
	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
		return new Nav(stack, req, res);
	}

	@Override
	protected void populateParams() {
		super.populateParams();
	}

}
