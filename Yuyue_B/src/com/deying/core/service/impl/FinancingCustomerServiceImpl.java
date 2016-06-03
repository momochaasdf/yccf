package com.deying.core.service.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.FinancingCustomerDao;
import com.deying.core.dao.user.UserDao;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.FinancingCustomerService;
import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("financingCustomerService")
public class FinancingCustomerServiceImpl extends GenericServiceImpl<FinancingCustomer, String> implements FinancingCustomerService{
	@Autowired
	public void setDao(FinancingCustomerDao dao) {
		super.setDao(dao);
	}
}
