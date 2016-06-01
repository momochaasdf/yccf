 
package com.deying.core.service.user;

import java.io.Serializable;

import com.deying.util.core.com.framework.hibernate3.GenericServer;

public interface UserRoleService<T extends Serializable, PK extends Serializable> extends GenericServer<T, PK> {

	/**
	 * 保存用户角色
	 * @param userId
	 * @param roles
	 */
	public void saveUserRole(String userId, String roles);
	
}
