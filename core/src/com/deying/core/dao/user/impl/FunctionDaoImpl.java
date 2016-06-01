
package com.deying.core.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.user.FunctionDao;
import com.deying.core.pojo.user.ComFunction;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class FunctionDaoImpl extends GenericDaoImpl<ComFunction, String> implements FunctionDao {


}

