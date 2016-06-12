package com.deying.util.core.com.framework.common.tools;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class BasePage<T>  implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final int DEFAULT_COUNT = 10; //默认每页记录数
	protected int totalCount = 0; //总记录数
	protected int pageSize = 10; //每页记录数
	protected int start = 0;//开始
	//计算得到的
	//[首页][上一页][下一页][末页][x]-> 共计xx页xx记录
	//<< < 3 4 5 6 7 > >> [x]-> 共计xx页xx记录
	//[首页][上一页][下一页][末页]
	private int totalPage = 0;
	
	private List<T> data = new ArrayList<T>();
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	
}
