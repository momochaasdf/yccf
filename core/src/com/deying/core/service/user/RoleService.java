package com.deying.core.service.user;

import java.io.Serializable;

import com.deying.util.core.com.framework.hibernate3.GenericServer;

public interface RoleService<T extends Serializable, PK extends Serializable> extends GenericServer<T, PK> {

	/**
	 * 角色授权
	 * @param roleId
	 * @param funs
	 */
	public void saveRoleFuns(String roleId, String funs);
}
