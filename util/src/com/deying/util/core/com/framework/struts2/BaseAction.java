/**
 * com.framework.struts2.BaseAction.java
 * 说明：
 * 作者：赵梧魁
 * 版本：V1.00
 * 变更履历：【作者】		【日期】		【变更内容】
 *          赵梧魁		2010-10-12		新建
 */
package com.deying.util.core.com.framework.struts2;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.annotation.AnnIService;
import com.deying.util.bo.User;
import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.data.DataConvert;
import com.deying.util.http.HttpUtil;
import com.deying.util.page.DataPage;
import com.deying.util.security.SecurityUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
@SuppressWarnings("unchecked")
public class BaseAction extends ActionSupport implements
				ServletRequestAware, ServletResponseAware{

	protected static final long serialVersionUID = 1L;
	protected final Logger LOG = LoggerFactory.getLogger(getClass());
	
	@Resource
	protected AnnIService commonService;
	
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	
	public static final String LIST = "list";
	public static final String feedback = "feedback";
	public static final String ADD = "add";
	public static final String SAVE = "save";
	public static final String EDIT = "edit";
	public static final String UPD = "upd";
	public static final String DEL = "del";
	public static final String LOAD = "load";
	public static final String CITY = "city";
//	public static final String DELETE = "delete";
//	public static final String EDIT_CONFIRM = "editConf";
//	public static final String ADD_CONFIRM = "addConf";
//	public static final String DELETE_CONFIRM = "deleteConf";
//	public static final String QUERY = "query";
	public static final String INDEX = "index";
	
	//action return code
	public static final String JSON = "json";
	protected static final String JSON_MSG = "jsonMsg";
	protected static final String JSON_ARRAY = "jsonArray";
	public static final String ERROR_CODE = "errorCode";
	
	protected BasePage pgn;
	
	protected Integer start;
	
	protected DataPage dataPage;
	protected Integer currentPage = 1;
	protected Integer totalPage = 0;
	protected Integer pageSize = 10;
	protected Long totalCount = 0L;

	protected  JSONArray jsonArray = new JSONArray();
	protected  JSONObject jsonObject = new JSONObject();
	protected  String jsonString;
	
	protected String token;// 凭据
	
	protected Long t;	//无效，防止缓存
	
	protected String _ns;
	
	protected String _query;
	
	protected Map<String,String> info = new HashMap<String,String>(0);
	protected String msg;
	
	
	public String index() throws Exception {
		return INDEX;
	}
	public String list() throws Exception {return LIST;}
	public String add() throws Exception {return ADD;}
	public String save() throws Exception {return SAVE;}
	public String edit() throws Exception {return EDIT;}
	public String upd() throws Exception {return UPD;}
	public String del() throws Exception {return DEL;}
	public String load() throws Exception {return LOAD;}
	public String city() throws Exception {return CITY;}
	
	protected String jsonCode(String returnCode) {
		jsonObject.element(ERROR_CODE, returnCode);
		return JSON;
	}
	
	/**
	 * 获得值栈
	 * @return
	 */
	public ValueStack getValueStack(){
		return ActionContext.getContext().getValueStack();
	}
	
	/**
	 * 获取后台url地址
	 */
	public String getBackendUrl() {
		return FileConstants.BACKEND_URL;
	}
	
	/**
	 * 获取前台url地址
	 */
	public String getFrontendUrl() {
		return FileConstants.FRONTEND_URL;
	}
	
	/**
	 * 获取代理商后台路径
	 */
	public String getAgentBackUrl(){
		return FileConstants.AGENTBACK_URL;
	}
	
	public String getSpreadShopUrl(){
		return FileConstants.SPREAD_SHOP_URL;
	}
	
	/**
	 * 获取用户信息
	 */
	public User getUserInfo() {
		return SecurityUtils.getUser();
	}
	
	protected String obtionRealPath(){
		return ServletActionContext.getServletContext().getRealPath("");
	}
	
	protected String obtionContextPath(){
		return ServletActionContext.getRequest().getContextPath();
	}
	
	protected Object getSessionAttr(String name) {
		return request.getSession().getAttribute(name);
	}
	
	protected void setSessionAttr(String name, Object value) {
		request.getSession().setAttribute(name, value);
	}
	
	/**
	 * 把字符输出到客户端
	 * 
	 * @param str
	 */
	public void outString(String str) {
		try {
			PrintWriter out = ServletActionContext.getResponse().getWriter();
			out.write(str);
			out.close();
		} catch (IOException e) {
			LOG.error("BaseAction.outString:" + e.getMessage());
		}
	}

	/**
	 * 以文本的格式输出
	 * 
	 * @param str
	 */
	public void outResponseStr(String str) {
		try {
			ServletActionContext.getResponse().setContentType("text/plain");
			outString(str);
		} catch (Exception e) {
			LOG.error("BaseAction.outputString:" + e.getMessage());
		}
	}
	/**
	 * 以XML格式输出
	 * 
	 * @param jsStr
	 */
	public void outResponseJs(String jsStr) {
		ServletActionContext.getResponse().setContentType("text/javascript;charset=UTF-8");
		outString(jsStr);
	}

	/**
	 * 以XML格式输出
	 * 
	 * @param xmlStr
	 */
	public void outResponseXml(String xmlStr) {
		ServletActionContext.getResponse().setContentType("application/xml;charset=UTF-8");
		outString(xmlStr);
	}

	/**
	 * 以HTML格式输出
	 * 
	 * @param htmlStr
	 */
	public void exeResponseHtml(String htmlStr) {
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		outString(htmlStr);
	}

	/**
	 * 以Json格式输出
	 * 
	 * @param jsonStr
	 */
	public void outResponseJson(String jsonStr) {
		ServletActionContext.getResponse().setContentType("application/json;charset=UTF-8");
		outString(jsonStr);
	}

	public Cookie[] getCookies() {
		return ServletActionContext.getRequest().getCookies();
	}
	
	
	/**
	  * 获取项目classpath目录的绝对路径
	  * 
	  * @return 获取项目路径
	  * */
	 public static String getAbsolutePathWithClass() {
		  File directory = new File("");// 参数为空
		  String courseFile = null;
		try {
			courseFile = directory.getCanonicalPath();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  return courseFile;
	 }
	 
	public BasePage getPgn() {
		return pgn;
	}

	public void setPgn(BasePage pgn) {
		this.pgn = pgn;
	}

	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public String get_ns() {
		return _ns;
	}
	public void set_ns(String ns) {
		_ns = ns;
	}
	public String get_query() {
		return _query;
	}
	public void set_query(String query) {
		_query = query;
	}
	public Map<String, String> getInfo() {
		return info;
	}
	public void setInfo(Map<String, String> info) {
		this.info = info;
	}
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	/**
	 * 获取前端传来的值，并转成希望的数据类型
	 * @param <T>
	 * @param name
	 * @param clazz
	 * @return
	 */
	public <T> T obtionInfoVal(String name, Class<T> clazz) {
		return obtionInfoVal(name, null, clazz);
	}
	
	/**
	 * 
	 * @param <T>
	 * @param name
	 * @param defaultVal
	 * @param clazz
	 * @return
	 */
	public <T> T obtionInfoVal(String name, T defaultVal,  Class<T> clazz) {
		if(StringUtils.isBlank(name) || info == null) return defaultVal;
		if(!StringUtils.isBlank(info.get(name))) {
			String val = info.get(name).trim();
			return DataConvert.convertType(val, clazz);
		}else
			return defaultVal;
	}
	
	public String getCityNameCookie() {
		try {
			return URLDecoder.decode(HttpUtil.getCityNameCookie(request), "utf-8");
		} catch (UnsupportedEncodingException e) {
			LOG.error(" Obtion cityNameCookie error.", e);
			return null;
		}
	}
	
	/**
	 * 
	 * 获取手机用户情报
	 * @return
	 * @throws Exception
	 * @author wangchangchun
	 * @create 2015-9-15 上午11:10:23
	 */
//	public FUser getMobileUserInfo() throws Exception {
//		FUser user = commonService.getMobileUser(token);
//        if (user == null) {
//        	jsonObject.put("success", 0);
//        	jsonObject.put("message", "请先登录");
//            return null;
//        } else {
//            //check user state
//            if (user.getState() == 3) {
//            	jsonObject.put("success", 0);
//            	jsonObject.put("message", "您的帐号己经被禁用");
//                return null;
//            } else if (user.getState() == 0) {
//            	jsonObject.put("success", 0);
//            	jsonObject.put("message", "您的帐号尚未激活");
//                return null;
//            }
//        }
//        return user;
//	}
	
	/**
	 * 返回参数格式转换（数组型）
	 * @param page
	 * @param more
	 * @param jarray
	 * @author wangchangchun
	 * @create 2015-9-15 上午11:30:19
	 */
	public void returnJsonArray(int page, int more, JSONArray jarray, String... eagerProperties) {
    	JSONObject jo = new JSONObject();
    	jo.put("page", page);
    	jo.put("more", more);
    	jo.put("items", jarray);
		if(eagerProperties != null && eagerProperties.length > 0) {
			for(int i = 0; i < eagerProperties.length; i++) {
		    	jo.put("item"+(i+1), eagerProperties[i]);
			}
		}
    	jsonObject.put("success", 1);
    	jsonObject.put("data", jo);
	}
	
	/**
	 * 返回参数格式转换（对象型）
	 * @param data
	 * @author wangchangchun
	 * @create 2015-9-15 上午11:27:21
	 */
	public void returnJsonObjectData(JSONObject data) {
    	jsonObject.put("success", 1);
    	jsonObject.put("data", data);
	}
	
	/**
	 * 返回参数格式转换（成功）
	 * @author wangchangchun
	 * @create 2015-9-15 上午11:10:23
	 */
	public void returnJsonSuccess() {
    	jsonObject.put("success", 1);
	}
	
	/**
	 * 返回参数格式转换（失败）
	 * @param message
	 * @author wangchangchun
	 * @create 2015-9-15 上午11:27:03
	 */
	public void returnJsonFailure(String message) {
    	jsonObject.put("success", 0);
    	jsonObject.put("message", message);
	}
	/**
	 * 
	 * 返回参数格式转换
	 * @param success
	 * @param message
	 * @author yuanguangyao
	 * @create 2015-11-16 下午3:55:16
	 */
	public void returnJsonFailure2(int success,String message) {
    	jsonObject.put("success", success);
    	jsonObject.put("message", message);
	}
	
	public DataPage getDataPage() {
		return dataPage;
	}

	public void setDataPage(DataPage dataPage) {
		this.dataPage = dataPage;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getTotalPage() {
		return dataPage == null ? totalPage : dataPage.getTotalPageCount();
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Long getTotalCount() {
		return dataPage == null ? totalCount : dataPage.getTotalCount();
	}

	public void setTotalCount(Long totalCount) {
		this.totalCount = totalCount;
	}
	
	public JSONArray getJsonArray() {
		return jsonArray;
	}
	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}
	public JSONObject getJsonObject() {
		return jsonObject;
	}
	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}
	public String getJsonString() {
		return jsonString;
	}
	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}
	public AnnIService getCommonService() {
		return commonService;
	}
	public void setCommonService(AnnIService commonService) {
		this.commonService = commonService;
	}
	public Long getT() {
		return t;
	}
	public void setT(Long t) {
		this.t = t;
	}
	
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	
	
}
