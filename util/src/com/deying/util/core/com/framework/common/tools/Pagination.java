package com.deying.util.core.com.framework.common.tools;

public class Pagination<T> extends BasePage<T> implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private int pageNo;
	
	public Pagination() {
		this.start = this.pageNo > 0 ? this.pageNo * pageSize : 0;
		this.start = this.pageNo * pageSize >= this.totalCount ? 0 : this.start;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

}
