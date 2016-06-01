package com.deying.core.util;

import java.io.Writer;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.components.Component;
import org.apache.struts2.views.annotations.StrutsTag;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

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
import com.deying.util.core.com.framework.struts2.UserContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.opensymphony.xwork2.util.logging.Logger;
import com.opensymphony.xwork2.util.logging.LoggerFactory;

@StrutsTag(name = "nav", tldTagClass = "com.util.view.jsp.NavTag", description = "导航菜单标签")
public class Nav extends Component{

	private static final Logger LOG = LoggerFactory.getLogger(Nav.class);
	private HttpSession session;
	private HttpServletRequest request;
	private FunctionServiceImpl functionService = null;
	private UserServiceImpl userService = null;
	private UserRoleServiceImpl userRoleService = null;
	private StringBuffer sid = null;
	private Map<String,String> topMenus = new LinkedHashMap<String,String>();
	
	public Nav(ValueStack stack) {
		super(stack);
	}

	public Nav(ValueStack stack, HttpServletRequest request, HttpServletResponse response) {
		super(stack);
		session = request.getSession();
		this.request = request;
		WebApplicationContext  wac = WebApplicationContextUtils.getRequiredWebApplicationContext(session.getServletContext());
		functionService = (FunctionServiceImpl) wac.getBean("functionService");
		userService = (UserServiceImpl) wac.getBean("userService");
		userRoleService = (UserRoleServiceImpl) wac.getBean("userRoleService");
	}

	public boolean start(Writer writer) {
		boolean boo = super.start(writer);
		StringBuilder sb = new StringBuilder();
		try {
			if (session.getAttribute(Constants.MENU_KEY) != null) {
				sb.append(session.getAttribute(Constants.MENU_KEY));
			} else {
				if (session.getAttribute(Constants.USER_KEY) != null) {
					UserContext user = (UserContext)session.getAttribute(Constants.USER_KEY);
					sid = new StringBuffer();
					sb.append(loadFunsByUser(user.getUserId()));
					sb.append("<div id='m_nav_v' v='").append(sid).append("'></div>");
					session.setAttribute(Constants.MENU_KEY, sb.toString());
					session.setAttribute(FileConstants.TOP_MENU_KEY, topMenus);
				}
			}
//			if (session.getAttribute(Constants.USER_KEY) != null) {
//				UserContext user = (UserContext)session.getAttribute(Constants.USER_KEY);
//				sid = new StringBuffer();
//				sb.append(loadFunsByUser(user.getUserId()));
//				sb.append("<div id='m_nav_v' v='").append(sid).append("'/>");
//			}
			writer.write(sb.toString());
		} catch (Exception e) {
			LOG.equals(e.getMessage());
		}
		
		return boo;
	}
	public  String loadFunsByUser(String userId) {
		ComUser user = this.userService.get(userId);
		ComUserRole example = new ComUserRole();
		example.setComUser(user);
		List<ComUserRole> urs = this.userRoleService.listAll(example, null, null, null);
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
		List<ComFunction> list = this.functionService.listAll(ex, null, conds, null);
		StringBuilder data = new StringBuilder();
		for (ComFunction r : list) {
			if (map.containsKey(r.getFunctionId())) {
				if (!"#".equals(r.getUrl()) && r.getUrl().trim().length() > 0){
					sid.append(sid.length() > 0 ? "," : "").append(r.getFunctionId());
				}
				if (id == null || id.trim().length() == 0) {
					//top menu 只存放session 不画jsp页面
					topMenus.put(r.getFunctionId(), r.getFunctionName());
					data.append(this.loadFunsByUser(r.getFunctionId(), map));
				}else if("#".equals(r.getUrl())) {
					data.append("<div class=\"menu-box\" id='" + r.getFunctionId() + "' >");
					data.append("<h3 class='mytaobao-bar'><span>" + r.getFunctionName() + "</span><button>-</button></h3>");
					data.append("<ul class='group'>");
					data.append(this.loadFunsByUser(r.getFunctionId(), map));
					data.append("</ul></div>");
				}else{
					data.append("<li id=\"").append(r.getFunctionId()).append("\">");
					data.append("<span>");
					if ("#".equals(r.getUrl())) {
						data.append(r.getFunctionName());
					} else {
						data.append("<a href=\"").append(request.getContextPath()).append(r.getUrl()).append("\">").append(r.getFunctionName()).append("</a>");
					}
					data.append("</span>");
					data.append(this.loadFunsByUser(r.getFunctionId(), map));
					data.append("</li>");
				}
			}
		}
		sb.append(data);
		return sb.toString();
	}
	
}
