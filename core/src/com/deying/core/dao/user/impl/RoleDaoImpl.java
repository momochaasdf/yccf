package com.deying.core.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.user.RoleDao;
import com.deying.core.pojo.user.ComRole;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class RoleDaoImpl extends GenericDaoImpl<ComRole, String> implements RoleDao {


}
