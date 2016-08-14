package com.deying.core.action;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.user.impl.UserRoleServiceImpl;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.security.SecurityUtils;
import com.deying.util.sql.SqlGrammar;
public class UserAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private UserServiceImpl userService = null;
	@Autowired
	private UserRoleServiceImpl userRoleService = null;

	private ComUser user = null;
	
	private String id;
	private String userId;
	private String roles;
	
	private String oldPassword;
	private String newPassword;
	private String rePassword;
	
	private String loginId;
	private String userName;
	
	public String list() throws Exception {
		LOG.debug("--------------------UserAction -> list----------------");
		String companyId = this.getCtxUser().getCompanyId();
		String loginId = obtionInfoVal("loginId", String.class);
		String userName = obtionInfoVal("userName", String.class);
		Integer status = obtionInfoVal("status", Integer.class);
		
		String userId = this.getCtxUser().getUserId();
		String userNames = this.getCtxUser().getUserName();
		String userRoleNames = this.getCtxUser().getRoleNames();
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if (userId != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.eq("userId", userId);
		}
		if (userNames != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.eq("userName", userNames);
		}
		if (companyId != null) {
			if (!userRoleNames.contains("总经理")) {
				c.eq("companyId", companyId);
			}
		}
		if(loginId != null){
			c.like("loginId", loginId);
		}
		if(userName != null){
			c.like("userName", userName);
		}
		if(status != null && status != 2){
			c.eq("status", status.toString());
		}
		if (status == null) {
			info.put("status", "2");
		}
		dataPage = commonService.find(c
				, ComUser.class,  currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}
	
	/**
	 * 重置密码
	 */
	public String reset() throws Exception {
		LOG.debug("----------------UserAction -> reset------------------");
//		String userId = this.getCtxUser().getUserType();
		try {
			ComUser u = this.userService.get(this.id);
			u.setPassword(DigestUtils.md5Hex("00000000"));
	        this.userService.update(u);
			msg="密码重置成功";
		} catch (Exception e) {
			e.printStackTrace();
			msg="密码重置失败";
		}
		return list();
	}
	
	
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------UserAction -> add----------------");
		return ADD;
	}
	public String save() throws Exception  {
		LOG.debug("--------------------UserAction -> save----------------");
		/*
		 * 从数据库中查出最大的businessId，加1后赋给新注册的用户
		 */

		String sql = "select max(LOGIN_ID) as login  from com_user" ;
		List list = this.userService.listBySQL(sql);
		 
		if (user != null) {
			user.setPassword(DigestUtils.md5Hex("00000000"));
            user.setCompanyId(getCtxUser().getCompanyId());
			this.userService.save(user);
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
		LOG.debug("--------------------UserAction -> edit----------------");
		this.user = this.userService.get(id);
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------UserAction -> upd----------------");
		if (user != null) {
			ComUser u = this.userService.get(this.user.getUserId());
			u.setStatus(this.user.getStatus());
			u.setAddress(this.user.getAddress());
			u.setBirthday(this.user.getBirthday());
			u.setQq(this.user.getQq());
			u.setEmail(this.user.getEmail());
			u.setTelephone(this.user.getTelephone());
			u.setUserName(this.user.getUserName());
			this.user = this.userService.update(u);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		ComUser r = this.userService.get(this.user.getUserId());
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
		LOG.debug("--------------------UserAction -> del----------------");
		if (this.id != null) {
			commonService.update(SqlGrammar.newInstance()
					.update("status", "2")
					.eq("id", this.id)
					, ComUser.class);
		}
		msg="删除操作成功!";
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		ComUser r = this.userService.get(this.id);
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
		LOG.debug("--------------------UserAction -> load----------------");
		this.user = this.userService.get(id);
		return LOAD;
	}
	
	/**
	 * 给用户赋予角色
	 */
	public void saveUserRole() {
		StringBuilder sb = new StringBuilder();
		try {
			this.userRoleService.saveUserRole(userId, roles);
			sb.append("{\"success\":true}");
		} catch (Exception e) {
			e.printStackTrace();
			sb.append("{\"success\":false}");
		}
		outResponseJson(sb.toString());
	}

	public void loadMenu() {
		//权限初始化
		String out = null;
		out = this.userService.loadFunsByUser(this.getCtxUser().getUserId());
		System.out.println(out);
		outResponseJson(out);
		
	}
	
    /**密码修改**/
	public String changePwd() throws Exception {
		return SUCCESS;
	}
	/**修改密码保存**/
	public String upPwd()throws Exception{
		if (oldPassword.equalsIgnoreCase("")) {
			this.addActionMessage(this.getText("旧密码不能为空，请输入"));
			return INPUT;
		}
		if (newPassword.equalsIgnoreCase("")) {
			this.addActionMessage(this.getText("新密码不能为空，请输入"));
			return INPUT;
		}
		if (rePassword.equalsIgnoreCase("")) {
			this.addActionMessage(this.getText("确认密码不能为空，请输入"));
			return INPUT;
		}
		String userId = this.getCtxUser().getUserId();
		ComUser u = this.userService.get(userId);
		if (!oldPassword.equalsIgnoreCase("") && !DigestUtils.md5Hex(oldPassword).equals(u.getPassword())) {
			this.addActionMessage(this.getText("旧密码不正确，请重新输入"));
			this.oldPassword = "";
			this.newPassword = "";
			this.rePassword = "" ;
			return INPUT;
		}
		if(oldPassword.equals(newPassword)){
			this.addActionMessage(this.getText("新旧密码不能相同，请重新输入"));
			this.oldPassword = "";
			this.newPassword = "";
			this.rePassword = "" ;
			return INPUT;
		}
		if(!newPassword.equals(rePassword)){
			this.addActionMessage(this.getText("新密码与确认密码不相同，请重新输入"));
			this.oldPassword = "";
			this.newPassword = "";
			this.rePassword = "" ;
			return INPUT;
		}
		u.setPassword(DigestUtils.md5Hex(rePassword));
		this.userService.update(u);
		msg ="修改密码成功";
		this.oldPassword = "";
		this.newPassword = "";
		this.rePassword = "";
		return SUCCESS;
	}

//	--------------------------getter-and--setter------------------------------------
	
	public UserServiceImpl getUserService() {
		return userService;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public ComUser getUser() {
		return user;
	}
	public void setUser(ComUser user) {
		this.user = user;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public UserRoleServiceImpl getUserRoleService() {
		return userRoleService;
	}

	public void setUserRoleService(UserRoleServiceImpl userRoleService) {
		this.userRoleService = userRoleService;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public String getRePassword() {
		return rePassword;
	}

	public void setRePassword(String rePassword) {
		this.rePassword = rePassword;
	}

	
}
