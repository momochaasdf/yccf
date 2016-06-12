package com.deying.util.bo;

import java.io.Serializable;

/**
 * @author wangxj
 * Apr 7, 2013
 * 
 */
public class User implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String userId;
	private String userName;
	private String password;
	private String companyId;
	
	
	public User(){
		super();
	}

	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	
}
