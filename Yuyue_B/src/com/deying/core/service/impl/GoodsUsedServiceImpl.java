package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.GoodsUsedDao;
import com.deying.core.pojo.GoodsUsed;
import com.deying.core.service.GoodsUsedService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("goodsUsedService")
public class GoodsUsedServiceImpl extends GenericServiceImpl<GoodsUsed, String> implements GoodsUsedService {
	@Autowired
	public void setDao(GoodsUsedDao dao) {
		super.setDao(dao);
	}
}
