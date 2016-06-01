
package com.deying.core.service.user;

import java.io.Serializable;

import com.deying.util.core.com.framework.hibernate3.GenericServer;

public interface UserService<T extends Serializable, PK extends Serializable> extends GenericServer<T, PK> {

	/**
	 *
	 * 加载用户对应的权�?
	 */
	public  String loadFunsByUser(String userId);
}
