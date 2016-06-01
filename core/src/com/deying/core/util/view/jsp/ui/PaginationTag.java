
package com.deying.core.util.view.jsp.ui;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ui.AbstractUITag;

import com.deying.util.core.com.framework.struts2.components.Pagination;
import com.opensymphony.xwork2.util.ValueStack;

public class PaginationTag extends AbstractUITag {

	private static final long serialVersionUID = 1L;
	public static final int DEFAULT_COUNT = 10;
	
	protected String type;//分页的种类
	protected Integer totalCount = 0;//总记录数
	protected Integer pageSize = 10;//每页记录数
	protected Integer start = 0;//开始记录数
	protected String url;//链接地址

	@Override
	public Component getBean(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
		return new Pagination(stack, req, res);
	}


	@Override
	protected void populateParams() {
		super.populateParams();
		Pagination p = (Pagination) this.component;
		p.setTotalCount(this.totalCount);
		p.setPageSize(this.pageSize);
		p.setUrl(this.url);
		p.setType(this.type);
	}
	
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}


	/**
	 * @param totalCount the totalCount to set
	 */
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}


	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}


	/**
	 * @param start the start to set
	 */
	public void setStart(Integer start) {
		this.start = start;
	}


	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

}
