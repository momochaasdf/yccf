package com.deying.core.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.core.service.user.impl.RoleServiceImpl;
import com.deying.core.service.user.impl.UserRoleServiceImpl;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;


public class RoleAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	
	@Autowired
	private RoleServiceImpl roleService = null;
	@Autowired
	private UserServiceImpl userService  = null;
	@Autowired
	private UserRoleServiceImpl userRoleService = null;

	private ComRole role = null;
	
	private ComRole inRole = null;
	
	private String id;
	
	private String roleId;
	private String funs;
	private String userId;
	
	public String list() throws Exception {
		LOG.debug("--------------------RoleAction -> list----------------");
		if (this.ctx.getSessionAttr(Constants.SEARCH_COND) instanceof ComRole && this._query == null) {//编辑或新增或删除返回检索页面使用先前保存的检索条件
			this.inRole = (ComRole) this.ctx.getSessionAttr(Constants.SEARCH_COND);
		}
		this.start = this.start == null ? 0 : this.start;
		if (this.inRole != null) {
			this.pgn = this.roleService.listByPage(this.inRole, this.start, 10);
		} else {
			this.pgn = this.roleService.listByPage(new ComRole(), this.start, 10);
		}
		this.ctx.setSessionAttr(Constants.SEARCH_COND, this.inRole);
		return LIST;
	}
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------RoleAction -> add----------------");
		return ADD;
	}
	public String save() throws Exception {
		LOG.debug("--------------------RoleAction -> save----------------");
		if (role != null) {
			this.roleService.save(role);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateSave() {
		if(hasErrors()) {
			return true;
		}
		if (!this.exitRoleCode(this.role.getRoleCode())) {
			this.addActionError(getText("err.exits","", getText("role.roleCode")));
		}
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
		LOG.debug("--------------------RoleAction -> edit----------------");
		this.role = this.roleService.get(id);
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------RoleAction -> upd----------------");
		if (role != null) {
			try {
				this.role = this.roleService.update(role);
				this.addActionMessage(this.getText("do.success.back"));
			} catch (Exception e) {
				LOG.error("upd fail...", e);
				this.addActionMessage(e.getMessage());
			}
			
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		ComRole r = this.roleService.get(this.role.getRoleId());
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
		LOG.debug("--------------------RoleAction -> del----------------");
		if (this.id != null) {
			this.roleService.deleteById(this.id);
		}
		this.addActionMessage(this.getText("do.success.back", "", new String[]{this.getText("page.title.role_list")}));
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		ComRole r = this.roleService.get(this.id);
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
		LOG.debug("--------------------RoleAction -> load----------------");
		this.role = this.roleService.get(id);
		return LOAD;
	}
	/**
	 * 页面输入角色代码的时候ajax验证是否存在
	 */
	public void checkRoleCode() {
		if (this.role != null && this.role.getRoleCode() != null) {
			outResponseJs(String.valueOf(this.exitRoleCode(this.role.getRoleCode())));
		} else {
			outResponseJs("false");
		}
	}
	/**
	 * 判断该角色代码是否存在
	 * @param roleCode
	 * @return
	 */
	public boolean exitRoleCode(String roleCode) {
		ComRole r = this.roleService.findUniqueByProperty("roleCode", roleCode);
		return r == null;
	}
	
	/**
	 * 角色授权
	 */
	public void saveRoleFuns() {
		StringBuilder sb = new StringBuilder();
		try {
			this.roleService.saveRoleFuns(roleId, funs);
			sb.append("{\"success\":true}");
		} catch (Exception e) {
			e.printStackTrace();
			sb.append("{\"success\":false}");
		}
		outResponseJson(sb.toString());
	}
	
	public void loadRoleAll() {
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		ComUser user = this.userService.get(userId);
		List<ComRole> list = this.roleService.listALL();
		StringBuilder data = new StringBuilder();
		for (ComRole r : list) {
			ComUserRole ur = new ComUserRole();
			ur.setComUser(user);
			ur.setComRole(r);
			List<ComUserRole> urs = this.userRoleService.listAll(ur, null, null, null);
			data.append(data.length() > 0 ? "," : "");
			data.append("{\"id\":\"").append(r.getRoleId()).append("\",");
			data.append("\"text\":\"").append(r.getRoleName()).append("\",");
			data.append("\"checked\":").append(urs.size() > 0).append(",");
			data.append("\"open\":true");
			data.append(",\"state\":\"open\"}");
		}
		sb.append(data);
		sb.append("]");
		System.out.println(sb.toString());
		outResponseJson(sb.toString());
	}
	
	public RoleServiceImpl getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleServiceImpl roleService) {
		this.roleService = roleService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public ComRole getRole() {
		return role;
	}
	public void setRole(ComRole role) {
		this.role = role;
	}

	public ComRole getInRole() {
		return inRole;
	}

	public void setInRole(ComRole inRole) {
		this.inRole = inRole;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getFuns() {
		return funs;
	}

	public void setFuns(String funs) {
		this.funs = funs;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public UserRoleServiceImpl getUserRoleService() {
		return userRoleService;
	}

	public void setUserRoleService(UserRoleServiceImpl userRoleService) {
		this.userRoleService = userRoleService;
	}

}
