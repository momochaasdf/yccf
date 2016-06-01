/**
 * com.frameword.struts2.views.jsp.DictTag.java
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

import com.deying.core.util.Dict;
import com.opensymphony.xwork2.util.ValueStack;

public class DictTag extends ComponentTagSupport {

	private static final long serialVersionUID = 1L;
	protected String type;
	protected String code;
	protected String language;
	
	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
		return new Dict(stack, req, res);
	}

	@Override
	protected void populateParams() {
		super.populateParams();
		Dict dict = (Dict) this.component;
		dict.setType(type);
		dict.setCode(code);
		dict.setLanguage(language == null ? "zh_CN" : language);
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}
