package com.deying.util.tag;

import java.io.IOException;
import java.io.Writer;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.struts2.components.Component;
import com.opensymphony.xwork2.util.ValueStack;

public class Page extends Component {
	private String currentPage;
	private String totalPage;
	private String url;
	private String cssClass;
	private String showPageNumber;

	private String type;

	private String firstPage;
	private String endPage;
	private String prePage;
	private String nextPage;

	private String index;
	private String total;
	
	private String id;

	
	
	
	public void setId(String id)
	{
		this.id = id;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}

	public String getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(String totalPage) {
		this.totalPage = totalPage;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}

	public String getShowPageNumber() {
		return showPageNumber;
	}

	public void setShowPageNumber(String showPageNumber) {
		this.showPageNumber = showPageNumber;
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setFirstPage(String firstPage) {
		this.firstPage = firstPage;
	}

	public void setEndPage(String endPage) {
		this.endPage = endPage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

	public void setNextPage(String nextPage) {
		this.nextPage = nextPage;
	}

	public Page(ValueStack arg0) {
		super(arg0);
	}

	public void setIndex(String index) {
		this.index = index;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	@Override
	public boolean start(Writer writer) {
		boolean result = super.start(writer);
		if (showPageNumber == null)
			showPageNumber = "5";
		if (cssClass == null)
			cssClass = "pagination";
		if (type == null)
			type = "multi";
		if (firstPage == null)
			firstPage = "第一页";
		if (endPage == null)
			endPage = "最后页";
		if (prePage == null)
			prePage = "上一页";
		if (nextPage == null)
			nextPage = "下一页";
		if (index == null)
			index = "1";
		if (currentPage == null)
			currentPage = "1";
		if(totalPage == null)
			totalPage = "1";
		if(total == null) 
			total = "1"	;

		totalPage = parse(totalPage);
		currentPage = parse(currentPage);
		index = parse(index);
		total = parse(total);
		cssClass = parse(cssClass);
		showPageNumber = parse(showPageNumber);
		endPage = parse(endPage);
		firstPage = parse(firstPage);
		type = parse(type);
		prePage = parse(prePage);
		nextPage = parse(nextPage);
		if(id == null) {
			id = "";
		}

		return result;
	}
	
	private String parse(String value) {

		String actualValue = null;

		if (value == null) {
			value = "top";
		}

		if (altSyntax()) {
			if (value.startsWith("%{") && value.endsWith("}")) {
				value = value.substring(2, value.length() - 1);
			}
		}

		actualValue = (String) getStack().findValue(value, String.class);
		if(actualValue == null) {
			actualValue = value;
		}
		return actualValue;
	}

	@Override
	public boolean end(Writer writer, String body) {
		try {
			StringBuilder outputStringBuilder = new StringBuilder();
			StringBuilder paramStringBuilder = new StringBuilder();
			boolean isValid = true;

			if (isValid) {
				Set<String> keys = getParameters().keySet();

				for (String key : keys) {
					paramStringBuilder.append("&");
					paramStringBuilder.append(key);
					paramStringBuilder.append("=");
					paramStringBuilder.append(java.net.URLEncoder.encode(getParameters().get(key).toString(),"utf-8"));
				}
			}

			if (isValid) {
				Integer currentPageInt = Integer.valueOf(currentPage);
				Integer totalPageInt = Integer.valueOf(totalPage);
				Integer totalInt = Integer.valueOf(total);
				Integer showPageNumberInt = Integer.valueOf(showPageNumber);
				Integer indexInt = Integer.valueOf(index);
				String current = "";
				String param = paramStringBuilder.toString();

				if (type.equals("multi")) {

					if (totalPageInt != 0) {

						if (totalPageInt <= showPageNumberInt) {
							if (currentPage.equals(totalPage)) {
								if ("1".equals(totalPage)) {
								} else {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									outputStringBuilder.append("<li>");
									outputStringBuilder.append("<a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=1" + param);
									outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
									outputStringBuilder.append("'>" + prePage + "</a></li>");
									for (int i = 1; i <= totalPageInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("</ol>");
								}
							} else {
								if ("1".equals(currentPage)) { 
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									for (int i = 1; i <= totalPageInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								} else {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									outputStringBuilder.append("<li>");
									outputStringBuilder.append("<a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=1" + param);
									outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
									outputStringBuilder.append("'>" + prePage + "</a></li>");
									for (int i = 1; i <= totalPageInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								}
							}
						} else { 
							if (currentPage.equals(totalPage)) { 
								outputStringBuilder.append("<ol class='" + cssClass + "'>");
								outputStringBuilder.append("<li>");
								outputStringBuilder.append("<a href='");
								outputStringBuilder.append(url);
								outputStringBuilder.append("?" + id + "currentPage=1" + param);
								outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
								outputStringBuilder.append(url);
								outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
								outputStringBuilder.append("'>" + prePage + "</a></li>");
								for (int i = totalPageInt - showPageNumberInt; i <= totalPageInt; i++) {
									current = "";
									if (i == currentPageInt) {
										current = " class='current' ";
									}
									outputStringBuilder.append("<li" + current + "><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + i + param);
									outputStringBuilder.append("'>" + i + "</a></li>");
								}
								outputStringBuilder.append("</ol>");
							} else {
								if (currentPage.equals("1")) {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									for (int i = 1; i <= showPageNumberInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								} else if ((currentPageInt - showPageNumberInt / 2) >= 1 && (currentPageInt + showPageNumberInt / 2) <= totalPageInt) {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									outputStringBuilder.append("<li>");
									outputStringBuilder.append("<a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=1" + param);
									outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
									outputStringBuilder.append("'>" + prePage + "</a></li>");
									for (int i = currentPageInt - showPageNumberInt / 2; i <= (currentPageInt + showPageNumberInt / 2); i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								} else if ((currentPageInt - showPageNumberInt / 2) < 1) {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									outputStringBuilder.append("<li>");
									outputStringBuilder.append("<a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=1" + param);
									outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
									outputStringBuilder.append("'>" + prePage + "</a></li>");
									for (int i = 1; i <= showPageNumberInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								} else {
									outputStringBuilder.append("<ol class='" + cssClass + "'>");
									outputStringBuilder.append("<li>");
									outputStringBuilder.append("<a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=1" + param);
									outputStringBuilder.append("'>" + firstPage + "</a></li><li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt - 1) + param);
									outputStringBuilder.append("'>" + prePage + "</a></li>");
									for (int i = totalPageInt - showPageNumberInt; i <= totalPageInt; i++) {
										current = "";
										if (i == currentPageInt) {
											current = " class='current' ";
										}
										outputStringBuilder.append("<li" + current + "><a href='");
										outputStringBuilder.append(url);
										outputStringBuilder.append("?" + id + "currentPage=" + i + param);
										outputStringBuilder.append("'>" + i + "</a></li>");
									}
									outputStringBuilder.append("<li><a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + (currentPageInt + 1) + param);
									outputStringBuilder.append("'>" + nextPage + "</a></li><li> <a href='");
									outputStringBuilder.append(url);
									outputStringBuilder.append("?" + id + "currentPage=" + totalPage + param);
									outputStringBuilder.append("'>" + endPage + "</a></li></ol>");
								}
							}
						}
					}
				} else if (type.equals("single")) {
					
					int preIndex = 1;
					int nextIndex = 1;
					
					if(indexInt == 1 && indexInt == totalInt) {
						preIndex = 1;
						nextIndex = 1;
					}
					if(indexInt == 1) {
						if(totalInt != 1) {
							preIndex = totalInt;
							nextIndex = indexInt + 1;
						} else {
							preIndex = 1;
							nextIndex = 1;
						}
					} else if((indexInt-totalInt) == 0) {
						preIndex = indexInt - 1;
						nextIndex = 1;
					} else {
						preIndex = indexInt - 1;
						nextIndex = indexInt + 1;
					}
					
					outputStringBuilder.append("<ol class='" + cssClass + "'>");
					outputStringBuilder.append("<li>");
					outputStringBuilder.append("<a href='");
					outputStringBuilder.append(url);
					outputStringBuilder.append("?index=" + preIndex + param);
					outputStringBuilder.append("'>" + prePage + "</a></li>");
					outputStringBuilder.append("<li><a href='");
					outputStringBuilder.append(url);
					outputStringBuilder.append("?index=" + nextIndex + param);
					outputStringBuilder.append("'>" + nextPage + "</a></li>");
					outputStringBuilder.append("</ol>");
				}
			}

			writer.write(outputStringBuilder.toString());

		} catch (IOException ex) {
			Logger.getLogger(Page.class.getName()).log(Level.SEVERE, null, ex);
		}
		return super.end(writer, body);
	}

}
