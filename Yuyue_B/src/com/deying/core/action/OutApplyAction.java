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
		String userId = this.getCtxUser().getUserId();
		String userName = this.getCtxUser().getUserName();
		String userRoleNames = this.getCtxUser().getRoleNames();
        
        this.currentPage = this.currentPage == null ? 1 : this.currentPage;
        CriteriaWrapper c = CriteriaWrapper.newInstance();
        c.desc("crtTime");
        if (userId != null) {
			if (type.equals("1"))
				c.like("userId", userId);
		}
		if (userName != null) {
			if (type.equals("1"))
				c.like("userName", userName);
		}
		if (companyId != null) {
			if (!userRoleNames.contains("总经理")) {
				c.eq("companyId", companyId);
			}
		}
        
		String userNameSearch = obtionInfoVal("userName", String.class);
		String departmentId = obtionInfoVal("departmentId", String.class);  
		 
		if (StringUtils.isNotBlank(userNameSearch)) {
			c.like("userName", userNameSearch.trim());
		}
		if (StringUtils.isNotBlank(departmentId)) {
			c.eq("departmentId", departmentId);
		}
        CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
        dicParam.eq("dictTypeCode", "department_code");
        dicList = commonService.find(dicParam, ComDict.class);
        dataPage = commonService.find(c, OutApply.class, currentPage, pageSize);
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
        	outApply.setUserId(this.getCtxUser().getUserId());
			outApply.setUserName(this.getCtxUser().getUserName());
 
			outApply.setDepartmentId(this.getCtxUser().getDepartmentId());
			outApply.setDepartmentName(this.getCtxUser().getDepartmentName());

			outApply.setCompanyId(this.getCtxUser().getCompanyId());
			outApply.setStatus("0");
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
        	OutApply r = this.outApplyService.get(this.outApply.getOutApplyId());
        	if (type.equals("1")) {
				r.setApplyStartTime(outApply.getApplyStartTime());
				r.setApplyEndTime(outApply.getApplyEndTime());
				r.setReason(outApply.getReason());
			} else if (type.equals("2")) {
				r.setReviewPerson(this.getCtxUser().getUserName());
				r.setReviewTime(outApply.getReviewTime());
				r.setStatus(outApply.getStatus());
			}
 
            this.outApply = this.outApplyService.update(r);
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
