
package com.deying.core.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.user.UserRoleDao;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class UserRoleDaoImpl extends GenericDaoImpl<ComUserRole, String> implements UserRoleDao {
	

}

