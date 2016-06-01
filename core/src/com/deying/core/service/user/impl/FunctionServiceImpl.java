
package com.deying.core.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.FunctionDao;
import com.deying.core.pojo.user.ComFunction;
import com.deying.core.service.user.FunctionService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("functionService")
public class FunctionServiceImpl extends GenericServiceImpl<ComFunction, String> implements FunctionService<ComFunction, String> {

	public FunctionServiceImpl() {
	}

	@Autowired
	public void setDao(FunctionDao dao) {
		super.setDao(dao);
	}

}
