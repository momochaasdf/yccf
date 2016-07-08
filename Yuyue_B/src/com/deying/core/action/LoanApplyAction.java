package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.LoanApply;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.LoanApplyService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class LoanApplyAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private LoanApplyService loanApplyService = null;
    
    private ComUser user = null;
    
    private LoanApply loanApply = null;
    
    private LoanApply iloanApply = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    private List<ComDict> dicList = null;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------loanApplyAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper loanApplyParams = CriteriaWrapper.newInstance();
        c.desc("crtTime");
        if (loginId != null)
        {
            c.like("loginId", loginId);
        }
        if (userName != null)
        {
            c.like("userName", userName);
        }
        if (status != null && status != 2)
        {
            c.eq("status", status.toString());
        }
        if (companyId != null)
        {
            c.eq("companyId", companyId);
        }
        if (status == null)
        {
            info.put("status", "2");
        }
        /*
         * dataPage = commonService.find(c , ComUser.class, currentPage, pageSize);
         */
        if (null != iloanApply)
        {
             
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(loanApplyParams, LoanApply.class, currentPage, pageSize);
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
        LOG.debug("--------------------loanApplyAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------loanApplyAction -> save----------------");
        
        if (loanApply != null)
        {
            String customerId = loanApply.getCustomerName().split("_")[0];
            String customerName = loanApply.getCustomerName().split("_")[1];
            loanApply.setCustomerId(customerId);
            loanApply.setCustomerName(customerName); 
            
            String EmployeeId = loanApply.getEmployeeName().split("_")[0];
            String EmployeeName = loanApply.getEmployeeName().split("_")[1];
            loanApply.setEmployeeId(EmployeeId);
            loanApply.setEmployeeName(EmployeeName);
            this.loanApplyService.save(loanApply);
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
    public String edit()
        throws Exception
    {
        LOG.debug("--------------------loanApplyAction -> edit----------------");
        this.user = this.userService.get(id);
        this.loanApply = this.loanApplyService.get(id);
        
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        this.dicList = commonService.find(dicParam, ComDict.class);
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
        LOG.debug("--------------------loanApplyAction -> upd----------------");
        if (loanApply != null)
        {
            String customerId = loanApply.getCustomerName().split("_")[0];
            String customerName = loanApply.getCustomerName().split("_")[1];
            loanApply.setCustomerId(customerId);
            loanApply.setCustomerName(customerName); 
            
            String EmployeeId = loanApply.getEmployeeName().split("_")[0];
            String EmployeeName = loanApply.getEmployeeName().split("_")[1];
            loanApply.setEmployeeId(EmployeeId);
            loanApply.setEmployeeName(EmployeeName);
            this.loanApply = this.loanApplyService.update(loanApply);
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
        LoanApply r = this.loanApplyService.get(this.loanApply.getLoanApplyId());
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
        LOG.debug("--------------------loanApplyAction -> del----------------");
        if (this.id != null)
        {
            this.loanApplyService.deleteById(this.id);
        }
        msg = "删除操作成功!";
        return list();
    }
    
    public boolean validateDel()
    {
        if (hasErrors())
        {
            return true;
        }
        LoanApply r = this.loanApplyService.get(this.id);
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
        LOG.debug("--------------------loanApplyAction -> load----------------");
        this.loanApply = this.loanApplyService.get(id);
        return LOAD;
    }
    
    public UserServiceImpl getUserService()
    {
        return userService;
    }
    
    public void setUserService(UserServiceImpl userService)
    {
        this.userService = userService;
    }
    
    public LoanApplyService getLoanApplyService()
    {
        return loanApplyService;
    }
    
    public void setLoanApplyService(LoanApplyService loanApplyService)
    {
        this.loanApplyService = loanApplyService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public LoanApply getLoanApply()
    {
        return loanApply;
    }
    
    public void setLoanApply(LoanApply loanApply)
    {
        this.loanApply = loanApply;
    }
    
    public LoanApply getIloanApply()
    {
        return iloanApply;
    }
    
    public void setIloanApply(LoanApply iloanApply)
    {
        this.iloanApply = iloanApply;
    }
    
    public String getId()
    {
        return id;
    }
    
    public void setId(String id)
    {
        this.id = id;
    }
    
    public String getUserId()
    {
        return userId;
    }
    
    public void setUserId(String userId)
    {
        this.userId = userId;
    }
    
    public String getLoginId()
    {
        return loginId;
    }
    
    public void setLoginId(String loginId)
    {
        this.loginId = loginId;
    }
    
    public String getUserName()
    {
        return userName;
    }
    
    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    
    public List<ComDict> getDicList()
    {
        return dicList;
    }
    
    public void setDicList(List<ComDict> dicList)
    {
        this.dicList = dicList;
    }
    
}
