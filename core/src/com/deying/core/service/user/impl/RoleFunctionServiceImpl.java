 
package com.deying.core.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.RoleFunctionDao;
import com.deying.core.pojo.user.ComRoleFunction;
import com.deying.core.service.user.RoleFunctionService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("roleFunctionService")
public class RoleFunctionServiceImpl extends GenericServiceImpl<ComRoleFunction, String> implements RoleFunctionService<ComRoleFunction, String> {

	public RoleFunctionServiceImpl() {
	}

	@Autowired
	public void setDao(RoleFunctionDao dao) {
		super.setDao(dao);
	}

}
