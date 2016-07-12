package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.FinancingApplyService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class FinancingApplyAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private FinancingApplyService financingApplyService = null;
    
    private FinancingApply financingApply = null;
    
    private FinancingApply ifinancingApply = null;
    
    private List<ComDict> dicList = null;
    
    private String id;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------BackupAction -> list----------------");
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        if (null != ifinancingApply)
        {
            if (StringUtils.isNotBlank(ifinancingApply.getType()))
            {
                c.eq("type", ifinancingApply.getType().trim());
            }
        }
        dataPage = commonService.find(c, FinancingApply.class, currentPage, pageSize);
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
        LOG.debug("--------------------FinancingApplyAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financing_type");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------FinancingApplyAction -> save----------------");
        if (financingApply != null)
        {
            String customerId = financingApply.getCustomerName().split("_")[0];
            String customerName = financingApply.getCustomerName().split("_")[1];
            financingApply.setCustomerId(customerId);
            financingApply.setCustomerName(customerName); 
            
            String EmployeeId = financingApply.getEmployeeName().split("_")[0];
            String EmployeeName = financingApply.getEmployeeName().split("_")[1];
            financingApply.setEmployeeId(EmployeeId);
            financingApply.setEmployeeName(EmployeeName);
            this.financingApplyService.save(financingApply);
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
        LOG.debug("--------------------FinancingApplyAction -> edit----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financing_type");
        dicList = commonService.find(dicParam, ComDict.class);
        this.financingApply = this.financingApplyService.get(id);
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
        LOG.debug("--------------------FinancingApplyAction -> upd----------------");
        if (financingApply != null)
        {
            String customerId = financingApply.getCustomerName().split("_")[0];
            String customerName = financingApply.getCustomerName().split("_")[1];
            financingApply.setCustomerId(customerId);
            financingApply.setCustomerName(customerName); 
            
            String EmployeeId = financingApply.getEmployeeName().split("_")[0];
            String EmployeeName = financingApply.getEmployeeName().split("_")[1];
            financingApply.setEmployeeId(EmployeeId);
            financingApply.setEmployeeName(EmployeeName);
            //this.financingApplyService.save(financingApply);
            this.financingApply = this.financingApplyService.update(financingApply);
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
        FinancingApply r = this.financingApplyService.get(this.financingApply.getFinancingApplyId());
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
        LOG.debug("--------------------FinancingApplyAction -> del----------------");
        if (this.id != null)
        {
            this.financingApplyService.deleteById(this.id);
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
        FinancingApply r = this.financingApplyService.get(this.id);
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
        LOG.debug("--------------------FinancingApplyAction -> load----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "financingApply_type");
        dicList = commonService.find(dicParam, ComDict.class);
        this.financingApply = this.financingApplyService.get(id);
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
    
    public FinancingApply getFinancingApply()
    {
        return financingApply;
    }
    
    public void setFinancingApply(FinancingApply financingApply)
    {
        this.financingApply = financingApply;
    }
    
    public FinancingApplyService getFinancingApplyService()
    {
        return financingApplyService;
    }
    
    public void setFinancingApplyService(FinancingApplyService financingApplyService)
    {
        this.financingApplyService = financingApplyService;
    }
    
    public FinancingApply getIfinancingApply()
    {
        return ifinancingApply;
    }
    
    public void setIfinancingApply(FinancingApply ifinancingApply)
    {
        this.ifinancingApply = ifinancingApply;
    }
    
}
