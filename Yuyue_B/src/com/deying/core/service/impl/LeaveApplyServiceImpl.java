package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.LeaveApplyDao;
import com.deying.core.pojo.LeaveApply;
import com.deying.core.service.LeaveApplyService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("leaveApplyService")
public class LeaveApplyServiceImpl extends GenericServiceImpl<LeaveApply, String> implements LeaveApplyService {

	@Autowired
	public void setDao(LeaveApplyDao dao) {
		super.setDao(dao);
	}
}
