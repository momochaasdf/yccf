package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.DebtDao;
import com.deying.core.pojo.Debt;
import com.deying.core.service.DebtService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("debtService")
public class DebtServiceImpl extends GenericServiceImpl<Debt, String> implements DebtService {
	@Autowired
	public void setDao(DebtDao dao) {
		super.setDao(dao);
	}
}
