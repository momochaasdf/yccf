package com.deying.core.action;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

import com.deying.core.pojo.FinancingStatistic;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class FinancingStatisticAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    private String id;
    
    private  FinancingStatistic statistic;
    public String list()
        throws Exception
    {
        LOG.debug("--------------------BackupAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
		String userRoleNames = this.getCtxUser().getRoleNames();
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        c.desc("crtTime");
        
          // 总经理可以看到所有的 公司的信息
 		if (companyId != null) {
 			if(!userRoleNames.contains("总经理")){
 			 c.eq("companyId", companyId);
 			}
 		}
 		if(null!=statistic){
 			if(StringUtils.isNotBlank(statistic.getTimeRange())){
 				c.eq("timeRange", statistic.getTimeRange());
 			}
 			if(StringUtils.isNotBlank(statistic.getEmployeeName())){
 				c.eq("employeeName", statistic.getEmployeeName());
 			}
 		}
        dataPage = commonService.find(c, FinancingStatistic.class, currentPage, pageSize);
        @SuppressWarnings("unchecked")
        List<FinancingStatistic> list = dataPage.getData();
        
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

	public FinancingStatistic getStatistic() {
		return statistic;
	}

	public void setStatistic(FinancingStatistic statistic) {
		this.statistic = statistic;
	}
    
}
