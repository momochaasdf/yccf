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
public class ElseEnumTag extends ComponentTagSupport {

    private static final long serialVersionUID = 4448870162549923833L;

    public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
        return new ElseEnum(stack);
    }

}
