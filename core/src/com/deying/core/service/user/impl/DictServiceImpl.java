
package com.deying.core.service.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.user.DictDao;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.user.DictService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("dictService")
public class DictServiceImpl extends GenericServiceImpl<ComDict, String> implements DictService<ComDict, String> {

	public DictServiceImpl() {
	}

	@Autowired
	public void setDao(DictDao dao) {
		super.setDao(dao);
	}
	
}
