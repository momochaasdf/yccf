package com.deying.core.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;

import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.user.ComFunction;
import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.service.user.impl.FunctionServiceImpl;
import com.deying.core.service.user.impl.RoleFunctionServiceImpl;
import com.deying.core.service.user.impl.RoleServiceImpl;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.Nullable;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.core.com.framework.struts2.UserContext;


public class FunctionAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private FunctionServiceImpl functionService = null;
	@Autowired
	private RoleServiceImpl roleService = null;
	@Autowired
	private RoleFunctionServiceImpl roleFunctionService = null; 


	private ComFunction function = null;
	
	private ComFunction inFunction = null;
	
	private String id;
	private ComFunction parentFun = null;
	private String fixCookie = null;
	private String roleId = null;
	private String specialId = null;
	
	public String list() throws Exception {
		LOG.debug("--------------------FunctionAction -> list----------------");
		if (this.ctx.getSessionAttr(Constants.SEARCH_COND) instanceof ComFunction && this._query == null) {//编辑或新增或删除返回检索页面使用先前保存的检索条件
			this.inFunction = (ComFunction) this.ctx.getSessionAttr(Constants.SEARCH_COND);
		}
		this.start = this.start == null ? 0 : this.start;
		Condition[] conds = new Condition[1];
		conds[0] = OrderBy.asc("treeCode");
		if (this.inFunction == null) {
			this.inFunction = new ComFunction();
		}
		if (this.id != null && this.id.trim().length() > 0) {
			this.inFunction.setParentFunctionId(id);
		} else {
			this.inFunction.setParentFunctionId(null);
		}
		this.pgn = this.functionService.listByPage(this.inFunction, this.start, 10, null, conds, null);
		this.ctx.setSessionAttr(Constants.SEARCH_COND, this.inFunction);
		return LIST;
	}
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------FunctionAction -> add----------------");
		if (this.id != null && this.id.trim().length() > 0) {
			this.parentFun = this.functionService.get(id);
		}  else {
			this.parentFun = new ComFunction();
			this.parentFun.setFunctionName("Root");
		}
		return ADD;
	}
	public String save() throws Exception {
		LOG.debug("--------------------FunctionAction -> save----------------");
		if (function != null) {
			if (this.id != null && this.id.trim().length() > 0) {
				this.function.setParentFunctionId(id);
			}
			this.functionService.save(function);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateSave() {
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 编辑对象加载
	 * @return
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------FunctionAction -> edit----------------");
		this.function = this.functionService.get(id);
		if (this.function.getParentFunctionId() != null && this.function.getParentFunctionId().trim().length() > 0) {
			this.parentFun = this.functionService.get(this.function.getParentFunctionId());
		} else {
			this.parentFun = new ComFunction();
			this.parentFun.setFunctionName("Root");
		}
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------FunctionAction -> upd----------------");
		if (function != null) {
			try {
				ComFunction functionTmp = this.functionService.get(function.getFunctionId());
				UserContext user = getCtxUser();
				functionTmp.setFunctionName(function.getFunctionName());
				functionTmp.setTreeCode(function.getTreeCode());
				functionTmp.setUrl(function.getUrl());
				functionTmp.setDescription(function.getDescription());
//				functionTmp.setFuncs(function.getFuncs());
//				functionTmp.setIsMenu(function.getIsMenu());
				functionTmp.setSortNo(function.getSortNo());
				functionTmp.setUpdUid(user.getUserId());
				functionTmp.setUpdTime(new Date());
//				this.function = this.functionService.update(function);
				this.addActionMessage(this.getText("do.success.back"));
			} catch (Exception e) {
				this.addActionMessage(e.getMessage());
				LOG.error("upd fail...", e);
				return INPUT;
			}
			
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		ComFunction r = this.functionService.get(this.function.getFunctionId());
		if (r == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 删除
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------FunctionAction -> del----------------");
		if (this.id != null) {
			this.functionService.deleteById(this.id);
		}
		msg="操作成功!";
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		ComFunction r = this.functionService.get(this.id);
		if (r == null || this.id == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 查看对象
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------FunctionAction -> load----------------");
		this.function = this.functionService.get(id);
		return LOAD;
	}

	public void loadtree() {
		outResponseJson(loadtreeById(this.id));
	}
	
	private String loadtreeById(String id) {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		ComFunction ex = new ComFunction();
		Condition[] conds =null;
		if (id == null || id.trim().length() == 0) {
			conds = new Condition[2];
			conds[0] = new Nullable("parentFunctionId", true);
			conds[1] = OrderBy.asc("sortNo");
		} else {
			ex.setParentFunctionId(id);
			conds = new Condition[1];
			conds[0] = OrderBy.asc("sortNo");
		}
		List<ComFunction> list = this.functionService.listAll(ex, MatchMode.ANYWHERE, conds, null);
		Cookie[] cookies = this.getCookies();
		StringBuilder data = new StringBuilder();
		for (ComFunction r : list) {
			data.append(data.length() > 0 ? "," : "");
			data.append("{\"id\":\"").append(r.getFunctionId()).append("\",");
			data.append("\"text\":\"").append(r.getFunctionName()).append("\",");
			data.append("\"checked\":false,");
			data.append("\"open\":true,");
//			data.append("\"children\":[],\"state\":\"");
			boolean boo = false;
			if (cookies != null) {
				for (Cookie c : cookies) {
					if (c.getName().equals(this.fixCookie + r.getFunctionId())) {
						boo = true;
						break;
					}
				}
			}
			data.append("\"children\":").append(boo ? this.loadtreeById(r.getFunctionId()) : "[]");
			data.append(",\"state\":\"");
			data.append(boo ? "open" : "closed");
			data.append("\"}");
		}
		if (id == null || id.trim().length() == 0) {
			sb.append("{\"text\":\"Root\",\"children\":[");
		}
		sb.append(data);
		if (id == null || id.trim().length() == 0) {
			sb.append("]}");
		}
		sb.append("]");
		return sb.toString();
	}
	/**
	 * 加载角色对应的权限 
	 */
	public void loadTreeAll () throws Exception {
		ComRole role = this.roleService.get(roleId);
		outResponseJson(this.loadTreeAllSub(null, role));
	}
	

	/**
	 *
	 * 加载角色对应的权限
	 *
	 * @param id
	 * @param role
	 * @return
	 */
	private String loadTreeAllSub(String id, ComRole role) throws Exception {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		ComFunction ex = new ComFunction();
		Condition[] conds =null;
		if (id == null || id.trim().length() == 0) {
			conds = new Nullable[1];
			conds[0] = new Nullable("parentFunctionId", true);
		} else {
			ex.setParentFunctionId(id);
		}
		List<ComFunction> list = this.functionService.listAll(ex, MatchMode.ANYWHERE, conds, null);
		StringBuilder data = new StringBuilder();
		for (ComFunction r : list) {
			ComRoleFunction example = new ComRoleFunction();
			example.setComRole(role);
			example.setComFunction(r);
			List<ComRoleFunction> rfs = this.roleFunctionService.listAll(example, null, null, null);
			String rfsStr = "";
			for (ComRoleFunction rf : rfs) {
				rfsStr += rf.getComFunction().getFunctionId() + ",";
			}
			data.append(data.length() > 0 ? "," : "");
			data.append("{\"id\":\"").append(r.getFunctionId()).append("\",");
			data.append("\"text\":\"").append(r.getFunctionName()).append("\",");
			data.append("\"checked\":").append(r.getUrl().length() <= 1?false:rfsStr.contains(r.getFunctionId())).append(",");
			data.append("\"open\":true");
			String ch = this.loadTreeAllSub(r.getFunctionId(), role);
			System.out.println("===" + r.getFunctionId() + ",===" + ch.length() + "==" + ch);
			if (ch.length() > 2) {
				data.append(",\"children\":").append(ch);
			}
			data.append(",\"state\":\"open\"}");
		}
		if (id == null || id.trim().length() == 0) {
			sb.append("{\"text\":\"Root\",\"children\":[");
		}
		sb.append(data);
		if (id == null || id.trim().length() == 0) {
			sb.append("]}");
		}
		sb.append("]");
		return sb.toString();
	}
	
	public FunctionServiceImpl getFunctionService() {
		return functionService;
	}

	public void setFunctionService(FunctionServiceImpl functionService) {
		this.functionService = functionService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public ComFunction getFunction() {
		return function;
	}
	public void setFunction(ComFunction function) {
		this.function = function;
	}

	public ComFunction getInFunction() {
		return inFunction;
	}

	public void setInFunction(ComFunction inFunction) {
		this.inFunction = inFunction;
	}

	public ComFunction getParentFun() {
		return parentFun;
	}

	public void setParentFun(ComFunction parentFun) {
		this.parentFun = parentFun;
	}

	public String getFixCookie() {
		return fixCookie;
	}

	public void setFixCookie(String fixCookie) {
		this.fixCookie = fixCookie;
	}

	public RoleServiceImpl getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleServiceImpl roleService) {
		this.roleService = roleService;
	}

	public RoleFunctionServiceImpl getRoleFunctionService() {
		return roleFunctionService;
	}

	public void setRoleFunctionService(RoleFunctionServiceImpl roleFunctionService) {
		this.roleFunctionService = roleFunctionService;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getSpecialId() {
		return specialId;
	}

	public void setSpecialId(String specialId) {
		this.specialId = specialId;
	}

	
}
