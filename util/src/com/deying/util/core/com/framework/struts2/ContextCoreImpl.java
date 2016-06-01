/**
 * com.framework.struts2.ContextCoreImpl.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		2010-6-18		新建
 */
package com.deying.util.core.com.framework.struts2;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Component;

@Component
public class ContextCoreImpl implements ContextCore {
	

	/**
	 * 从request中Attribute取得保存对象
	 * @param attrKey
	 * @return
	 */
	public Object getRequestAttr(String attrKey) {
		return ServletActionContext.getRequest().getAttribute(attrKey);
	}
	
	/**
	 * 向request的Attribute保存数据
	 * @param attrKey
	 * @param attrValue
	 */
	public void setRequestAttr(String attrKey, Object attrValue) {
		ServletActionContext.getRequest().setAttribute(attrKey, attrValue);
	}
	
	/**
	 * 取得Session中对应Key值保存数据
	 * @param attrKey
	 * @return
	 */
	public Object getSessionAttr(String attrKey) {
		HttpSession session = ServletActionContext.getRequest().getSession(false);
		if (session != null) {
			return session.getAttribute(attrKey);
		} else {
			return null;
		}
	}
	
	/**
	 * 向session中保存数据
	 * @param attrKey
	 * @param attrValue
	 */
	public void setSessionAttr(String attrKey, Object attrValue) {
		ServletActionContext.getRequest().getSession(true).setAttribute(attrKey, attrValue);
	}
	
	/**
	 * 移除Session中保存的数据
	 * @param attrKey
	 */
	public void removeSessionAtrr(String attrKey) {
		ServletActionContext.getRequest().getSession().removeAttribute(attrKey);
	}
	/**
	 * 保存Cookie
	 * @param cookie
	 */
	public void addCookie(Cookie cookie) {
		ServletActionContext.getResponse().addCookie(cookie);
	}

	/**
	 * 取得Cookie
	 * @param name
	 * @return
	 */
	public Cookie getCookie(String name) {
		Cookie[] cookies = ServletActionContext.getRequest().getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals(name)) {
					return c;
				}
			}
		}
		return null;
	}
	/**
	 * 获取应用下目录真实路径
	 * @param path
	 * @return
	 */
	public String getAppRealPath(String path) {
		return ServletActionContext.getServletContext().getRealPath(path);
	}
	
	/**
	 * 取得应用程序根目录路径
	 * @return
	 */
	public String getRootPath() {
		return this.getAppRealPath("/");
	}
}
