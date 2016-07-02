package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.GoodsUsed;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.GoodsUsedService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class GoodsUsedAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private GoodsUsedService goodsUsedService = null;
    
    private ComUser user = null;
    
    private GoodsUsed goodsUsed = null;
    
    private GoodsUsed igoodsUsed = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------GoodsUsedAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper goodsUsedParams = CriteriaWrapper.newInstance();
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
        if (null != igoodsUsed)
        {
            if (StringUtils.isNotBlank(igoodsUsed.getGoodsName()))
            {
                goodsUsedParams.like("goodsName", igoodsUsed.getGoodsName().trim());
            }
            if (StringUtils.isNotBlank(igoodsUsed.getUserName()))
            {
                goodsUsedParams.like("userName", igoodsUsed.getUserName());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dataPage = commonService.find(goodsUsedParams, GoodsUsed.class, currentPage, pageSize);
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
        LOG.debug("--------------------GoodsUsedAction -> add----------------");
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------GoodsUsedAction -> save----------------");
        
        if (goodsUsed != null)
        {
            String userId = goodsUsed.getUserName().split("_")[0];
            String userName = goodsUsed.getUserName().split("_")[1];
            goodsUsed.setUserId(userId);
            goodsUsed.setUserName(userName);
            
            String goodsId = goodsUsed.getGoodsName().split("_")[0];
            String goodsName = goodsUsed.getGoodsName().split("_")[1];
            goodsUsed.setGoodsId(goodsId);
            goodsUsed.setGoodsName(goodsName);
            this.goodsUsedService.save(goodsUsed);
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
        LOG.debug("--------------------GoodsUsedAction -> edit----------------");
        this.goodsUsed = this.goodsUsedService.get(id);
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
        LOG.debug("--------------------GoodsUsedAction -> upd----------------");
        if (goodsUsed != null)
        {
            String userId = goodsUsed.getUserName().split("_")[0];
            String userName = goodsUsed.getUserName().split("_")[1];
            goodsUsed.setUserId(userId);
            goodsUsed.setUserName(userName);
            
            String goodsId = goodsUsed.getGoodsName().split("_")[0];
            String goodsName = goodsUsed.getGoodsName().split("_")[1];
            goodsUsed.setGoodsId(goodsId);
            goodsUsed.setGoodsName(goodsName);
            this.goodsUsed = this.goodsUsedService.update(goodsUsed);
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
        GoodsUsed r = this.goodsUsedService.get(this.goodsUsed.getGoodsUsedId());
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
        LOG.debug("--------------------GoodsUsedAction -> del----------------");
        if (this.id != null)
        {
            this.goodsUsedService.deleteById(this.id);
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
        GoodsUsed r = this.goodsUsedService.get(this.id);
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
        LOG.debug("--------------------GoodsUsedAction -> load----------------");
        this.goodsUsed = this.goodsUsedService.get(id);
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
    
    public GoodsUsedService getGoodsUsedService()
    {
        return goodsUsedService;
    }
    
    public void setGoodsUsedService(GoodsUsedService goodsUsedService)
    {
        this.goodsUsedService = goodsUsedService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public GoodsUsed getGoodsUsed()
    {
        return goodsUsed;
    }
    
    public void setGoodsUsed(GoodsUsed goodsUsed)
    {
        this.goodsUsed = goodsUsed;
    }
    
    public GoodsUsed getIgoodsUsed()
    {
        return igoodsUsed;
    }
    
    public void setIgoodsUsed(GoodsUsed igoodsUsed)
    {
        this.igoodsUsed = igoodsUsed;
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
    
   
    
}
