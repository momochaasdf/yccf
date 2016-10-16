package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Financing;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.FinancingService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class FinancingAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private FinancingService financingService = null;
    
    private Financing financing = null;
    
    private Financing ifinancing = null;
    
    private List<ComDict> dicList = null;
    
    private String id;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------BackupAction -> list----------------");
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        if (null != ifinancing)
        {
            if (StringUtils.isNotBlank(ifinancing.getType()))
            {
                c.eq("type", ifinancing.getType().trim());
            }
            if (StringUtils.isNotBlank(ifinancing.getFinancingName()))
            {
                c.like("financingName", ifinancing.getFinancingName().trim());
            }
        }
        dataPage = commonService.find(c, Financing.class, currentPage, pageSize);
        setTotalPage(dataPage.getTotalPageCount());
        return LIST;
    }
    
    /**
     * 新增对象保存
     * 
     * @return
     */
    public String add()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financing_type");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> save----------------");
        if (financing != null)
        {
            financing.setCompanyId(this.getCtxUser().getCompanyId());
            if(!"6".equals(financing.getType())){
            	financing.setAnnualizedRateEnd(null);
            	financing.setMonthsEnd(null);
            }
            this.financingService.save(financing);
            this.addActionMessage(this.getText("do.success.back"));
        }
        return list();
    }
    
    public boolean validateSave()
    {
        if (hasErrors())
        {
            return true;
        }
        return false;
    }
    
    /**
     * 编辑对象加载
     * 
     * @return
     */
    /**
     * @return
     * @throws Exception
     */
    public String edit()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> edit----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financing_type");
        dicList = commonService.find(dicParam, ComDict.class);
        this.financing = this.financingService.get(id);
        return EDIT;
    }
    
    /**
     * 编辑对象保存
     * 
     * @return
     */
    public String upd()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> upd----------------");
        if (financing != null)
        {
            financing.setCompanyId(this.getCtxUser().getCompanyId());
            if(!"6".equals(financing.getType())){
            	financing.setAnnualizedRateEnd(null);
            	financing.setMonthsEnd(null);
            }
            this.financing = this.financingService.update(financing);
            this.addActionMessage(this.getText("do.success.back"));
        }
        return list();
    }
    
    public boolean validateUpd()
    {
        if (hasErrors())
        {
            return true;
        }
        Financing r = this.financingService.get(this.financing.getFinancingId());
        if (r == null)
        {
            this.addActionError(this.getText("err.no.entity"));
        }
        if (hasErrors())
        {
            return true;
        }
        return false;
    }
    
    /**
     * 删除
     * 
     * @return
     */
    public String del()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> del----------------");
        if (this.id != null)
        {
            this.financingService.deleteById(this.id);
        }
        msg = "操作成功!";
        return list();
    }
    
    public boolean validateDel()
    {
        if (hasErrors())
        {
            return true;
        }
        Financing r = this.financingService.get(this.id);
        if (r == null || this.id == null)
        {
            this.addActionError(this.getText("err.no.entity"));
        }
        if (hasErrors())
        {
            return true;
        }
        return false;
    }
    
    /**
     * 查看对象
     * 
     * @return
     */
    public String load()
        throws Exception
    {
        LOG.debug("--------------------FinancingAction -> load----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financing_type");
        dicList = commonService.find(dicParam, ComDict.class);
        this.financing = this.financingService.get(id);
        return LOAD;
    }
    
    public String getId()
    {
        return id;
    }
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public List<ComDict> getDicList()
    {
        return dicList;
    }
    
    public void setDicList(List<ComDict> dicList)
    {
        this.dicList = dicList;
    }
    
    public Financing getFinancing()
    {
        return financing;
    }
    
    public void setFinancing(Financing financing)
    {
        this.financing = financing;
    }
    
    public FinancingService getFinancingService()
    {
        return financingService;
    }
    
    public void setFinancingService(FinancingService financingService)
    {
        this.financingService = financingService;
    }
    
    public Financing getIfinancing()
    {
        return ifinancing;
    }
    
    public void setIfinancing(Financing ifinancing)
    {
        this.ifinancing = ifinancing;
    }
    
}
