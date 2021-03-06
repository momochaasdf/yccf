package com.deying.core.service.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.LoanCustomerDao;
import com.deying.core.dao.user.UserDao;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.LoanCustomerService;
import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("loanCustomerService")
public class LoanCustomerServiceImpl extends GenericServiceImpl<LoanCustomer, String> implements LoanCustomerService {
	@Autowired
	public void setDao(LoanCustomerDao dao) {
		super.setDao(dao);
	}
}
