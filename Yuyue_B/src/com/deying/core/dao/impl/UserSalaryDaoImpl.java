package com.deying.core.dao.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.UserSalaryDao;
import com.deying.core.pojo.UserSalary;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class UserSalaryDaoImpl extends GenericDaoImpl<UserSalary, String> implements UserSalaryDao {


}

