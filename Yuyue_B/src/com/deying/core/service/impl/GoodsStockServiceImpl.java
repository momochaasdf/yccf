package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.GoodsStockDao;
import com.deying.core.pojo.GoodsStock;
import com.deying.core.service.GoodsStockService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("goodsStockService")
public class GoodsStockServiceImpl extends GenericServiceImpl<GoodsStock, String> implements GoodsStockService {
	@Autowired
	public void setDao(GoodsStockDao dao) {
		super.setDao(dao);
	}
}
