package com.deying.util.core.com.framework.struts2.components;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.UIBean;
import org.apache.struts2.views.annotations.StrutsTag;
import org.apache.struts2.views.annotations.StrutsTagAttribute;

import com.opensymphony.xwork2.util.ValueStack;

@StrutsTag(name = "pagination", tldTagClass = "com.util.view.jsp.ui.PaginationTag", description = "自定义分页标签")
public class Pagination extends UIBean {

	final public static String TEMPLATE = "pagination";
	public static final int DEFAULT_COUNT = 10;
	
	protected String type="0";//分页的种类
	protected Integer totalCount = 0;//总记录数
	protected Integer pageSize = 10;//每页记录数
	protected Integer start = 0;//开始记录数
	protected String url;//链接地址


	public Pagination(ValueStack stack, HttpServletRequest request, HttpServletResponse response) {
		super(stack, request, response);
	}


	@Override
	protected String getDefaultTemplate() {
		return TEMPLATE;
	}
	

	@Override
	protected void evaluateExtraParams() {
		super.evaluateExtraParams();
		addParameter("start", findValue("start", Integer.class));
		this.start = (Integer) findValue("start", Integer.class);
		this.start = this.start == null ? 0 : this.start;
		this.start = this.start < 0 ? 0 : this.start;
		this.start = this.start > this.totalCount ? this.totalCount - this.totalCount % this.pageSize : this.start;
	}

	@StrutsTagAttribute(description="当前页数", defaultValue="0", type="Integer")
	public void setStart(Integer start) {
		this.start = start;
	}

	@StrutsTagAttribute(description="合计记录数", defaultValue="1", type="Integer")
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	@StrutsTagAttribute(description="每页记录数", defaultValue="20", type="Integer")
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	@StrutsTagAttribute(description="分页的种类", defaultValue="0", type="String")
	public void setType(String type) {
		this.type = type;
	}

	@StrutsTagAttribute(description="链接地址", type="String")
	public void setUrl(String url) {
		this.url = url;
	}


	/**
	 * @return the totalCount
	 */
	public Integer getTotalCount() {
		return totalCount;
	}

	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @return the start
	 */
	public Integer getStart() {
		return start;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

		
}
