package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.PunchApply;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.PunchApplyService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class PunchApplyAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private PunchApplyService PunchApplyService = null;
    
    private ComUser user = null;
    
    private PunchApply PunchApply = null;
    
    private PunchApply iPunchApply = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    private List<ComDict> dicList = null;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------PunchApplyAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper PunchApplyParams = CriteriaWrapper.newInstance();
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
        if (null != iPunchApply)
        {
            if (StringUtils.isNotBlank(iPunchApply.getUserName()))
            {
                PunchApplyParams.like("userName", iPunchApply.getUserName().trim());
            }
            if (StringUtils.isNotBlank(iPunchApply.getDepartmentId()))
            {
                PunchApplyParams.like("departmentId", iPunchApply.getDepartmentId());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(PunchApplyParams, PunchApply.class, currentPage, pageSize);
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
        LOG.debug("--------------------PunchApplyAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------PunchApplyAction -> save----------------");
        
        if (PunchApply != null)
        {
            String userId = PunchApply.getUserName().split("_")[0];
            String userName = PunchApply.getUserName().split("_")[1];
            PunchApply.setUserId(userId);
            PunchApply.setUserName(userName);
            
            String departmentId = PunchApply.getDepartmentId().split("_")[0];
            String departmentName = PunchApply.getDepartmentId().split("_")[1];
            PunchApply.setDepartmentId(departmentId);
            PunchApply.setDepartmentName(departmentName);
            this.PunchApplyService.save(PunchApply);
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
        LOG.debug("--------------------PunchApplyAction -> edit----------------");
        this.user = this.userService.get(id);
        this.PunchApply = this.PunchApplyService.get(id);
        
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
        LOG.debug("--------------------PunchApplyAction -> upd----------------");
        if (PunchApply != null)
        {
            String userId = PunchApply.getUserName().split("_")[0];
            String userName = PunchApply.getUserName().split("_")[1];
            PunchApply.setUserId(userId);
            PunchApply.setUserName(userName);
            
            String departmentId = PunchApply.getDepartmentId().split("_")[0];
            String departmentName = PunchApply.getDepartmentId().split("_")[1];
            PunchApply.setDepartmentId(departmentId);
            PunchApply.setDepartmentName(departmentName);
            this.PunchApply = this.PunchApplyService.update(PunchApply);
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
        PunchApply r = this.PunchApplyService.get(this.PunchApply.getPunchApplyId());
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
        LOG.debug("--------------------PunchApplyAction -> del----------------");
        if (this.id != null)
        {
            this.PunchApplyService.deleteById(this.id);
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
        PunchApply r = this.PunchApplyService.get(this.id);
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
        LOG.debug("--------------------PunchApplyAction -> load----------------");
        this.PunchApply = this.PunchApplyService.get(id);
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
    
    public PunchApplyService getPunchApplyService()
    {
        return PunchApplyService;
    }
    
    public void setPunchApplyService(PunchApplyService PunchApplyService)
    {
        this.PunchApplyService = PunchApplyService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public PunchApply getPunchApply()
    {
        return PunchApply;
    }
    
    public void setPunchApply(PunchApply PunchApply)
    {
        this.PunchApply = PunchApply;
    }
    
    public PunchApply getIPunchApply()
    {
        return iPunchApply;
    }
    
    public void setIPunchApply(PunchApply iPunchApply)
    {
        this.iPunchApply = iPunchApply;
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
