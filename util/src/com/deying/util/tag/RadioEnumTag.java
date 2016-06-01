package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.components.Component;
import com.opensymphony.xwork2.util.ValueStack;

public class RadioEnumTag extends AbstractHtmlTag {

    private static final long serialVersionUID = -6497403399521333624L;
    
    private String dataType;		//生成radio中value的类型，两种选择 1.NAME 例：OPEN(0, "开启") 指的是OPEN。 2.VALUE 例：OPEN(0, "开启") 指的是0。默认dataType为 NAME
	private String value;			//枚举类 PersistentEnum
	private String selectedValue;	//默认选中值
	private Integer begin;
	private Integer end;
	private String exclude;
	private String include;
	private String pkg;
	private String labelClass;
	private String labelStyle;

    public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
        return new RadioEnum(stack);
    }
    
    protected void populateParams() {
		super.populateParams();
		RadioEnum radio = (RadioEnum) component;
		radio.setDataType(dataType);
		radio.setValue(value);
		radio.setSelectedValue(selectedValue);
		radio.setBegin(begin);
		radio.setEnd(end);
		radio.setExclude(exclude);
		radio.setInclude(include);
		radio.setPkg(pkg);
		radio.setLabelClass(labelClass);
		radio.setLabelStyle(labelStyle);
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

	public void setLabelClass(String labelClass) {
		this.labelClass = labelClass;
	}

	public void setLabelStyle(String labelStyle) {
		this.labelStyle = labelStyle;
	}
	
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	
	public void setInclude(String include) {
		this.include = include;
	}
	
}
