package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Punished;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.PunishedService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class PunishedAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private PunishedService punishedService = null;
    
    private ComUser user = null;
    
    private Punished punished = null;
    
    private Punished ipunished = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    private List<ComDict> dicList = null;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------PunishedAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper punishedParams = CriteriaWrapper.newInstance();
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
        if (null != ipunished)
        {
            if (StringUtils.isNotBlank(ipunished.getUserName()))
            {
                punishedParams.like("userName", ipunished.getUserName().trim());
            }
            if (StringUtils.isNotBlank(ipunished.getDepartmentId()))
            {
                punishedParams.like("departmentId", ipunished.getDepartmentId());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(punishedParams, Punished.class, currentPage, pageSize);
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
        LOG.debug("--------------------PunishedAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------PunishedAction -> save----------------");
        
        if (punished != null)
        {
            String userId = punished.getUserName().split("_")[0];
            String userName = punished.getUserName().split("_")[1];
            punished.setUserId(userId);
            punished.setUserName(userName);
            
            String departmentId = punished.getDepartmentId().split("_")[0];
            String departmentName = punished.getDepartmentId().split("_")[1];
            punished.setDepartmentId(departmentId);
            punished.setDepartmentName(departmentName);
            this.punishedService.save(punished);
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
        LOG.debug("--------------------PunishedAction -> edit----------------");
        this.user = this.userService.get(id);
        this.punished = this.punishedService.get(id);
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
        LOG.debug("--------------------PunishedAction -> upd----------------");
        if (punished != null)
        {
            String userId = punished.getUserName().split("_")[0];
            String userName = punished.getUserName().split("_")[1];
            punished.setUserId(userId);
            punished.setUserName(userName);
            
            String departmentId = punished.getDepartmentId().split("_")[0];
            String departmentName = punished.getDepartmentId().split("_")[1];
            punished.setDepartmentId(departmentId);
            punished.setDepartmentName(departmentName);
            this.punished = this.punishedService.update(punished);
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
        Punished r = this.punishedService.get(this.punished.getPunishedId());
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
        LOG.debug("--------------------PunishedAction -> del----------------");
        if (this.id != null)
        {
            this.punishedService.deleteById(this.id);
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
        Punished r = this.punishedService.get(this.id);
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
        LOG.debug("--------------------PunishedAction -> load----------------");
        this.punished = this.punishedService.get(id);
        return LOAD;
    }
    
    // --------------------------getter-and--setter------------------------------------
    public UserServiceImpl getUserService()
    {
        return userService;
    }
    
    public void setUserService(UserServiceImpl userService)
    {
        this.userService = userService;
    }
    
    public PunishedService getPunishedService()
    {
        return punishedService;
    }
    
    public void setPunishedService(PunishedService punishedService)
    {
        this.punishedService = punishedService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public Punished getPunished()
    {
        return punished;
    }
    
    public void setPunished(Punished punished)
    {
        this.punished = punished;
    }
    
    public Punished getIpunished()
    {
        return ipunished;
    }
    
    public void setIpunished(Punished ipunished)
    {
        this.ipunished = ipunished;
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
