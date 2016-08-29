package com.deying.core.action;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.pojo.UserTeam;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.FinancingCustomerService;
import com.deying.core.service.user.impl.DictServiceImpl;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CustomerFinancingAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory.getLogger(CustomerFinancingAction.class);

	private static final long serialVersionUID = 1L;

	@Autowired
	private FinancingCustomerService financingCustomerService = null;
	@Autowired
	private DictServiceImpl dictService = null;
	//
	private FinancingCustomer customer = null;
	//
	private String id;
	/**
	 * 证件类型
	 */
	private Map<String, String> cardTypeMap;

	public FinancingCustomer getCustomer() {
		return customer;
	}

	public void setCustomer(FinancingCustomer customer) {
		this.customer = customer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map<String, String> getCardTypeMap() {
		return cardTypeMap;
	}

	public void setFinancingCustomerService(FinancingCustomerService financingCustomerService) {
		this.financingCustomerService = financingCustomerService;
	}

	public void setDictService(DictServiceImpl dictService) {
		this.dictService = dictService;
	}

	private List<ComUser> userList = null;

	private void init() {
		Condition[] conds = new Condition[1];
		conds[0] = OrderBy.desc("sortNo");
		ComDict inDict = new ComDict();
		inDict.setDictTypeCode("card_type");
		List<ComDict> dictList = dictService.listAll(inDict, MatchMode.EXACT, conds, null);
		cardTypeMap = new TreeMap<String, String>();
		if (null != dictList && 0 != dictList.size()) {
			for (ComDict dict : dictList) {
				cardTypeMap.put(dict.getDictCode(), dict.getDictName());
			}
		}
	}

	public String list() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> list----------------");
		String userId = this.getCtxUser().getUserId();
		String customerName = obtionInfoVal("customerName", String.class);
		String cardId = obtionInfoVal("cardId", String.class);
		String telephone = obtionInfoVal("telephone", String.class);
		String cardType = obtionInfoVal("cardType", String.class);
		String userRoleNames = this.getCtxUser().getRoleNames();
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;

		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if (customerName != null) {
			c.like("customerName", customerName);
		}
		if (cardId != null) {
			c.like("cardId", cardId);
		}
		if (telephone != null) {
			c.like("telephone", telephone);
		}
		if (cardType != null) {
			c.eq("cardType", cardType);
		}
		if ((userRoleNames.contains("总经理") || userRoleNames.contains("理财总监"))) {

		} else if (userRoleNames.contains("理财团队经理")) {
			// 查询出该团队经理 已经关联的用户
			CriteriaWrapper c1 = CriteriaWrapper.newInstance();
			List<UserTeam> teamList = null;
			c1.eq("userId", userId);
			teamList = commonService.find(c1, UserTeam.class);
			List<String> userIdList = new ArrayList<>();
			for (UserTeam team : teamList) {
				userIdList.add(team.getTeamUserId());
			}
			if (userIdList.isEmpty()) {
				c.eq("employeeId", "0");
			} else {
				Object[] userIds = userIdList.toArray();
				c.in("employeeId", userIds);
			}
		} else if (userRoleNames.contains("理财经理")) {
			c.eq("employeeId", userId);
		}
		dataPage = commonService.find(c, FinancingCustomer.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		init();
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		init();
		LOG.debug("--------------------FinancingCustomerAction -> add----------------");
		CriteriaWrapper customerParam = CriteriaWrapper.newInstance();
		userList = commonService.find(customerParam, ComUser.class);
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> save----------------");
		if (customer != null) {
			customer.setCompanyId(this.getCtxUser().getCompanyId());

			String EmployeeId = customer.getEmployeeName().split("_")[0];
			String EmployeeName = customer.getEmployeeName().split("_")[1];
			customer.setEmployeeId(EmployeeId);
			customer.setEmployeeName(EmployeeName);
			this.financingCustomerService.save(customer);
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
		init();
		LOG.debug("--------------------FinancingCustomerAction -> edit----------------");
		this.customer = this.financingCustomerService.get(id);
		CriteriaWrapper customerParam = CriteriaWrapper.newInstance();
		userList = commonService.find(customerParam, ComUser.class);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> upd----------------");
		if (customer != null) {
			FinancingCustomer existCustomer = this.financingCustomerService.get(customer.getCustomerId());
			existCustomer.setCustomerName(customer.getCustomerName());
			existCustomer.setBirthdayType(customer.getBirthdayType());
			existCustomer.setCardId(customer.getCardId());
			existCustomer.setCardType(customer.getCardType());
			existCustomer.setTelephone(customer.getTelephone());
			existCustomer.setAddress(customer.getAddress());
			existCustomer.setBirthday(customer.getBirthday());
			String EmployeeId = customer.getEmployeeName().split("_")[0];
			String EmployeeName = customer.getEmployeeName().split("_")[1];
			existCustomer.setEmployeeId(EmployeeId);
			existCustomer.setEmployeeName(EmployeeName);
			this.customer = this.financingCustomerService.update(existCustomer);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		FinancingCustomer customer = this.financingCustomerService.get(this.customer.getCustomerId());
		if (customer == null) {
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
		LOG.debug("--------------------FinancingCustomerAction -> del----------------");
		if (this.id != null) {
			this.financingCustomerService.deleteById(this.id);
		}
		msg = "操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		FinancingCustomer r = this.financingCustomerService.get(this.id);
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
		LOG.debug("--------------------FinancingCustomerAction -> load----------------");
		this.customer = this.financingCustomerService.get(id);
		init();
		return LOAD;
	}

	public List<ComUser> getUserList() {
		return userList;
	}

	public void setUserList(List<ComUser> userList) {
		this.userList = userList;
	}

}
