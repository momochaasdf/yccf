package com.deying.util.security;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.bo.User;
import com.deying.util.http.HttpUtil;

/**
 * @author wangxj
 * Apr 7, 2013
 * 
 */
public class SecurityUtils {

	private static final Logger LOGGER = LoggerFactory.getLogger(SecurityUtils.class);
	public static final String USER_KEY = "user_info";
	
	public static boolean isSecurity() {
		return SecurityUtils.getUserId() == null ? false : true;
	}
	
	public static String getUserId(){
		User user = getUser();
		if(user == null) {
			LOGGER.info("User info can't obtion.");
			return null;
		}
		return user.getUserId();
	}
	
	public static String getCompanyId(){
		User user = getUser();
		if(user == null) {
			LOGGER.info("User info can't obtion.");
			return null;
		}
		return user.getCompanyId();
	}
	
	public static String getIpAddress(){
		SecurityContext<User> context = getCurSecurityContext();
		if(context == null) return null;
		return context.getIpAddress();
	}
	
	@SuppressWarnings("unchecked")
	public static SecurityContext<User> getCurSecurityContext(){
		return (SecurityContext<User>)SecurityContexts.getCurSecurityContext();
	}
	
	public static String getSessionId(){
		return getCurSecurityContext() == null ? null : getCurSecurityContext().getSessionId();
	}
	
	public static void setUser(HttpSession session, User user){
		if(session == null) return;
		session.setAttribute(USER_KEY, user);
		SecurityContext<User> sc = getCurSecurityContext();
		if(sc == null) {
			SecurityContext<User> tmp = new SecurityContext<User>();
			tmp.setSessionId(session.getId());
			tmp.setSecurity(user);
			tmp.setSessionId(session.getId());
			SecurityContexts.setCurSecurityContext(tmp);
		}else {
			sc.setSecurity(user);
			sc.setSessionId(session.getId());
		}
	}
	public static void setUser(HttpSession session, String userId, String loginName){
		if(userId == null || StringUtils.isBlank(loginName)) {
			LOGGER.info("Set User object into session fail. userId:{} or loginName:{} is null",userId,loginName);
			return;
		}
		User user = new User();
		user.setUserName(loginName);
		user.setUserId(userId);
		setUser(session, user);
	}
	
	/**
	 * 用getUser()替代此方法
	 * @param session
	 * @return
	 */
	public static User getUser(HttpSession session){
		if(session == null) return null;
		return (User)session.getAttribute(USER_KEY);
	}
	
	public static void invalidSession(HttpSession session){
		if(session == null) return;
		session.invalidate();
	}
	
	/**
	 * 获取用户首选方法
	 * @param session
	 * @return
	 */
	public static User getUser(){
		SecurityContext<User> context = getCurSecurityContext();
		if(context == null || context.getSecurity() == null) return null;
		return context.getSecurity();
	}
	
	public static String getUserName(){
		User user = getUser();
		if(user == null) {
			LOGGER.info("User info can't obtion.");
			return null;
		}
		return user.getUserName();
	}
	
	private static String serverId = null;
	/**
	 * 系统ID缺省是机器的hostName,如果存在有一台机器停止之后很长时间不启动的情况下，
	 * 想用另外一台机器代替该机器，可以临时性的,在Tomcat的启动脚本中，
	 * 加上"-Dtomcat.id=front001"这样的设定,注意：这里必须每台Tomcat的设定值都不一样，
	 * @return String
	 */
	public static String getServerId(){
		if(serverId == null){
			LOGGER.info("SystemInfoUtils.getFrontId <<<DEBUG>>> is NULL !!!");
			synchronized (SecurityUtils.class) {
				if(serverId == null){
					LOGGER.info("<<<DEBUG>>> SystemInfoUtils init frontId start !!!");
					
					String tomcatId = System.getProperty("tomcat.id");
					if (StringUtils.isNotBlank(tomcatId)){
						LOGGER.info("<<<DEBUG>>> ==>tomcatId==" + tomcatId);
						serverId = tomcatId;
					}else{
						try {
							InetAddress addr = InetAddress.getLocalHost();
							serverId = addr.getHostName();
						} catch (UnknownHostException e) {
							LOGGER.error("SystemInfoUtils <<<ERROR>>> InetAddress.getLocalHost ",e);
						}
						LOGGER.info("<<<DEBUG>>> ==>HostName==" + serverId);
					}
					
					if(serverId == null){
						LOGGER.error("SystemInfoUtils.getFrontId <<<ERROR>>> frontId="+serverId);
					}
					LOGGER.info("SystemInfoUtils init  frontId end !!!");
				}
			}
		}
		return serverId;
	}
	
	/**
	 * 免登陆的cookie格式为 userId-password-MD5
	 * 此方法是获取userId-password-MD5值
	 * @param userId
	 * @param password	MD5密码
	 * @return
	 */
	public static String getUserLoginCookie(String userId, String password){
		StringBuilder userInfo = new StringBuilder();
		userInfo.append(userId)
				.append("_")
				.append(password)
				.append("_")
				.append(DigestUtils.md5Hex(userInfo.toString()));
		return userInfo.toString();
	}
	
	/**
	 * 存免登录cookie到客户端
	 * @param userId
	 * @param password
	 * @return
	 */
	public static void addUserLoginCookie(String userId, 
			String password, HttpServletResponse response){
		String cookie = SecurityUtils.getUserLoginCookie(userId, password);
		HttpUtil.addCookie(FileConstants.LOGIN_COOKIE_NAME, cookie, 
				FileConstants.LOGIN_COOKIE_TIME, response);
	}
	
	/**
	 * 摧毁session数据和本地线程安全数据
	 * @param session
	 */
	public static void destroySecurityData(HttpSession session){
		session.removeAttribute(USER_KEY);
		SecurityContexts.setCurSecurityContext(null);
	}
	
}
