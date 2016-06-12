package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * Mar 9, 2013
 * 
 */
public class IteratorEnumTag extends ComponentTagSupport{

	private static final long serialVersionUID = 1L;
	
	private String begin;
	
	private String end;
	
	private String var;
	
	private String value;
	
	private String status;
	
	private String step;
	
	private String exclude;
	
	private String include;
	
	private String pkg;

	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req,
			HttpServletResponse res) {
		return new IteratorEnum(stack);
	}
	
	protected void populateParams() {
		super.populateParams();
		IteratorEnum i = (IteratorEnum) component;
		i.setBegin(begin);
		i.setEnd(end);
		i.setVar(var);
		i.setValue(value);
		i.setStatus(status);
		i.setStep(step);
		i.setExclude(exclude);
		i.setInclude(include);
		if(StringUtils.isNotBlank(pkg))
			i.setPkg(pkg);
	}
	
	public int doEndTag() throws JspException {
        component = null;
        return EVAL_PAGE;
    }

    public int doAfterBody() throws JspException {
        boolean again = component.end(pageContext.getOut(), getBody());

        if (again) {
            return EVAL_BODY_AGAIN;
        } else {
            if (bodyContent != null) {
                try {
                    bodyContent.writeOut(bodyContent.getEnclosingWriter());
                } catch (Exception e) {
                    throw new JspException(e.getMessage());
                }
            }
            return SKIP_BODY;
        }
    }

	public void setBegin(String begin) {
		this.begin = begin;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public void setVar(String var) {
		this.var = var;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setPkg(String pkg) {
		this.pkg = pkg;
	}

	public void setStep(String step) {
		this.step = step;
	}

	public void setExclude(String exclude) {
		this.exclude = exclude;
	}

	public void setInclude(String include) {
		this.include = include;
	}
	

}
