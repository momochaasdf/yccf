package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.directwebremoting.guice.RequestParameters;

import com.deying.core.pojo.FinancingRemind;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class FinancingRemindAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    private String id;
    
    private String type;
    
    private String dayType;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------FinancingRemindAction -> list----------------");
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        c.ne("status", "2");
        c.desc("crtTime");
        if (StringUtils.isNotBlank(type))
        {
            c.eq("type", type);
        }
        else
        {
            c.ne("type", "4");
          
        }
        if (StringUtils.isNotBlank(dayType))
        {
            c.eq("dayType", dayType);
            if(dayType.equals("2")){
            	c.eq("status", "1");	
            }
        }
        dataPage = commonService.find(c, FinancingRemind.class, currentPage, pageSize);
        @SuppressWarnings("unchecked")
        List<FinancingRemind> list = dataPage.getData();
        
        setTotalPage(dataPage.getTotalPageCount());
        return INPUT;
    }
    
    /**
	 * 删除
	 * 
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------GoodsStockAction -> del----------------");
		if (this.id != null) {
			CriteriaWrapper c = CriteriaWrapper.newInstance();
			c.eq("financingRemindId", this.id);
			List<FinancingRemind> remind = commonService.findList(c, FinancingRemind.class, currentPage,pageSize );
			if(!remind.isEmpty()){
				for(FinancingRemind r:remind){
					r.setStatus("2");
					commonService.update("rinancingRemind", r);
				}
			}
		}
		msg = "更新状态操作成功!";
		return list();
	}
    
	 /**
		 * 删除
		 * 
		 * @return
		 */
		public String remind() throws Exception {
			LOG.debug("--------------------GoodsStockAction -> del----------------");
			if (this.id != null) {
				CriteriaWrapper c = CriteriaWrapper.newInstance();
				c.eq("financingRemindId", this.id);
				List<FinancingRemind> remind = commonService.findList(c, FinancingRemind.class, currentPage,pageSize );
				if(!remind.isEmpty()){
					for(FinancingRemind r:remind){
						r.setStatus("0");
						commonService.update("rinancingRemind", r);
					}
				}
			}
			msg = "更新状态操作成功!";
			return list();
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
