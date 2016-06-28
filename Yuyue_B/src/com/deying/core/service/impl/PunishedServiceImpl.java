package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.PunishedDao;
import com.deying.core.pojo.Punished;
import com.deying.core.service.PunishedService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("punishedService")
public class PunishedServiceImpl extends GenericServiceImpl<Punished, String> implements PunishedService {

	@Autowired
	public void setDao(PunishedDao dao) {
		super.setDao(dao);
	}
}
