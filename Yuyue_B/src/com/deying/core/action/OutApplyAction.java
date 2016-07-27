package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.OutApply;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.OutApplyService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class OutApplyAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private OutApplyService outApplyService = null;
    
    private ComUser user = null;
    
    private OutApply outApply = null;
    
    private OutApply ioutApply = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    private List<ComDict> dicList = null;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------outApplyAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper outApplyParams = CriteriaWrapper.newInstance();
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
        if (null != ioutApply)
        {
            if (StringUtils.isNotBlank(ioutApply.getUserName()))
            {
                outApplyParams.like("userName", ioutApply.getUserName().trim());
            }
            if (StringUtils.isNotBlank(ioutApply.getDepartmentId()))
            {
                outApplyParams.like("departmentId", ioutApply.getDepartmentId());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(outApplyParams, OutApply.class, currentPage, pageSize);
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
        LOG.debug("--------------------outApplyAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------outApplyAction -> save----------------");
        
        if (outApply != null)
        {
            String userId = outApply.getUserName().split("_")[0];
            String userName = outApply.getUserName().split("_")[1];
            outApply.setUserId(userId);
            outApply.setUserName(userName);
            
            String departmentId = outApply.getDepartmentId().split("_")[0];
            String departmentName = outApply.getDepartmentId().split("_")[1];
            outApply.setDepartmentId(departmentId);
            outApply.setDepartmentName(departmentName);
            
            outApply.setCompanyId(this.getCtxUser().getCompanyId());
            this.outApplyService.save(outApply);
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
        LOG.debug("--------------------outApplyAction -> edit----------------");
        this.user = this.userService.get(id);
        this.outApply = this.outApplyService.get(id);
        
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
        LOG.debug("--------------------outApplyAction -> upd----------------");
        if (outApply != null)
        {
            String userId = outApply.getUserName().split("_")[0];
            String userName = outApply.getUserName().split("_")[1];
            outApply.setUserId(userId);
            outApply.setUserName(userName);
            
            String departmentId = outApply.getDepartmentId().split("_")[0];
            String departmentName = outApply.getDepartmentId().split("_")[1];
            outApply.setDepartmentId(departmentId);
            outApply.setDepartmentName(departmentName);
            
            outApply.setCompanyId(this.getCtxUser().getCompanyId());

            this.outApply = this.outApplyService.update(outApply);
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
        OutApply r = this.outApplyService.get(this.outApply.getOutApplyId());
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
        LOG.debug("--------------------outApplyAction -> del----------------");
        if (this.id != null)
        {
            this.outApplyService.deleteById(this.id);
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
        OutApply r = this.outApplyService.get(this.id);
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
        LOG.debug("--------------------outApplyAction -> load----------------");
        this.outApply = this.outApplyService.get(id);
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
    
    public OutApplyService getOutApplyService()
    {
        return outApplyService;
    }
    
    public void setOutApplyService(OutApplyService outApplyService)
    {
        this.outApplyService = outApplyService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public OutApply getOutApply()
    {
        return outApply;
    }
    
    public void setOutApply(OutApply outApply)
    {
        this.outApply = outApply;
    }
    
    public OutApply getIoutApply()
    {
        return ioutApply;
    }
    
    public void setIoutApply(OutApply ioutApply)
    {
        this.ioutApply = ioutApply;
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
