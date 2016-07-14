package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.FinancingRemindDao;
import com.deying.core.pojo.FinancingRemind;
import com.deying.core.service.FinancingRemindService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("financingRemindService")
public class FinancingRemindServiceImpl extends GenericServiceImpl<FinancingRemind, String>
    implements FinancingRemindService
{
    @Autowired
    public void setDao(FinancingRemindDao dao)
    {
        super.setDao(dao);
    }
}
