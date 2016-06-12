package com.deying.util.tag;

import com.opensymphony.xwork2.util.ValueStack;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.components.Component;
import org.apache.struts2.views.jsp.ComponentTagSupport;

public class PageTag extends ComponentTagSupport {
	private static final long serialVersionUID = 1L;
	private String	currentPage;	
	private String	totalPage;		
	private String	url;	
	private String	cssClass;		
	private String	showPageNumber; 
									
	private String	type;
	
	private String	firstPage;
	private String	endPage;
	private String	prePage;
	private String	nextPage;
	
	private String	index;
	private String	total;
	
	private String	id;
	
	public void setCurrentPage(String currentPage)
	{
		this.currentPage = currentPage;
	}
	
	public void setTotalPage(String totalPage)
	{
		this.totalPage = totalPage;
	}
	
	public void setUrl(String url)
	{
		this.url = url;
	}
	
	public void setCssClass(String cssClass)
	{
		this.cssClass = cssClass;
	}
	
	public void setShowPageNumber(String showPageNumber)
	{
		this.showPageNumber = showPageNumber;
	}
	
	public void setType(String type)
	{
		this.type = type;
	}
	
	public void setFirstPage(String firstPage)
	{
		this.firstPage = firstPage;
	}
	
	public void setEndPage(String endPage)
	{
		this.endPage = endPage;
	}
	
	public void setPrePage(String prePage)
	{
		this.prePage = prePage;
	}
	
	public void setNextPage(String nextPage)
	{
		this.nextPage = nextPage;
	}
	
	public void setIndex(String index)
	{
		this.index = index;
	}
	
	public void setTotal(String total)
	{
		this.total = total;
	}
	
	public void setId(String id)
	{
		this.id = id;
	}
	
	@Override
	public Component getBean(ValueStack arg0, HttpServletRequest arg1, HttpServletResponse arg2)
	{
		return new Page(arg0); 
	}
	
	protected void populateParams()
	{
		super.populateParams();
		
		Page pages = (Page) component;
		pages.setCssClass(cssClass);
		pages.setCurrentPage(currentPage);
		pages.setShowPageNumber(showPageNumber);
		pages.setTotalPage(totalPage);
		pages.setUrl(url);
		pages.setFirstPage(firstPage);
		pages.setEndPage(endPage);
		pages.setNextPage(nextPage);
		pages.setType(type);
		pages.setPrePage(prePage);
		pages.setIndex(index);
		pages.setTotal(total);
		pages.setId(id);
	}
}
