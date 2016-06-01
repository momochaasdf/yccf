package com.deying.util.bo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author wangxj
 * Mar 5, 2013
 * 
 */
public class Tree implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	private String Text;
	
	private String state = "closed";
	
	private String iconCls = "icon-add";
	
	private Boolean checked = false;
	
	private Map<String, Object> attributes;
	
	private List<Tree> children;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return Text;
	}

	public void setText(String text) {
		Text = text;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public Map<String, Object> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

	public List<Tree> getChildren() {
		return children;
	}

	public void setChildren(List<Tree> children) {
		this.children = children;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	} 
	
	

}
