package com.deying.core.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.BeanUtilsBean2;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Debt;
import com.deying.core.pojo.DebtRel;
import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.LoanApply;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.DebtRelService;
import com.deying.core.service.DebtService;
import com.deying.core.service.FinancingApplyService;
import com.deying.core.service.FinancingCustomerService;
import com.deying.core.service.LoanApplyService;
import com.deying.core.service.LoanCustomerService;
import com.deying.core.service.user.impl.DictServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class DebtAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private DebtService debtService = null;

	@Autowired
	private DebtRelService debtRelService = null;

	@Autowired
	private FinancingApplyService financingApplyService = null;
	@Autowired
	private LoanApplyService loanApplyService = null;

	private FinancingApply financingApply = null;

	@Autowired
	private FinancingCustomerService financingCustomerService = null;
	@Autowired
	private DictServiceImpl dictService = null;

	private FinancingCustomer customer = null;

	private DebtRel debtRel = null;

	private Debt debt = null;

	private Debt idebt = null;

	private List<ComDict> dicList = null;

	private List<FinancingApply> financingApplyList = null;

	private List<LoanApply> loanApplyList = null;

	private List<Debt> debtList = null;
	private List<DebtRel> debtRelList = null;
	private String id;

	private Integer page = null;

	private LoanApply loanApply = null;

	private LoanApply iloanApply = null;

	private String financingApplyId = null;

	private String haveMoney = null;

	private String needMoney = null;

	@Autowired
	private LoanCustomerService loanCustomerService = null;

	private LoanCustomer loanCustomer = null;

	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");
		this.start = this.start == null ? 1 : this.start;
		currentPage = this.start / pageSize + 1;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		String status = obtionInfoVal("status", String.class);
		String customerName = obtionInfoVal("customerName", String.class);
		if (null != idebt) {
			if (StringUtils.isNotBlank(customerName)) {

				// c.eq("type", idebt.getType().trim());
			}
			if (StringUtils.isNotBlank(status)) {
				c.eq("status", idebt.getStatus());
			}
		} else {
			CriteriaWrapper apply = CriteriaWrapper.newInstance();
			dataPage = commonService.find(apply, FinancingApply.class, currentPage, pageSize);
			List<FinancingApply> financingApplyList = dataPage.getData();
			debtList = new ArrayList<Debt>();
			for (FinancingApply applyInfo : financingApplyList) {
				CriteriaWrapper dede = CriteriaWrapper.newInstance();
				dede.eq("financingApplyId", applyInfo.getFinancingApplyId());
				List<Debt> currentList = commonService.find(dede, Debt.class);
				Debt currentDebt = null;
				if (!currentList.isEmpty()) {
					currentDebt = currentList.get(0);
				}
				debt = new Debt();
				debt.setCustomerName(applyInfo.getCustomerName());
				debt.setContractId(applyInfo.getContractId());
				debt.setFinancingEndTime(applyInfo.getFinancingEndTime());
				Long money = applyInfo.getMoney();
				debt.setMoney(money.toString());
				debt.setNoDebtsMoney(applyInfo.getNoDebtsMoney());
				if (null != currentDebt) {
					debt.setStatus(currentDebt.getStatus());
				} else {
					if ("1".equals(applyInfo.getStatus())) {
						debt.setStatus("0");
					} else {
						debt.setStatus("2");
					}
				}
				debt.setDebtId(applyInfo.getFinancingApplyId());
				debtList.add(debt);
			}
			dataPage.setData(debtList);
		}
		// dataPage = commonService.find(c, Debt.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	public String save() throws Exception {
		LOG.debug("--------------------DebtAction -> save----------------");
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("financingApplyId", debt.getFinancingApplyId());
		debtList = commonService.find(c, Debt.class);
		if (!debtList.isEmpty()) {
			Debt i = debtList.get(0);
			i.setMoneyOutBack(debt.getMoneyOutBack());
			i.setStartMonery(debt.getStartMonery());
			i.setManageMoney(debt.getManageMoney());
			i.setStartTime(debt.getStartTime());
			this.debtService.update(i);
		} else {
			debt.setCompanyId(this.getCtxUser().getCompanyId());
			debt.setStatus("1");
			this.debtService.save(debt);
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
	/**
	 * @return
	 * @throws Exception
	 */
	public String loan() throws Exception {
		LOG.debug("--------------------DebtAction -> edit----------------");
		String companyId = this.getCtxUser().getCompanyId();
		String userId = this.getCtxUser().getUserId();
		String userName = this.getCtxUser().getUserName();
		String userRoleNames = this.getCtxUser().getRoleNames();
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if (userId != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.like("employeeId", userId);
		}
		if (userName != null) {
			if (!userRoleNames.contains("总经理") && type.equals("1"))
				c.like("employeeName", userName);
		}
		if (companyId != null) {
			if (!userRoleNames.contains("总经理")) {
				c.eq("companyId", companyId);
			}
		}
		if (null != iloanApply) {
			if (StringUtils.isNotBlank(iloanApply.getCustomerName())) {
				c.like("customerName", iloanApply.getCustomerName().trim());
			}
			if (StringUtils.isNotBlank(iloanApply.getRepaymentStatus())) {
				c.eq("repaymentStatus", iloanApply.getRepaymentStatus());
			}
			if (StringUtils.isNotBlank(iloanApply.getType())) {
				c.eq("type", iloanApply.getType());
			}
			if (StringUtils.isNotBlank(iloanApply.getStatus())) {
				c.eq("status", iloanApply.getStatus());
			}
		}
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "department_code");
		dicList = commonService.find(dicParam, ComDict.class);
		dataPage = commonService.find(c, LoanApply.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return "loan";
	}

	/**
	 * 编辑对象加载
	 * 
	 * @return
	 */
	/**
	 * @return
	 * @throws Exception
	 */
	public String relation() throws Exception {
		LOG.debug("--------------------DebtAction -> edit----------------");
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("financingApplyId", financingApplyId);
		debtList = commonService.find(c, Debt.class);
		debtRel = new DebtRel();
		if (!debtList.isEmpty()) {
			this.debt = debtList.get(0);
			debtRel.setFinancingApplyId(financingApplyId);
			this.financingApply = this.financingApplyService.get(financingApplyId);
			if (null != this.financingApply) {
				haveMoney = this.financingApply.getNoDebtsMoney();
			}
		}
		this.loanApply = this.loanApplyService.get(id);
		if (null != this.loanApply) {
			needMoney = this.loanApply.getNoRelMoney();
			debtRel.setLoanApplyId(id);
			debtRel.setLoanMoney(this.loanApply.getNoRelMoney());
			debtRel.setMonths(this.loanApply.getMonths());
			debtRel.setLoanStartTime(this.loanApply.getLoanStartTime());
			// debtRel.setSurplusDate(this.);
			this.loanCustomer = this.loanCustomerService.get(this.loanApply.getCustomerId());
			if (null != this.loanCustomer) {
				debtRel.setCardId(this.loanCustomer.getCardId());
				debtRel.setCustomerName(this.loanCustomer.getCustomerName());
			}
		}

		CriteriaWrapper rel = CriteriaWrapper.newInstance();
		rel.eq("financingApplyId", financingApplyId);
		rel.eq("loanApplyId", id);
		debtRelList = commonService.find(rel, DebtRel.class);
		if (debtRelList.size() > 0) {
			DebtRel debtR = debtRelList.get(0);
			debtRel.setRate(debtR.getRate());
			debtRel.setLoanMoney(debtR.getLoanMoney());
			debtRel.setLoanProfession(debtR.getLoanProfession());
			debtRel.setLoanReason(debtR.getLoanReason());
			debtRel.setConsideration(debtR.getConsideration());
			debtRel.setDebtRelId(debtR.getDebtRelId());
		}
		return "relation";
	}

	public String relSave() throws Exception {
		LOG.debug("--------------------DebtAction -> save----------------");
		if (StringUtils.isNotBlank(debtRel.getDebtRelId())) {
			debtRelService.update(debtRel);
		} else {
			debtRelService.save(debtRel);
		}
		return list();
	}

	/**
	 * 编辑对象加载
	 * 
	 * @return
	 */
	/**
	 * @return
	 * @throws Exception
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------DebtAction -> edit----------------");
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("financingApplyId", id);
		debtList = commonService.find(c, Debt.class);
		if (!debtList.isEmpty()) {
			this.debt = debtList.get(0);
		} else {
			this.financingApply = this.financingApplyService.get(id);
			if (null != financingApply) {
				debt = new Debt();
				debt.setCustomerName(financingApply.getCustomerName());
				debt.setContractId(financingApply.getContractId());
				debt.setFinancingApplyId(financingApply.getFinancingApplyId());
				debt.setFinancingEndTime(financingApply.getFinancingEndTime());
				Long money = financingApply.getMoney();
				debt.setMoney(money.toString());
				debt.setExpireMoney(financingApply.getExpireMoney().toString());
				debt.setNoDebtsMoney(financingApply.getNoDebtsMoney());
				debt.setStatus("0");
				debt.setDebtId(financingApply.getFinancingApplyId());
				Date now = new Date();
				Date financingStartDate = financingApply.getFinancingStartTime();
				Date startDate = now;
				if (null != financingStartDate) {
					startDate = financingStartDate.getTime() > now.getTime() ? financingStartDate : now;
				}
				debt.setStartTime(startDate);
				this.customer = this.financingCustomerService.get(financingApply.getCustomerId());

				debt.setAddress(this.customer.getAddress());
				debt.setCardId(this.customer.getCardId());
			}
		}
		return EDIT;
	}

	/**
	 * 查看对象
	 * 
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------DebtAction -> load----------------");
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "debt_type");
		dicList = commonService.find(dicParam, ComDict.class);
		this.debt = this.debtService.get(id);
		return LOAD;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public List<ComDict> getDicList() {
		return dicList;
	}

	public void setDicList(List<ComDict> dicList) {
		this.dicList = dicList;
	}

	public Debt getDebt() {
		return debt;
	}

	public void setDebt(Debt debt) {
		this.debt = debt;
	}

	public DebtService getDebtService() {
		return debtService;
	}

	public void setDebtService(DebtService debtService) {
		this.debtService = debtService;
	}

	public Debt getIdebt() {
		return idebt;
	}

	public void setIdebt(Debt idebt) {
		this.idebt = idebt;
	}

	public List<FinancingApply> getFinancingApplyList() {
		return financingApplyList;
	}

	public void setFinancingApplyList(List<FinancingApply> financingApplyList) {
		this.financingApplyList = financingApplyList;
	}

	public List<LoanApply> getLoanApplyList() {
		return loanApplyList;
	}

	public void setLoanApplyList(List<LoanApply> loanApplyList) {
		this.loanApplyList = loanApplyList;
	}

	public List<Debt> getDebtList() {
		return debtList;
	}

	public void setDebtList(List<Debt> debtList) {
		this.debtList = debtList;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public FinancingApplyService getFinancingApplyService() {
		return financingApplyService;
	}

	public void setFinancingApplyService(FinancingApplyService financingApplyService) {
		this.financingApplyService = financingApplyService;
	}

	public FinancingApply getFinancingApply() {
		return financingApply;
	}

	public void setFinancingApply(FinancingApply financingApply) {
		this.financingApply = financingApply;
	}

	public FinancingCustomerService getFinancingCustomerService() {
		return financingCustomerService;
	}

	public void setFinancingCustomerService(FinancingCustomerService financingCustomerService) {
		this.financingCustomerService = financingCustomerService;
	}

	public DictServiceImpl getDictService() {
		return dictService;
	}

	public void setDictService(DictServiceImpl dictService) {
		this.dictService = dictService;
	}

	public FinancingCustomer getCustomer() {
		return customer;
	}

	public void setCustomer(FinancingCustomer customer) {
		this.customer = customer;
	}

	public LoanApply getLoanApply() {
		return loanApply;
	}

	public void setLoanApply(LoanApply loanApply) {
		this.loanApply = loanApply;
	}

	public LoanApply getIloanApply() {
		return iloanApply;
	}

	public void setIloanApply(LoanApply iloanApply) {
		this.iloanApply = iloanApply;
	}

	public String getFinancingApplyId() {
		return financingApplyId;
	}

	public void setFinancingApplyId(String financingApplyId) {
		this.financingApplyId = financingApplyId;
	}

	public LoanApplyService getLoanApplyService() {
		return loanApplyService;
	}

	public void setLoanApplyService(LoanApplyService loanApplyService) {
		this.loanApplyService = loanApplyService;
	}

	public LoanCustomerService getLoanCustomerService() {
		return loanCustomerService;
	}

	public void setLoanCustomerService(LoanCustomerService loanCustomerService) {
		this.loanCustomerService = loanCustomerService;
	}

	public LoanCustomer getLoanCustomer() {
		return loanCustomer;
	}

	public void setLoanCustomer(LoanCustomer loanCustomer) {
		this.loanCustomer = loanCustomer;
	}

	public DebtRel getDebtRel() {
		return debtRel;
	}

	public void setDebtRel(DebtRel debtRel) {
		this.debtRel = debtRel;
	}

	public String getHaveMoney() {
		return haveMoney;
	}

	public void setHaveMoney(String haveMoney) {
		this.haveMoney = haveMoney;
	}

	public String getNeedMoney() {
		return needMoney;
	}

	public void setNeedMoney(String needMoney) {
		this.needMoney = needMoney;
	}

	public DebtRelService getDebtRelService() {
		return debtRelService;
	}

	public void setDebtRelService(DebtRelService debtRelService) {
		this.debtRelService = debtRelService;
	}

	public List<DebtRel> getDebtRelList() {
		return debtRelList;
	}

	public void setDebtRelList(List<DebtRel> debtRelList) {
		this.debtRelList = debtRelList;
	}

}
