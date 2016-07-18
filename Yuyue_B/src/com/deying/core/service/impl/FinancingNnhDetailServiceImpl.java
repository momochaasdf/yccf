package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.FinancingNnhDetailDao;
import com.deying.core.pojo.FinancingNnhDetail;
import com.deying.core.service.FinancingNnhDetailService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("financingNnhDetailService")
public class FinancingNnhDetailServiceImpl extends GenericServiceImpl<FinancingNnhDetail, String>
    implements FinancingNnhDetailService
{
    @Autowired
    public void setDao(FinancingNnhDetailDao dao)
    {
        super.setDao(dao);
    }
}
