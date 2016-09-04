/**
 * 
 */
package com.deying.core.action;

import java.util.Iterator;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.deying.core.pojo.BirthdayRemind;
import com.deying.core.pojo.FinancingRemind;
import com.deying.core.pojo.HolidayRemind;
import com.deying.core.pojo.Notice;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComRole;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.core.service.element.IMessageService;
import com.deying.core.service.user.impl.DictServiceImpl;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.core.util.MenuSet;
import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.core.com.framework.struts2.UserContext;
import com.deying.util.core.com.framework.struts2.UserContextImpl;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.http.HttpUtil;
import com.deying.util.security.SecurityUtils;

public class LoginAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	@Resource
	private UserServiceImpl userService;
	@Resource
	private IMessageService messageService;
	@Resource
	private DictServiceImpl dictService;

	private String loginId;
	private String password;
	private String saveLoginId;

	public String login() throws Exception {
		SecurityUtils.invalidSession(ServletActionContext.getRequest().getSession(false));
		// 登录验证
		ComUser user = this.userService.findUniqueByProperty("loginId", this.loginId);

		if (user == null) {
			msg = "loginfalse";
			return INPUT;
		}
		if (!user.getPassword().equals(DigestUtils.md5Hex(password))) {
			msg = "loginfalse";
			return INPUT;
		}
		// if
		// (!FUserEnum.ACTIVED.getValue().toString().equals(user.getStatus())) {
		// msg="userfalse";
		// return INPUT;
		// }else
		// if(FUserEnum.DELETE.getValue().toString().equals(user.getStatus())){
		// msg = "userDelete";
		// return INPUT;
		// }
		if (StringUtils.isNotBlank(saveLoginId) && saveLoginId.equals("1")) {
			HttpUtil.addCookie("backName", loginId, 5 * 24 * 60 * 60, ServletActionContext.getResponse());
		}

		UserContext uc = new UserContextImpl();
		uc.setUserId(user.getUserId());
		uc.setUserName(user.getUserName());
		uc.setLoginId(user.getLoginId());
		uc.setCompanyId(user.getCompanyId());
		uc.setDepartmentId(user.getDepartmentId());
		uc.setDepartmentName(user.getDepartmentName());
		// 取得公司名称
		ComDict dict = (ComDict) this.dictService.findUniqueByProperty("dictCode", user.getCompanyId());
		uc.setCompanyName(dict.getDictName());

		// 取得用户角色
		Iterator<ComUserRole> it = user.getComUserRoles().iterator();
		String roleStr = "";
		while (it.hasNext()) {
			ComUserRole userRole = it.next();
			ComRole role = userRole.getComRole();
			roleStr += role.getRoleName() + ",";
		}

		// // 取得用户角色
		// ComUser userRoles =
		// this.commonService.get(CriteriaWrapper.newInstance()
		// .eq("userId", user.getUserId())
		// , ComUser.class, "comUserRoles");
		//
		// Set<ComUserRole> setUserRoles = userRoles.getComUserRoles();
		// String[] roleIds = new String[setUserRoles.size()];
		// Iterator<ComUserRole> it = setUserRoles.iterator();
		// int i = 0;
		// while (it.hasNext()) {
		// ComUserRole userRole = it.next();
		// roleIds[i] = userRole.getId();
		// i++;
		// }
		//
		// List<ComRole> roles =
		// this.commonService.find(CriteriaWrapper.newInstance()
		// .in("roleId", roleIds)
		// , ComRole.class);
		// String roleStr = "";
		// for (ComRole role : roles) {
		// roleStr += role.getRoleName() + ",";
		// }
		uc.setRoleNames(roleStr);

		long count = messageService.getUnreadAlertMsgCount(1001);
		
			CriteriaWrapper c = CriteriaWrapper.newInstance();
			String companyId = this.getCtxUser().getCompanyId();
			String userRoleNames = this.getCtxUser().getRoleNames();
			// 节假日提醒
			CriteriaWrapper holiday = CriteriaWrapper.newInstance();
			holiday.eq("status", "1");
			Long holiday_count = commonService.count(holiday, HolidayRemind.class);
			this.ctx.setSessionAttr("holiday_count", holiday_count);
			// 理财客户生日提醒
			CriteriaWrapper birthday = CriteriaWrapper.newInstance();
			String[] statuss = { "1", "3", "4" };
			birthday.in("status", statuss);
			Long birthday_count = commonService.count(birthday, BirthdayRemind.class);
			this.ctx.setSessionAttr("birthday_count", birthday_count);
			// 理财7天提醒
			CriteriaWrapper fin7 = CriteriaWrapper.newInstance();
			fin7.eq("dayType", "1");
			fin7.eq("status", "1");
			fin7.ne("type", "4");
			Long fin7_count = commonService.count(fin7, FinancingRemind.class);
			this.ctx.setSessionAttr("fin7_count", fin7_count);
			// 理财一天提醒
			CriteriaWrapper fin1 = CriteriaWrapper.newInstance();
			fin1.eq("dayType", "2");
			fin1.ne("status", "2");
			fin1.ne("type", "4");
			Long fin1_count = commonService.count(fin1, FinancingRemind.class);
			this.ctx.setSessionAttr("fin1_count", fin1_count);
			// 年年红月月返提醒
			CriteriaWrapper nnhM = CriteriaWrapper.newInstance();
			nnhM.eq("status", "1");
			nnhM.eq("dayType", "3");
			nnhM.eq("type", "4");
			Long nnhM_count = commonService.count(nnhM, FinancingRemind.class);
			this.ctx.setSessionAttr("nnhM_count", nnhM_count);
			// 年年红七天提醒
			CriteriaWrapper nnh7 = CriteriaWrapper.newInstance();
			nnh7.eq("status", "1");
			nnh7.eq("dayType", "1");
			nnh7.eq("type", "4");
			Long nnh7_count = commonService.count(nnh7, FinancingRemind.class);
			this.ctx.setSessionAttr("nnh7_count", nnh7_count);
			// 年年红一天提醒
			CriteriaWrapper nnh1 = CriteriaWrapper.newInstance();
			nnh1.ne("status", "2");
			nnh1.eq("dayType", "2");
			nnh1.eq("type", "4");
			Long nnh1_count = commonService.count(nnh1, FinancingRemind.class);
			this.ctx.setSessionAttr("nnh1_count", nnh1_count);
			// 通知提醒
			CriteriaWrapper notice = CriteriaWrapper.newInstance();
			notice.eq("companyId", companyId);
			notice.eq("status", "1");
			Long notice_count = commonService.count(notice, Notice.class);
			this.ctx.setSessionAttr("notice_count", notice_count);
		 
		// 把当前未读的信息数量存session
		this.ctx.setSessionAttr(FileConstants.UNREAD_MSG_COUNT, count);

		this.ctx.setSessionAttr(Constants.USER_KEY, uc);
		// 把菜单存session
		new MenuSet().obtionMenu(user.getUserId());

		return SUCCESS;
	}

	public String exit() throws Exception {
		SecurityUtils.invalidSession(ServletActionContext.getRequest().getSession(false));
		return INPUT;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public String getSaveLoginId() {
		return saveLoginId;
	}

	public void setSaveLoginId(String saveLoginId) {
		this.saveLoginId = saveLoginId;
	}

	public IMessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(IMessageService messageService) {
		this.messageService = messageService;
	}

	public DictServiceImpl getDictService() {
		return dictService;
	}

	public void setDictService(DictServiceImpl dictService) {
		this.dictService = dictService;
	}

}
