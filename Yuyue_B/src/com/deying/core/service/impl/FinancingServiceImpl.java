package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.FinancingDao;
import com.deying.core.pojo.Financing;
import com.deying.core.service.FinancingService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("financingService")
public class FinancingServiceImpl extends GenericServiceImpl<Financing, String> implements FinancingService {
	@Autowired
	public void setDao(FinancingDao dao) {
		super.setDao(dao);
	}
}
