/**
 * 
 */
package com.deying.core.action;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.element.IMessageService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.core.util.MenuSet;
import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.core.com.framework.struts2.UserContext;
import com.deying.util.core.com.framework.struts2.UserContextImpl;
import com.deying.util.http.HttpUtil;
import com.deying.util.security.SecurityUtils;

public class LoginAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	@Resource
	private UserServiceImpl userService;
	@Resource
	private IMessageService messageService;
	
	private String loginId;
	private String password;
	private String saveLoginId;
	
	public String login() throws Exception {
		SecurityUtils.invalidSession(ServletActionContext.getRequest().getSession(false));
		//登录验证
		ComUser user = this.userService.findUniqueByProperty("loginId", this.loginId);
		
		if (user == null) {
			msg="loginfalse";
			return INPUT;
		}
		if(!user.getPassword().equals(DigestUtils.md5Hex(password))){
			msg="loginfalse";
			return INPUT;
		}
//		if (!FUserEnum.ACTIVED.getValue().toString().equals(user.getStatus())) {
//			msg="userfalse";
//			return INPUT;
//		}else if(FUserEnum.DELETE.getValue().toString().equals(user.getStatus())){
//			msg = "userDelete";
//			return INPUT;
//		}
		if(StringUtils.isNotBlank(saveLoginId) && saveLoginId.equals("1")){
			HttpUtil.addCookie("backName", loginId, 
					5*24*60*60,ServletActionContext.getResponse());
		}
		
		UserContext uc = new UserContextImpl();
		uc.setUserId(user.getUserId());
		uc.setUserName(user.getUserName());
		uc.setLoginId(user.getLoginId());
		

		long count = messageService.getUnreadAlertMsgCount(1001);
		//把当前未读的信息数量存session
		this.ctx.setSessionAttr(FileConstants.UNREAD_MSG_COUNT, count);
		
		this.ctx.setSessionAttr(Constants.USER_KEY, uc);
		//把菜单存session
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

}
