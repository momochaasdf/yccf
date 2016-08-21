package com.deying.util.core.com.framework.struts2;

public interface UserContext {

	public String getUserId();
	
	public String getLoginId();
	
	public String getUserName();
	
	public String getCompanyId();
	
	public String getCompanyName();
	
	public String getRoleNames();
	
	public String getDepartmentId();
	
	public String getDepartmentName();
	
	public void setUserId(String userId);
	
	public void setLoginId(String loginId);
	
	public void setUserName(String userName);
	
	public void setCompanyId(String companyId);
	
	public void setCompanyName(String companyName);
	
	public void setRoleNames(String roleNames);
	
	public void setDepartmentId(String departmentId);
	
	public void setDepartmentName(String departmentName);
}
