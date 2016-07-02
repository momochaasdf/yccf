package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.GoodsPurchaseDao;
import com.deying.core.pojo.GoodsPurchase;
import com.deying.core.service.GoodsPurchaseService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("goodsPurchaseService")
public class GoodsPurchaseServiceImpl extends GenericServiceImpl<GoodsPurchase, String> implements GoodsPurchaseService {
	@Autowired
	public void setDao(GoodsPurchaseDao dao) {
		super.setDao(dao);
	}
}
