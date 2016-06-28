package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.UserSalaryDao;
import com.deying.core.pojo.UserSalary;
import com.deying.core.service.UserSalaryService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("userSalaryService")
public class UserSalaryServiceImpl extends GenericServiceImpl<UserSalary, String> implements UserSalaryService {

	@Autowired
	public void setDao(UserSalaryDao dao) {
		super.setDao(dao);
	}
}
