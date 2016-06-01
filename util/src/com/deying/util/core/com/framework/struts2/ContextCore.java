/**
 * com.framework.struts2.ContextCore.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		2010-10-12		新建
 */
package com.deying.util.core.com.framework.struts2;

import javax.servlet.http.Cookie;

public interface ContextCore {

	/**
	 * 从request中Attribute取得保存对象
	 * @param attrKey
	 * @return
	 */
	public Object getRequestAttr(String attrKey) ;

	/**
	 * 向request的Attribute保存数据
	 * @param attrKey
	 * @param attrValue
	 */
	public void setRequestAttr(String attrKey, Object attrValue) ;

	/**
	 * 取得Session中对应Key值保存数据
	 * @param attrKey
	 * @return
	 */
	public Object getSessionAttr(String attrKey) ;

	/**
	 * 向session中保存数据
	 * @param attrKey
	 * @param attrValue
	 */
	public void setSessionAttr(String attrKey, Object attrValue) ;

	/**
	 * 移除Session中保存的数据
	 * @param attrKey
	 */
	public void removeSessionAtrr(String attrKey) ;

	/**
	 * 保存Cookie
	 * @param cookie
	 */
	public void addCookie(Cookie cookie) ;

	/**
	 * 取得Cookie
	 * @param name
	 * @return
	 */
	public Cookie getCookie(String name) ;

	/**
	 * 获取应用下目录真实路径
	 * @param path
	 * @return
	 */
	public String getAppRealPath(String path) ;

	/**
	 * 取得应用程序根目录路径
	 * @return
	 */
	public String getRootPath() ;
}
