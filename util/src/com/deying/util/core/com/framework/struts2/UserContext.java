package com.deying.util.core.com.framework.struts2;

public interface UserContext {

	public String getUserId();
	
	public String getLoginId();
	
	public String getUserName();
	
	public String getCompanyId();
	
	public void setUserId(String userId);
	
	public void setLoginId(String loginId);
	
	public void setUserName(String userName);
	
	public void setCompanyId(String companyId);
}
