package com.deying.core.action;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.GoodsPurchase;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.GoodsPurchaseService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class GoodsPurchaseAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private UserServiceImpl userService = null;

	@Autowired
	private GoodsPurchaseService goodsPurchaseService = null;

	private ComUser user = null;

	private GoodsPurchase goodsPurchase = null;

	private GoodsPurchase igoodsPurchase = null;

	private String id;

	private String userId;

	private String loginId;

	private String userName;

	public String list() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> list----------------");
		String companyId = this.getCtxUser().getCompanyId();
		String userId = this.getCtxUser().getUserId();
		String userName = this.getCtxUser().getUserName();
		String userRoleNames = this.getCtxUser().getRoleNames();
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if (companyId != null) {
			if (!userRoleNames.contains("总经理")) {
				c.eq("companyId", companyId);
			}
		}

		if (null != igoodsPurchase) {
			if (StringUtils.isNotBlank(igoodsPurchase.getGoodsName())) {
				c.like("goodsName", igoodsPurchase.getGoodsName().trim());
			}
			if (StringUtils.isNotBlank(igoodsPurchase.getStatus())) {
				c.eq("status", igoodsPurchase.getStatus());
			}
		}
		dataPage = commonService.find(c, GoodsPurchase.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> add----------------");
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> save----------------");

		if (goodsPurchase != null) {
			String goodsId = goodsPurchase.getGoodsName();
			String goodsName = goodsPurchase.getGoodsName();
			goodsPurchase.setGoodsId(goodsId);
			goodsPurchase.setGoodsName(goodsName);
			goodsPurchase.setCompanyId(this.getCtxUser().getCompanyId());
			goodsPurchase.setStatus("1");
			this.goodsPurchaseService.save(goodsPurchase);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateSave() {
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 编辑对象加载
	 * 
	 * @return
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> edit----------------");
		this.goodsPurchase = this.goodsPurchaseService.get(id);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> upd----------------");
		if (goodsPurchase != null) {
			GoodsPurchase r = this.goodsPurchaseService.get(this.goodsPurchase.getGoodsPurchaseId());
			if (type.equals("1")) {
				String goodsId = goodsPurchase.getGoodsName();
				String goodsName = goodsPurchase.getGoodsName();
				r.setGoodsId(goodsId);
				r.setGoodsName(goodsName);
				r.setNums(goodsPurchase.getNums());
				r.setPrice(goodsPurchase.getPrice());
				r.setTotalPrice(goodsPurchase.getTotalPrice());
				if (StringUtils.isNotBlank(goodsPurchase.getStatus())) {
					r.setStatus(goodsPurchase.getStatus());
				}
			} else {
				r.setStatus(goodsPurchase.getStatus());
				r.setReviewPerson(this.getCtxUser().getUserName());
				r.setReviewTime(goodsPurchase.getReviewTime());
			}
			this.goodsPurchase = this.goodsPurchaseService.update(r);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		GoodsPurchase r = this.goodsPurchaseService.get(this.goodsPurchase.getGoodsPurchaseId());
		if (r == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 删除
	 * 
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> del----------------");
		if (this.id != null) {
			this.goodsPurchaseService.deleteById(this.id);
		}
		msg = "删除操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		GoodsPurchase r = this.goodsPurchaseService.get(this.id);
		if (r == null || this.id == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if (hasErrors()) {
			return true;
		}
		return false;
	}

	/**
	 * 查看对象
	 * 
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------GoodsPurchaseAction -> load----------------");
		this.goodsPurchase = this.goodsPurchaseService.get(id);
		return LOAD;
	}

	// --------------------------getter-and--setter------------------------------------
	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public GoodsPurchaseService getGoodsPurchaseService() {
		return goodsPurchaseService;
	}

	public void setGoodsPurchaseService(GoodsPurchaseService goodsPurchaseService) {
		this.goodsPurchaseService = goodsPurchaseService;
	}

	public ComUser getUser() {
		return user;
	}

	public void setUser(ComUser user) {
		this.user = user;
	}

	public GoodsPurchase getGoodsPurchase() {
		return goodsPurchase;
	}

	public void setGoodsPurchase(GoodsPurchase goodsPurchase) {
		this.goodsPurchase = goodsPurchase;
	}

	public GoodsPurchase getIgoodsPurchase() {
		return igoodsPurchase;
	}

	public void setIgoodsPurchase(GoodsPurchase igoodsPurchase) {
		this.igoodsPurchase = igoodsPurchase;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
