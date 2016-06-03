package com.deying.core.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;
import org.springframework.stereotype.Repository;

import com.deying.core.dao.FinancingCustomerDao;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.user.ComUserRole;
import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class FinancingCustomerDaoImpl extends GenericDaoImpl<FinancingCustomer, String> implements FinancingCustomerDao {

	
}
