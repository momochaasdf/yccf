package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.PunchApplyDao;
import com.deying.core.pojo.PunchApply;
import com.deying.core.service.PunchApplyService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("punchApplyService")
public class PunchApplyServiceImpl extends GenericServiceImpl<PunchApply, String> implements PunchApplyService {

	@Autowired
	public void setDao(PunchApplyDao dao) {
		super.setDao(dao);
	}
}
