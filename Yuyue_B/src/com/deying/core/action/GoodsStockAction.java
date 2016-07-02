package com.deying.core.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.GoodsStock;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.GoodsStockService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class GoodsStockAction extends BaseMgrAction
{
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
    private UserServiceImpl userService = null;
    
    @Autowired
    private GoodsStockService goodsStockService = null;
    
    private ComUser user = null;
    
    private GoodsStock goodsStock = null;
    
    private GoodsStock igoodsStock = null;
    
    private String id;
    
    private String userId;
    
    private String loginId;
    
    private String userName;
    
    public String list()
        throws Exception
    {
        LOG.debug("--------------------GoodsStockAction -> list----------------");
        String companyId = this.getCtxUser().getCompanyId();
        String loginId = obtionInfoVal("loginId", String.class);
        String userName = obtionInfoVal("userName", String.class);
        Integer status = obtionInfoVal("status", Integer.class);
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        CriteriaWrapper goodsStockParams = CriteriaWrapper.newInstance();
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
        if (null != igoodsStock)
        {
            if (StringUtils.isNotBlank(igoodsStock.getGoodsName()))
            {
                goodsStockParams.like("goodsName", igoodsStock.getGoodsName().trim());
            }
            if (StringUtils.isNotBlank(igoodsStock.getStatus()))
            {
                goodsStockParams.eq("status", igoodsStock.getStatus());
            }
        }
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dataPage = commonService.find(goodsStockParams, GoodsStock.class, currentPage, pageSize);
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
        LOG.debug("--------------------GoodsStockAction -> add----------------");
        return ADD;
    }
    
    public String save()
        throws Exception
    {
        LOG.debug("--------------------GoodsStockAction -> save----------------");
        
        if (goodsStock != null)
        {
            this.goodsStockService.save(goodsStock);
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
        LOG.debug("--------------------GoodsStockAction -> edit----------------");
        this.goodsStock = this.goodsStockService.get(id);
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
        LOG.debug("--------------------GoodsStockAction -> upd----------------");
        if (goodsStock != null)
        {
            this.goodsStock = this.goodsStockService.update(goodsStock);
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
        GoodsStock r = this.goodsStockService.get(this.goodsStock.getGoodsId());
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
        LOG.debug("--------------------GoodsStockAction -> del----------------");
        if (this.id != null)
        {
            this.goodsStockService.deleteById(this.id);
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
        GoodsStock r = this.goodsStockService.get(this.id);
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
        LOG.debug("--------------------GoodsStockAction -> load----------------");
        this.goodsStock = this.goodsStockService.get(id);
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
    
    public GoodsStockService getGoodsStockService()
    {
        return goodsStockService;
    }
    
    public void setGoodsStockService(GoodsStockService goodsStockService)
    {
        this.goodsStockService = goodsStockService;
    }
    
    public ComUser getUser()
    {
        return user;
    }
    
    public void setUser(ComUser user)
    {
        this.user = user;
    }
    
    public GoodsStock getGoodsStock()
    {
        return goodsStock;
    }
    
    public void setGoodsStock(GoodsStock goodsStock)
    {
        this.goodsStock = goodsStock;
    }
    
    public GoodsStock getIgoodsStock()
    {
        return igoodsStock;
    }
    
    public void setIgoodsStock(GoodsStock igoodsStock)
    {
        this.igoodsStock = igoodsStock;
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
