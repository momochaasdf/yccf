package com.deying.util.tag;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

import com.opensymphony.xwork2.util.ValueStack;

public class TextCutTag extends ComponentTagSupport {

	private static final long serialVersionUID = 1L;

	private String value;

	private String remainNum = "50";

	private String symbol = "...";

	private boolean cutPattern = false;

	private boolean escape = false;

	public void setCutPattern(boolean cutPattern) {
		this.cutPattern = cutPattern;
	}

	public void setEscape(boolean escape) {
		this.escape = escape;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setRemainNum(String remainNum) {
		this.remainNum = remainNum;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req,
			HttpServletResponse res) {
		return new TextCut(stack);
	}
	@Override
	protected void populateParams() {
		super.populateParams();
		TextCut textCut = (TextCut) component;
		textCut.setSymbol(symbol);
		textCut.setValue(value);
		textCut.setRemainNum(remainNum);
		textCut.setEscape(escape);
		textCut.setCutPattern(cutPattern);
	}

}
