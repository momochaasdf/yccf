package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.DebtRelDao;
import com.deying.core.pojo.DebtRel;
import com.deying.core.service.DebtRelService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("debtRelService")
public class DebtRelServiceImpl extends GenericServiceImpl<DebtRel, String> implements DebtRelService {
	@Autowired
	public void setDao(DebtRelDao dao) {
		super.setDao(dao);
	}
}
