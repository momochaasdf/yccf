package com.deying.core.util;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;

import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.core.service.user.impl.FunctionServiceImpl;
import com.deying.core.service.user.impl.UserRoleServiceImpl;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.Nullable;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.http.HttpUtil;
import com.deying.util.spring.ApplicationContextFactory;

/**
 * @author wangxj
 * Jun 17, 2013
 * 
 */
public class MenuSet {
	
	private static FunctionServiceImpl functionService = null;
	private static UserServiceImpl userService = null;
	private static UserRoleServiceImpl userRoleService = null;
	private StringBuffer sid = null;
	private LinkedHashMap<String,String> topMenus = new LinkedHashMap<String,String>();
	private String selectMenuId = null;
	
	static {
		ApplicationContext ac = ApplicationContextFactory.newInstance();
		//注入service
		functionService = (FunctionServiceImpl) ac.getBean("functionService");
		userService = (UserServiceImpl) ac.getBean("userService");
		userRoleService = (UserRoleServiceImpl) ac.getBean("userRoleService");
	}
	
	/**
	 * 把菜单存session
	 * @throws Exception
	 */
	public void obtionMenu(String userId) throws Exception {
		StringBuilder sb = new StringBuilder();
		sid = new StringBuffer();
		sb.append(loadFunsByUser(userId));
		sb.append("<div id='m_nav_v' v='").append(sid).append("'></div>");
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute(Constants.MENU_KEY, sb.toString());
		session.setAttribute(FileConstants.TOP_MENU_KEY, topMenus);
		//把默认已选中菜单存cookie
		HttpUtil.addCookie(FileConstants.TOP_MENU_ID_COOKIE, selectMenuId, ServletActionContext.getResponse());
	}

	
	private String loadFunsByUser(String userId) {
		ComUser user = userService.get(userId);
		ComUserRole example = new ComUserRole();
		example.setComUser(user);
		List<ComUserRole> urs = userRoleService.listAll(example, null, null, null);
		Map<String, String> map = new HashMap<String, String>();
		String key = null;
		for (ComUserRole ur : urs) {
			Set<ComRoleFunction> rfs = ur.getComRole().getComRoleFunctions();
			for (ComRoleFunction rf : rfs) {
				key = rf.getComFunction().getFunctionId();
				map.put(key, key);
			}
		}
		return loadFunsByUser(null, map);
	}
	/**
	 *
	 * 加载用户对应的权限
	 *
	 * @param id
	 * @param role
	 * @return
	 */
	private String loadFunsByUser(String id, Map<String, String> map) {
		StringBuilder sb = new StringBuilder();
		ComFunction ex = new ComFunction();
		Condition[] conds = null;
		if (id == null || id.trim().length() == 0) {
			conds = new Condition[2];
			conds[0] = new Nullable("parentFunctionId", true);
			conds[1] = OrderBy.asc("sortNo");
		} else {
			conds = new Condition[1];
			conds[0] = OrderBy.asc("sortNo");
			ex.setParentFunctionId(id);
		}
		List<ComFunction> list = functionService.listAll(ex, null, conds, null);
		StringBuilder data = new StringBuilder();
		for (ComFunction r : list) {
			if (map.containsKey(r.getFunctionId())) {
				if (!"#".equals(r.getUrl()) && r.getUrl().trim().length() > 0){
					sid.append(sid.length() > 0 ? "," : "").append(r.getFunctionId());
				}
				if (id == null || id.trim().length() == 0) {
					//top menu 只存放session 不画jsp页面
					if(topMenus.size() == 0) 
						selectMenuId = r.getFunctionId();
					topMenus.put(r.getFunctionId(), r.getFunctionName());
					data.append(loadFunsByUser(r.getFunctionId(), map));
				}else if("#".equals(r.getUrl())) {
					data.append("<div class=\"menu-box\" topmenuid='" + id + "' >");
					data.append("<h3 class='menu-bar'><span>" + r.getFunctionName() + "</span><button>-</button></h3>");
					data.append("<ul class='group'>");
					data.append(loadFunsByUser(r.getFunctionId(), map));
					data.append("</ul></div>");
				}else{
					data.append("<li id=\"").append(r.getFunctionId()).append("\">");
					data.append("<span>");
					if ("#".equals(r.getUrl())) {
						data.append(r.getFunctionName());
					} else {
						data.append("<a href=\"").append(ServletActionContext.getRequest().getContextPath()).append(r.getUrl()).append("\">").append(r.getFunctionName()).append("</a>");
					}
					data.append("</span>");
					data.append(loadFunsByUser(r.getFunctionId(), map));
					data.append("</li>");
				}
			}
		}
		sb.append(data);
		return sb.toString();
	}
}
