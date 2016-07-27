package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Reward;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.RewardService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class RewardAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private RewardService rewardService = null;
    
    private ComUser user = null;
    
    private Reward reward = null;
    
    private Reward ireward = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    private List<ComDict> dicList = null;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------RewardAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper RewardParams = CriteriaWrapper.newInstance();
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
        if (null != ireward)
        {
            if (StringUtils.isNotBlank(ireward.getUserName()))
            {
                RewardParams.like("userName", ireward.getUserName().trim());
            }
            if (StringUtils.isNotBlank(ireward.getDepartmentId()))
            {
                RewardParams.like("departmentId", ireward.getDepartmentId());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(RewardParams, Reward.class, currentPage, pageSize);
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
        LOG.debug("--------------------RewardAction -> add----------------");
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------RewardAction -> save----------------");
        
        if (reward != null)
        {
            String userId = reward.getUserName().split("_")[0];
            String userName = reward.getUserName().split("_")[1];
            reward.setUserId(userId);
            reward.setUserName(userName);
            
            String departmentId = reward.getDepartmentId().split("_")[0];
            String departmentName = reward.getDepartmentId().split("_")[1];
            reward.setDepartmentId(departmentId);
            reward.setDepartmentName(departmentName);
            
            reward.setCompanyId(this.getCtxUser().getCompanyId());
            this.rewardService.save(reward);
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
        LOG.debug("--------------------RewardAction -> edit----------------");
        this.user = this.userService.get(id);
        this.reward = this.rewardService.get(id);
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
        LOG.debug("--------------------RewardAction -> upd----------------");
        if (reward != null)
        {
            String userId = reward.getUserName().split("_")[0];
            String userName = reward.getUserName().split("_")[1];
            reward.setUserId(userId);
            reward.setUserName(userName);
            
            String departmentId = reward.getDepartmentId().split("_")[0];
            String departmentName = reward.getDepartmentId().split("_")[1];
            reward.setDepartmentId(departmentId);
            reward.setDepartmentName(departmentName);
            
            reward.setCompanyId(this.getCtxUser().getCompanyId());

            this.reward = this.rewardService.update(reward);
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
        Reward r = this.rewardService.get(this.reward.getRewardId());
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
        LOG.debug("--------------------RewardAction -> del----------------");
        if (this.id != null)
        {
            this.rewardService.deleteById(this.id);
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
        Reward r = this.rewardService.get(this.id);
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
        LOG.debug("--------------------RewardAction -> load----------------");
        this.reward = this.rewardService.get(id);
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
    
    public RewardService getRewardService()
    {
        return rewardService;
    }
    
    public void setRewardService(RewardService rewardService)
    {
        this.rewardService = rewardService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public Reward getReward()
    {
        return reward;
    }
    
    public void setReward(Reward reward)
    {
        this.reward = reward;
    }
    
    public Reward getIreward()
    {
        return ireward;
    }
    
    public void setIreward(Reward ireward)
    {
        this.ireward = ireward;
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
