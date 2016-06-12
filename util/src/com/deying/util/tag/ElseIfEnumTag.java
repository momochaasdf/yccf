package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class ElseIfEnumTag extends ComponentTagSupport {

    private static final long serialVersionUID = 4448870162549923833L;

    private String test;
    
    private String clazz;
    
    private String value;
    
	private String pkg;

    public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
        return new ElseIfEnum(stack);
    }

    protected void populateParams() {
    	ElseIfEnum elseIfEnum = (ElseIfEnum)component;
    	elseIfEnum.setTest(test);
    	elseIfEnum.setClazz(clazz);
    	elseIfEnum.setValue(value);
    	elseIfEnum.setPkg(pkg);
    }

    public void setTest(String test) {
        this.test = test;
    }

	public void setClazz(String clazz) {
		this.clazz = clazz;
	}

	public void setPkg(String pkg) {
		this.pkg = pkg;
	}

	public void setValue(String value) {
		this.value = value;
	}
    
    
}
