package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.components.Component;
import com.opensymphony.xwork2.util.ValueStack;

public class SelectEnumTag extends AbstractHtmlTag {

    private static final long serialVersionUID = -6497403399521333624L;
    
    private String dataType;		//生成radio中value的类型，两种选择 1.NAME 例：OPEN(0, "开启") 指的是OPEN。 2.VALUE 例：OPEN(0, "开启") 指的是0。默认dataType为 NAME
	private String value;			//枚举类 PersistentEnum
	private String selectedValue;	//默认选中值
	private String headerKey;	
	private String headerValue;	
	private Integer begin;
	private Integer end;
	private String exclude;
	private String include;
	private String pkg;

    public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
        return new SelectEnum(stack);
    }
    
    protected void populateParams() {
		super.populateParams();
		SelectEnum select = (SelectEnum) component;
		select.setDataType(dataType);
		select.setValue(value);
		select.setSelectedValue(selectedValue);
		select.setHeaderKey(headerKey);
		select.setHeaderValue(headerValue);
		select.setBegin(begin);
		select.setEnd(end);
		select.setExclude(exclude);
		select.setInclude(include);
		select.setPkg(pkg);
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setSelectedValue(String selectedValue) {
		this.selectedValue = selectedValue;
	}

	public void setBegin(Integer begin) {
		this.begin = begin;
	}

	public void setEnd(Integer end) {
		this.end = end;
	}

	public void setExclude(String exclude) {
		this.exclude = exclude;
	}
    
	public void setPkg(String pkg) {
		this.pkg = pkg;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public void setHeaderKey(String headerKey) {
		this.headerKey = headerKey;
	}

	public void setHeaderValue(String headerValue) {
		this.headerValue = headerValue;
	}
	
	public void setInclude(String include) {
		this.include = include;
	}
	
}
