package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class ShowEnumTag extends ComponentTagSupport{

	private static final long serialVersionUID = 1L;
	
	private String type;
	
	private String value;
	
	private String clazz;
	
	private String pkg;

	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req,
			HttpServletResponse res) {
		return new ShowEnum(stack);
	}
	
	protected void populateParams() {
		super.populateParams();
		ShowEnum showEnum = (ShowEnum) component;
		showEnum.setType(type);
		showEnum.setValue(value);
		showEnum.setClazz(clazz);
		if(StringUtils.isNotBlank(pkg))
			showEnum.setPkg(pkg);
	}
	

	public void setType(String type) {
		this.type = type;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public void setPkg(String pkg) {
		this.pkg = pkg;
	}
	
	

}
