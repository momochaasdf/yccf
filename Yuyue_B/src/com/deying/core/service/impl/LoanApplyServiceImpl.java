package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.LoanApplyDao;
import com.deying.core.pojo.LoanApply;
import com.deying.core.service.LoanApplyService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("loanApplyService")
public class LoanApplyServiceImpl extends GenericServiceImpl<LoanApply, String> implements LoanApplyService {

	@Autowired
	public void setDao(LoanApplyDao dao) {
		super.setDao(dao);
	}
}
