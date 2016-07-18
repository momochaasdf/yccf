package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.directwebremoting.guice.RequestParameters;

import com.deying.core.pojo.FinancingNnhDetail;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class FinancingNnhDetailAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    private String id;
    
    private String type;
    
    private String dayType;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------FinancingNnhDetailAction -> list----------------");
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        c.desc("crtTime");
        dataPage = commonService.find(c, FinancingNnhDetail.class, currentPage, pageSize);
        @SuppressWarnings("unchecked")
        List<FinancingNnhDetail> list = dataPage.getData();
        
        setTotalPage(dataPage.getTotalPageCount());
        return INPUT;
    }
    
    public String getId()
    {
        return id;
    }
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public String getType()
    {
        return type;
    }
    
    public void setType(String type)
    {
        this.type = type;
    }
    
    public String getDayType()
    {
        return dayType;
    }
    
    public void setDayType(String dayType)
    {
        this.dayType = dayType;
    }
    
}
