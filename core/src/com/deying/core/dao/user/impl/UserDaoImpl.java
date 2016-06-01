package com.deying.core.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.user.UserDao;
import com.deying.core.pojo.user.ComUser;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class UserDaoImpl extends GenericDaoImpl<ComUser, String> implements UserDao {


}

