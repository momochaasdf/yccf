package com.deying.core.dao.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.DebtDao;
import com.deying.core.pojo.Debt;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class DebtDaoImpl extends GenericDaoImpl<Debt, String> implements DebtDao {

	
}
