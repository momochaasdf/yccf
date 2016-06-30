package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.OutApplyDao;
import com.deying.core.pojo.OutApply;
import com.deying.core.service.OutApplyService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("outApplyService")
public class OutApplyServiceImpl extends GenericServiceImpl<OutApply, String> implements OutApplyService {

	@Autowired
	public void setDao(OutApplyDao dao) {
		super.setDao(dao);
	}
}
