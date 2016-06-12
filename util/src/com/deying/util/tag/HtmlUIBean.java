package com.deying.util.tag;

import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * 
 */
public class HtmlUIBean extends ExtComponent{
	
	protected String cssClass;
	protected String cssStyle;
	protected String disabled;
	protected String id;
	protected String name;
	protected String title;
	
	protected String onblur;
	protected String onchange;
	protected String onclick;
	protected String ondblclick;
	protected String onfocus;
	protected String onkeydown;
	protected String onkeypress;
	protected String onkeyup;
	protected String onmousedown;
	protected String onmousemove;
	protected String onmouseout;
	protected String onmouseover;
	protected String onmouseup;
	protected String onselect;

	
	public HtmlUIBean(ValueStack stack) {
		super(stack);
	}
	
	/**
	 * 生成HTML格式文本
	 * @return
	 */
	protected String generateHtml() {
		StringBuffer sb = new StringBuffer();
		sb.append(" id = '" + id + "' ");
		sb.append(generateHtmlNoID());
		return sb.toString();
	}
	
	/**
	 * 生成HTML格式文本不含Id属性
	 * @return
	 */
	protected String generateHtmlNoID() {
		StringBuffer sb = new StringBuffer();
		appendIfNotNull(sb, "name", name);
		appendIfNotNull(sb, "class", cssClass);
		appendIfNotNull(sb, "style", cssStyle);
		appendIfNotNull(sb, "disabled", disabled);
		appendIfNotNull(sb, "onblur", onblur);
		appendIfNotNull(sb, "onchange", onchange);
		appendIfNotNull(sb, "onclick", onclick);
		appendIfNotNull(sb, "ondblclick", ondblclick);
		appendIfNotNull(sb, "onfocus", onfocus);
		appendIfNotNull(sb, "onkeydown", onkeydown);
		appendIfNotNull(sb, "onkeypress", onkeypress);
		appendIfNotNull(sb, "onkeyup", onkeyup);
		appendIfNotNull(sb, "onmousedown", onmousedown);
		appendIfNotNull(sb, "onmousemove", onmousemove);
		appendIfNotNull(sb, "onmouseout", onmouseout);
		appendIfNotNull(sb, "onmouseover", onmouseover);
		appendIfNotNull(sb, "onmouseup", onmouseup);
		appendIfNotNull(sb, "onselect", onselect);
		return sb.toString();
	}
	
	private StringBuffer appendIfNotNull(StringBuffer sb, String name, String val) {
		if(name != null && val != null)
			sb.append(name + "='" + val + "' ");
		return sb;
	}
	
	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}

	public String getCssStyle() {
		return cssStyle;
	}

	public void setCssStyle(String cssStyle) {
		this.cssStyle = cssStyle == null ? null : cssStyle.replaceAll("'", "\"");
	}

	public String getDisabled() {
		return disabled;
	}

	public void setDisabled(String disabled) {
		this.disabled = disabled;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOnblur() {
		return onblur;
	}

	public void setOnblur(String onblur) {
		this.onblur = onblur;
	}

	public String getOnchange() {
		return onchange;
	}

	public void setOnchange(String onchange) {
		this.onchange = onchange;
	}

	public String getOnclick() {
		return onclick;
	}

	public void setOnclick(String onclick) {
		this.onclick = onclick;
	}

	public String getOndblclick() {
		return ondblclick;
	}

	public void setOndblclick(String ondblclick) {
		this.ondblclick = ondblclick;
	}

	public String getOnfocus() {
		return onfocus;
	}

	public void setOnfocus(String onfocus) {
		this.onfocus = onfocus;
	}

	public String getOnkeydown() {
		return onkeydown;
	}

	public void setOnkeydown(String onkeydown) {
		this.onkeydown = onkeydown;
	}

	public String getOnkeypress() {
		return onkeypress;
	}

	public void setOnkeypress(String onkeypress) {
		this.onkeypress = onkeypress;
	}

	public String getOnkeyup() {
		return onkeyup;
	}

	public void setOnkeyup(String onkeyup) {
		this.onkeyup = onkeyup;
	}

	public String getOnmousedown() {
		return onmousedown;
	}

	public void setOnmousedown(String onmousedown) {
		this.onmousedown = onmousedown;
	}

	public String getOnmousemove() {
		return onmousemove;
	}

	public void setOnmousemove(String onmousemove) {
		this.onmousemove = onmousemove;
	}

	public String getOnmouseout() {
		return onmouseout;
	}

	public void setOnmouseout(String onmouseout) {
		this.onmouseout = onmouseout;
	}

	public String getOnmouseover() {
		return onmouseover;
	}

	public void setOnmouseover(String onmouseover) {
		this.onmouseover = onmouseover;
	}

	public String getOnmouseup() {
		return onmouseup;
	}

	public void setOnmouseup(String onmouseup) {
		this.onmouseup = onmouseup;
	}

	public String getOnselect() {
		return onselect;
	}

	public void setOnselect(String onselect) {
		this.onselect = onselect;
	}

	
	
}
