package com.deying.core.action;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.UserSalary;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.UserSalaryService;
import com.deying.core.service.user.impl.UserRoleServiceImpl;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.sql.SqlGrammar;

public class UserSalaryAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private UserServiceImpl userService = null;

	@Autowired
	private UserRoleServiceImpl userRoleService = null;

	@Autowired
	private UserSalaryService userSalaryService = null;

	private ComUser user = null;

	private UserSalary userSalary = null;

	private UserSalary iuserSalary = null;

	private String id;

	private String userId;

	private String roles;

	private String oldPassword;

	private String newPassword;

	private String rePassword;

	private String loginId;

	private String userName;

	private List<ComUser> userList = null;

	public String list() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> list----------------");
		String companyId = this.getCtxUser().getCompanyId();
		String userId = this.getCtxUser().getUserId();
		String userName = this.getCtxUser().getUserName();
		String userRoleNames = this.getCtxUser().getRoleNames();

		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		CriteriaWrapper userSalaryParams = CriteriaWrapper.newInstance();
		c.desc("crtTime");

		if (userId != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.like("userId", userId);
		}
		if (userName != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.like("userName", userName);
		}
		if (companyId != null) {
			if (!userRoleNames.contains("总经理")) {
				c.eq("companyId", companyId);
			}
		}
		String userNameSearch = obtionInfoVal("userName", String.class);
		String month = obtionInfoVal("month", String.class);
		 
		if (StringUtils.isNotBlank(userNameSearch)) {
			c.like("userName", userNameSearch.trim());
		}
		if (StringUtils.isNotBlank(month)) {
			c.eq("month", month);
		}
		 
		dataPage = commonService.find(c, UserSalary.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> add----------------");
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		// 使用中的用户
		c.eq("status", "1");
		List<ComUser> userList = commonService.find(c, ComUser.class);
		this.userList = userList;
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> save----------------");

		if (userSalary != null) {
			String userId = userSalary.getUserName().split("_")[0];
			String userName = userSalary.getUserName().split("_")[1];
			userSalary.setUserId(userId);
			userSalary.setUserName(userName);
			userSalary.setCompanyId(this.getCtxUser().getCompanyId());
			userSalary.setStatus("0");
			this.userSalaryService.save(userSalary);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateSave() {
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 编辑对象加载
	 * 
	 * @return
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> edit----------------");
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		// 使用中的用户
		c.eq("status", "1");
		List<ComUser> userList = commonService.find(c, ComUser.class);
		this.userList = userList;
		this.userSalary = this.userSalaryService.get(id);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> upd----------------");
		if (userSalary != null) {
			UserSalary r = this.userSalaryService.get(this.userSalary.getSalaryId());
			if (type.equals("0")) {
				// 状态使用 之前的状态
				userSalary.setStatus(r.getStatus());
				String userId = userSalary.getUserName().split("_")[0];
				String userName = userSalary.getUserName().split("_")[1];
				userSalary.setUserId(userId);
				userSalary.setUserName(userName);
				this.userSalary = this.userSalaryService.update(userSalary);

			} else if (type.equals("2")) {
				//审核状态
				r.setStatus(userSalary.getStatus());
				this.userSalary = this.userSalaryService.update(r);
			}
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		UserSalary r = this.userSalaryService.get(this.userSalary.getSalaryId());
		if (r == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 删除
	 * 
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> del----------------");
		if (this.id != null) {
			this.userSalaryService.deleteById(this.id);
		}
		msg = "删除操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		UserSalary r = this.userSalaryService.get(this.id);
		if (r == null || this.id == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 查看对象
	 * 
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------UserSalaryAction -> load----------------");
		this.userSalary = this.userSalaryService.get(id);
		return LOAD;
	}

	// --------------------------getter-and--setter------------------------------------

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

	public UserSalary getUserSalary() {
		return userSalary;
	}

	public void setUserSalary(UserSalary userSalary) {
		this.userSalary = userSalary;
	}

	public UserSalaryService getUserSalaryService() {
		return userSalaryService;
	}

	public void setUserSalaryService(UserSalaryService userSalaryService) {
		this.userSalaryService = userSalaryService;
	}

	public UserSalary getIuserSalary() {
		return iuserSalary;
	}

	public void setIuserSalary(UserSalary iuserSalary) {
		this.iuserSalary = iuserSalary;
	}

	public List<ComUser> getUserList() {
		return userList;
	}

	public void setUserList(List<ComUser> userList) {
		this.userList = userList;
	}

}
