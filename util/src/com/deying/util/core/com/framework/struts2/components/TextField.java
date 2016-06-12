package com.deying.util.core.com.framework.struts2.components;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.UIBean;
import org.apache.struts2.views.annotations.StrutsTag;

import com.opensymphony.xwork2.util.ValueStack;

@StrutsTag(
	    name="text",
	    tldTagClass="com.frameword.struts2.views.jsp.ui.TextFieldTag",
	    description="Render an HTML input field of type text",
	    allowDynamicAttributes=true)
public class TextField extends UIBean{
	
	final public static String TEMPLATE = "text";
	 
	public TextField(ValueStack stack, HttpServletRequest request,
			HttpServletResponse response) {
		super(stack, request, response);
	}

	protected String getDefaultTemplate() {
		return TEMPLATE;
	}

}
