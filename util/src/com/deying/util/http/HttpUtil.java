package com.deying.util.http;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Enumeration;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.apache.struts2.util.TokenHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.util.WebUtils;

import com.deying.util.FileConstants;
import com.deying.util.data.DataConvert;
import com.deying.util.data.Symbol;


public class HttpUtil {
	
	static Logger LOG = LoggerFactory.getLogger(HttpUtil.class);
	
	/**
	 * 获得登录ip
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request) {     
	     String ip = request.getHeader("x-forwarded-for");     
	     if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {     
	         ip = request.getHeader("Proxy-Client-IP");     
	     }     
	      if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {     
	         ip = request.getHeader("WL-Proxy-Client-IP");     
	      }     
	     if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {     
	          ip = request.getRemoteAddr();     
	     }     
	     return ip;     
	}
	
	/**
	 * 获取请求地址信息，包含参数
	 */
	@SuppressWarnings("unchecked")
	public static String getRequestUrlAndParams(HttpServletRequest request) {
		StringBuffer sb = new StringBuffer("REQUEST URL === ");
		sb.append(request.getRequestURL())
		.append("?");
		Enumeration keys = request.getParameterNames();
		while(keys.hasMoreElements()) {
			String key = (String)keys.nextElement();
			String[] values = request.getParameterValues(key);
			sb.append(key)
				.append(Symbol.EQ)
				.append(values == null || values.length > 1 
						? DataConvert.array2String(values) : values[0])
				.append("&");
		}
		return sb.toString();
	}
	
	/**
	 * 获得本地IP
	 * @return
	 */
	public static String getLocalIpAddr() {     
		InetAddress addr = null;
		   try {
			addr = InetAddress.getLocalHost();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		if(addr == null) return null;
		return addr.getHostAddress();
	}
	
	/**
	 * @param gpsX
	 * @param gpsY
	 * @return {"street":"中关村大街","province":"北京市","street_number":"27号1101-08室","district":"海淀区","city":"北京市"}
	 * @throws Exception
	 */
	public static JSONObject getCityByGPS(String lat, String lng) throws Exception{
		DefaultHttpClient httpclient = new DefaultHttpClient();
		String mapAddr = FileConstants.MAP_ADDRESS;
		if(StringUtils.isBlank(mapAddr)) {
			LOG.error("baidu_map_addr property not in properties Files.");
			return null;
		}
        try {
            HttpGet httpget = new HttpGet(mapAddr + "&location=" + lat +"," + lng);
            HttpResponse response = httpclient.execute(httpget);
            HttpEntity entity = response.getEntity();
            if (entity != null) {
            	String info = EntityUtils.toString(entity);
            	LOG.info("Use baidu map to location GPS.<<city:{}>>",info);
            	JSONObject jo = JSONObject.fromObject(info);
            	if(!jo.isNullObject()) {
            		JSONObject res = jo.optJSONObject("result");
            		if(!res.isNullObject()) {
            			return res.optJSONObject("addressComponent");
            		}
            	} 
            }
            return null;
        } finally {
            httpclient.getConnectionManager().shutdown();
        }
	}
	
	/**
	 * 判断是否为ajax请求
	 * @param request
	 * @return
	 */
	public static boolean isAjaxRequest(HttpServletRequest request) { 
		    String header = request.getHeader("X-Requested-With"); 
		    if (header != null && "XMLHttpRequest".equals(header)) 
		        return true; 
		    else 
		        return false; 
	}
	
	/**
	 * 不存储cookie，浏览器关闭则删除cookie
	 * @param name
	 * @param value
	 * @param response
	 */
	public static void addCookie(String name, String value,
			HttpServletResponse response) {
		addCookie(name, value, null, response);
	}
	
	public static void addCookie(String name, String value, Integer maxAge,
			HttpServletResponse response) {
		try {
			value = URLEncoder.encode(value, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			LOG.error("HttpUtil class addCookie method error.",e);
		}
		Cookie cookie = new Cookie(name, value);
		if(maxAge != null) 
			cookie.setMaxAge(maxAge);
		cookie.setPath("/");
		response.addCookie(cookie);
	}
	
	public static Cookie getCookie(String cookieName, 
			HttpServletRequest request) {
		if(request == null) return null;
		return WebUtils.getCookie(request, cookieName);
	}
	
	public static String getCookieVal(String cookieName, 
			HttpServletRequest request) {
		if(request == null) return null;
		Cookie c = WebUtils.getCookie(request, cookieName);
		if(c != null)
			return c.getValue() == null ? null : c.getValue().trim();
		return null;
	}
	
	public static void removeCookie(String cookieName, 
			HttpServletResponse response) {
		Cookie cookie = new Cookie(cookieName, null);
		cookie.setMaxAge(0);
		cookie.setPath("/");
		response.addCookie(cookie);
	}
	
	/**
	 * 获取城市名的Cookie值
	 * @param request
	 * @return
	 */
	public static String getCityNameCookie(HttpServletRequest request) {
		if(request == null) return null;
		Cookie c = getCookie(FileConstants.CITY_NAME_COOKIE, request);
		if(c == null || StringUtils.isBlank(c.getValue()))
			return FileConstants.DEFAULT_CITY;
		else 
			return c.getValue();
	}
	
	/**
	 * 获取城市ID的Cookie值
	 * @param request
	 * @return
	 */
	public static Integer getCityIdCookie(HttpServletRequest request) {
		if(request == null) return null;
		Cookie c = getCookie(FileConstants.CITY_ID_COOKIE, request);
		if(c == null || StringUtils.isBlank(c.getValue()))
			return FileConstants.DEFAULT_CITY_ID;
		else 
			return Integer.parseInt(c.getValue());
	}
	
	/**
	 * 添加城市名的Cookie
	 * @param cityName	
	 * @return
	 */
	public static void addCityNameCookie(String cityName, HttpServletResponse response) {
		addCookie(FileConstants.CITY_NAME_COOKIE, cityName, 60 * 60 * 24 * 365, response);
	}
	
	/**
	 * 添加城市ID的Cookie
	 * @param cityId	
	 * @return
	 */
	public static void addCityIdCookie(Integer cityId, HttpServletResponse response) {
		addCookie(FileConstants.CITY_ID_COOKIE, cityId.toString(), 60 * 60 * 24 * 365, response);
	}
	
	/**
	 * 获取Token值
	 * @param tokenName 不传tokenName时使用Token的默认属性值 	
	 * @return
	 */
	public static String getToken(HttpServletRequest request, String... tokenName) {
		if(request == null)
			return null;
		HttpSession session = request.getSession(false);
		if(session == null)
			return null;
		if(tokenName.length == 0)
			return (String)session.getAttribute(TokenHelper.DEFAULT_TOKEN_NAME);
		else
			return (String)session.getAttribute(tokenName[0]);
	}
	
	/**
	 * 设置Token值
	 * @param tokenName 不传tokenName时使用Token的默认属性值 	
	 * @param tokenVal	如果tokenVal == null 则不设置此属性到session
	 * @return
	 */
	public static void setToken(HttpServletRequest request, String tokenName, String tokenVal) {
		if(request == null || tokenVal == null)
			return;
		HttpSession session = request.getSession(false);
		if(session == null)
			return;
		tokenName = tokenName == null ? TokenHelper.DEFAULT_TOKEN_NAME : tokenName;
		session.setAttribute(tokenName, tokenVal);
	}
	
	/**
	 * 处理Token值，从请求参数中取出Token值存session中
	 * @return
	 */
	public static void processToken(HttpServletRequest request) {
		String tokenName = TokenHelper.getTokenName();
		if(tokenName != null) {
			String tokenVal = TokenHelper.getToken(tokenName);
			if(tokenVal != null && request != null)
				request.getSession().setAttribute(tokenName, tokenVal);
		}
	}
	
	/**
	 * 把字符输出到客户端
	 * 
	 */
	public static void outString(String str, HttpServletResponse response) {
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.write(str);
		} catch (IOException e) {
			LOG.error("The method outString in HttpUtil:" + e.getMessage());
		} finally {
			if(out != null) 
				out.close();
		}
	}

	/**
	 * 以文本的格式输出
	 * 
	 */
	public static void outPlainString(String str, HttpServletResponse response) {
		response.setContentType("text/plain");
		outString(str, response);
	}
	
	/**
	 * 以js格式输出
	 * 
	 */
	public static void outJs(String str, HttpServletResponse response) {
		response.setContentType("text/javascript;charset=UTF-8");
		outString(str, response);
	}

	/**
	 * 以XML格式输出
	 * 
	 */
	public static void outXml(String str, HttpServletResponse response) {
		response.setContentType("application/xml;charset=UTF-8");
		outString(str, response);
	}

	/**
	 * 以HTML格式输出
	 * 
	 */
	public static void outHtml(String str, HttpServletResponse response) {
		response.setContentType("text/html;charset=UTF-8");
		outString(str, response);
	}

	/**
	 * 以Json格式输出
	 * 
	 */
	public static void outJson(String str, HttpServletResponse response) {
		response.setContentType("application/json;charset=UTF-8");
		outString(str, response);
	}

	
	/**
	 * @return 获取项目classpath目录的绝对路径
	 */
	public static String getAbsolutePathWithClass() {
		 File directory = new File("");
		 String courseFile = null;
		 try {
			 courseFile = directory.getCanonicalPath();
		 } catch (IOException e) {
			 LOG.error("The method getAbsolutePathWithClass in HttpUtil:" + e.getMessage());
		 }
		 return courseFile;
	}
	
	public static void main(String[] args){
		
	}
	
	
	
}
