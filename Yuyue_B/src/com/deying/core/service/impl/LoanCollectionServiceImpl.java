package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.LoanCollectionDao;
import com.deying.core.pojo.LoanCollection;
import com.deying.core.service.LoanCollectionService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("loanCollectionService")
public class LoanCollectionServiceImpl extends GenericServiceImpl<LoanCollection, String>
    implements LoanCollectionService
{
    @Autowired
    public void setDao(LoanCollectionDao dao)
    {
        super.setDao(dao);
    }
}
