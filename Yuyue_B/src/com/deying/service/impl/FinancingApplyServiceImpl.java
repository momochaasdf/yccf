package com.deying.service.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.UserDao;
import com.deying.core.pojo.user.ComDict;
import com.deying.dao.FinancingApplyDao;
import com.deying.pojo.FinancingApply;
import com.deying.service.FinancingApplyService;
import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("financingApplyService")
public class FinancingApplyServiceImpl extends GenericServiceImpl<FinancingApply, String> implements FinancingApplyService {
	@Autowired
	public void setDao(FinancingApplyDao dao) {
		super.setDao(dao);
	}
}
