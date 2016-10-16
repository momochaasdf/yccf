package com.deying.core.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.LoanApply;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.LoanApplyService;
import com.deying.core.service.LoanCustomerService;
import com.deying.core.service.user.impl.UserServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.excel.TempltUtil;

public class LoanApplyAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private UserServiceImpl userService = null;

	@Autowired
	private LoanApplyService loanApplyService = null;

	@Autowired
	private LoanCustomerService loanCustomerService = null;

	private ComUser user = null;

	private LoanApply loanApply = null;

	private LoanApply iloanApply = null;

	private String id;

	private String userId;

	private String loginId;

	private String userName;
	
	private String userRoleNames;

	private List<ComDict> dicList = null;

	private List<ComUser> userList = null;

	private List<LoanCustomer> customerList = null;

	public String list() throws Exception {
		LOG.debug("--------------------loanApplyAction -> list----------------");
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
		this.userRoleNames = userRoleNames;
		dicList = commonService.find(dicParam, ComDict.class);
		dataPage = commonService.find(c, LoanApply.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------loanApplyAction -> add----------------");
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "department_code");
		dicList = commonService.find(dicParam, ComDict.class);

		CriteriaWrapper c = CriteriaWrapper.newInstance();
		customerList = commonService.find(c, LoanCustomer.class);
		// 使用中的用户
		c.eq("status", "1");
		List<ComUser> userList = commonService.find(c, ComUser.class);
		this.userList = userList;
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------loanApplyAction -> save----------------");
		CriteriaWrapper criteriaWrapper = CriteriaWrapper.newInstance();
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "loan_contract_code");
		dicList = commonService.find(dicParam, ComDict.class);
		String pic = "";
		if (null != dicList) {
			pic = dicList.get(0).getDictCode();
		}
		Long count = commonService.count(criteriaWrapper, LoanApply.class) + 1;

		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		StringBuffer sb = new StringBuffer();
		int num = 8 - count.toString().length();
		for (int i = 0; i < num; i++) {
			sb.append("0");
		}
		sb.append(count);
		String code = pic + year + "-" + sb.toString();
		
		if (loanApply != null) {
			String customerId = loanApply.getCustomerName().split("_")[0];
			String customerName = loanApply.getCustomerName().split("_")[1];
			loanApply.setCustomerId(customerId);
			loanApply.setCustomerName(customerName);
			loanApply.setContractId(code);
			String EmployeeId = loanApply.getEmployeeName().split("_")[0];
			String EmployeeName = loanApply.getEmployeeName().split("_")[1];
			loanApply.setEmployeeId(EmployeeId);
			loanApply.setEmployeeName(EmployeeName);
			loanApply.setCompanyId(this.getCtxUser().getCompanyId());
			loanApply.setStatus("0");
			this.loanApplyService.save(loanApply);
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
		LOG.debug("--------------------loanApplyAction -> edit----------------");
		this.user = this.userService.get(id);
		this.loanApply = this.loanApplyService.get(id);

		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "department_code");
		this.dicList = commonService.find(dicParam, ComDict.class);

		CriteriaWrapper c = CriteriaWrapper.newInstance();
		customerList = commonService.find(c, LoanCustomer.class);
		
		// 使用中的用户
		c.eq("status", "1");
		List<ComUser> userList = commonService.find(c, ComUser.class);
		this.userList = userList;
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------loanApplyAction -> upd----------------");
		if (loanApply != null) {
			LoanApply r = this.loanApplyService.get(this.loanApply.getLoanApplyId());
			if (type.equals("0")) {
				String customerId = loanApply.getCustomerName().split("_")[0];
				String customerName = loanApply.getCustomerName().split("_")[1];
				loanApply.setCustomerId(customerId);
				loanApply.setCustomerName(customerName);

				String EmployeeId = loanApply.getEmployeeName().split("_")[0];
				String EmployeeName = loanApply.getEmployeeName().split("_")[1];
				loanApply.setEmployeeId(EmployeeId);
				loanApply.setEmployeeName(EmployeeName);
				loanApply.setStatus(r.getStatus());
				loanApply.setRefuseReason(r.getRefuseReason());
				loanApply.setReviewTime(r.getReviewTime());
				this.loanApply = this.loanApplyService.update(loanApply);
			} else {
				r.setStatus(loanApply.getStatus());
				r.setReviewPerson(this.getCtxUser().getUserName());
				r.setRefuseReason(loanApply.getRefuseReason());
				r.setReviewTime(loanApply.getReviewTime());
				this.loanApply = this.loanApplyService.update(r);
			}
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		LoanApply r = this.loanApplyService.get(this.loanApply.getLoanApplyId());
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
		LOG.debug("--------------------loanApplyAction -> del----------------");
		if (this.id != null) {
			this.loanApplyService.deleteById(this.id);
		}
		msg = "删除操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		LoanApply r = this.loanApplyService.get(this.id);
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
		LOG.debug("--------------------loanApplyAction -> load----------------");
		this.loanApply = this.loanApplyService.get(id);
		return LOAD;
	}

	@SuppressWarnings({ "unchecked", "unchecked" })
	private boolean getData(HttpServletResponse response, HttpServletRequest request, Map dataMap, String id) {
		LoanApply r = this.loanApplyService.get(id);
		if (null != r) {
			try {
				Calendar startTime = Calendar.getInstance();// 定义日期实例
				Calendar endTime = Calendar.getInstance();// 定义日期实例
				LoanCustomer existCustomer = this.loanCustomerService.get(r.getCustomerId());
				dataMap.put("customerName", existCustomer.getCustomerName());
				dataMap.put("address", existCustomer.getAddress());
				dataMap.put("telephone", existCustomer.getTelephone());
				dataMap.put("cardId", existCustomer.getCardId());
				dataMap.put("contractCode", r.getContractId());
				dataMap.put("lenderName", r.getLenderName());
				dataMap.put("lenderCardId", r.getLenderCardId());
				dataMap.put("lenderAddress", r.getLenderAddress());
				String pre = r.getRepaymentType();
				Date loanStartTime = r.getLoanStartTime();
				Date loanEndTime = r.getLoanEndTime();
				startTime.setTime(loanStartTime);
				endTime.setTime(loanEndTime);
				if (StringUtils.isNotBlank(pre)) {
					if (pre.equals("1")) {
						dataMap.put("typeWy", "●");
					} else {
						dataMap.put("typeWy", "○");
					}
					if (pre.equals("2")) {
						dataMap.put("typeYh", "●");
					} else {
						dataMap.put("typeYh", "○");
					}
					if (pre.equals("3")) {
						dataMap.put("typeXj", "●");

					} else {
						dataMap.put("typeXj", "○");
					}
				}
				dataMap.put("loanReason", r.getLoanReason());
				dataMap.put("applyMoney", r.getApplyMoney());
				dataMap.put("permonthMoney", r.getPermonthMoney());
				dataMap.put("repaymentName1", r.getRepaymentName1());
				dataMap.put("repaymentName2", r.getRepaymentName2());
				dataMap.put("repaymentName3", r.getRepaymentName3());
				dataMap.put("repaymentBankCardId1", r.getRepaymentBankCardId1());
				dataMap.put("repaymentBankCardId2", r.getRepaymentBankCardId2());
				dataMap.put("repaymentBankCardId3", r.getRepaymentBankCardId3());
				dataMap.put("repaymentDepositBank1", r.getRepaymentDepositBank1());
				dataMap.put("repaymentDepositBank2", r.getRepaymentDepositBank2());
				dataMap.put("repaymentDepositBank3", r.getRepaymentDepositBank3());
				dataMap.put("startYear", String.valueOf(startTime.get(Calendar.YEAR)));
				dataMap.put("startMonth", startTime.get(Calendar.MONTH) + 1);
				dataMap.put("startDay", startTime.get(Calendar.DATE));
				dataMap.put("endYear", String.valueOf(endTime.get(Calendar.YEAR)));
				dataMap.put("endMonth", endTime.get(Calendar.MONTH) + 1);
				dataMap.put("endDay", endTime.get(Calendar.DATE));
				dataMap.put("months", r.getMonths());

				String upperMoney = r.getUpperMoney();
				String upperPayMoney = r.getUpperPermonthMoney();

				if (StringUtils.isNotBlank(upperMoney)) {
					if (upperMoney.contains("万")) {
						String state = upperMoney.substring(0, upperMoney.indexOf("万"));
						dataMap.put("applyWan", state);
					} else {
						dataMap.put("applyWan", "0");
					}
					if (upperMoney.contains("万") && upperMoney.contains("仟")) {
						String state1 = upperMoney.substring(upperMoney.lastIndexOf("万") + 1,
								upperMoney.lastIndexOf("仟"));
						dataMap.put("applyQian", state1);
					} else {
						dataMap.put("applyQian", 0);
					}
					if (upperMoney.contains("佰") && upperMoney.contains("仟")) {
						String state2 = upperMoney.substring(upperMoney.lastIndexOf("仟") + 1,
								upperMoney.lastIndexOf("佰"));
						dataMap.put("applyBai", state2);
					} else {
						dataMap.put("applyBai", "0");
					}
					if (upperMoney.contains("佰") && upperMoney.contains("拾")) {
						String state3 = upperMoney.substring(upperMoney.lastIndexOf("佰") + 1,
								upperMoney.lastIndexOf("拾"));
						dataMap.put("applyShi", state3);
					} else {
						dataMap.put("applyShi", "0");
					}
					if (upperMoney.contains("拾") && upperMoney.contains("元")) {
						String state4 = upperMoney.substring(upperMoney.lastIndexOf("拾") + 1, upperMoney.indexOf("元"));
						dataMap.put("applyYuan", state4);
					} else {
						dataMap.put("applyYuan", "0");
					}
				} else {
					dataMap.put("applyWan", "0");
					dataMap.put("applyQian", "0");
					dataMap.put("applyBai", "0");
					dataMap.put("applyShi", "0");
					dataMap.put("applyYuan", "0");
				}

				if (StringUtils.isNotBlank(upperPayMoney)) {
					if (upperPayMoney.contains("万") && upperPayMoney.contains("仟")) {
						String state1 = upperPayMoney.substring(upperPayMoney.lastIndexOf("万") + 1,
								upperPayMoney.lastIndexOf("仟"));
						dataMap.put("backQian", state1);
					} else {
						dataMap.put("backQian", 0);
					}
					if (upperPayMoney.contains("佰") && upperPayMoney.contains("仟")) {
						String state2 = upperPayMoney.substring(upperPayMoney.lastIndexOf("仟") + 1,
								upperPayMoney.lastIndexOf("佰"));
						dataMap.put("backBai", state2);
					} else {
						dataMap.put("backBai", "0");
					}
					if (upperPayMoney.contains("佰") && upperPayMoney.contains("拾")) {
						String state3 = upperPayMoney.substring(upperPayMoney.lastIndexOf("佰") + 1,
								upperPayMoney.lastIndexOf("拾"));
						dataMap.put("backShi", state3);
					} else {
						dataMap.put("backShi", "0");
					}
					if (upperPayMoney.contains("拾") && upperPayMoney.contains("元")) {
						String state4 = upperPayMoney.substring(upperPayMoney.lastIndexOf("拾") + 1,
								upperPayMoney.indexOf("元"));
						dataMap.put("backYuan", state4);
					} else {
						dataMap.put("backYuan", "0");
					}
				} else {
					dataMap.put("backQian", "0");
					dataMap.put("backBai", "0");
					dataMap.put("backShi", "0");
					dataMap.put("backYuan", "0");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		TempltUtil.toPreview(request, "loan.ftl", dataMap);
		return true;

	}

	public void excWord() throws IOException {

		try {
			Map dataMap = new HashMap();
			if (getData(response, request, dataMap, this.id)) {
				File previewFile = new File(
						request.getSession().getServletContext().getRealPath(TempltUtil.PREVIEW_DOC));
				InputStream is = new FileInputStream(previewFile);
				response.reset();
				response.setContentType("application/vnd.ms-word;charset=UTF-8");
				response.addHeader("Content-Disposition", "attachment; filename=\"" + "LoanAgreement.doc" + "\"");
				byte[] b = new byte[1024];
				int len;
				while ((len = is.read(b)) > 0) {
					response.getOutputStream().write(b, 0, len);
				}
				is.close();
				response.getOutputStream().flush();
				response.getOutputStream().close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public UserServiceImpl getUserService() {
		return userService;
	}

	public void setUserService(UserServiceImpl userService) {
		this.userService = userService;
	}

	public LoanApplyService getLoanApplyService() {
		return loanApplyService;
	}

	public void setLoanApplyService(LoanApplyService loanApplyService) {
		this.loanApplyService = loanApplyService;
	}

	public ComUser getUser() {
		return user;
	}

	public void setUser(ComUser user) {
		this.user = user;
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

	public List<ComDict> getDicList() {
		return dicList;
	}

	public void setDicList(List<ComDict> dicList) {
		this.dicList = dicList;
	}

	public List<ComUser> getUserList() {
		return userList;
	}

	public void setUserList(List<ComUser> userList) {
		this.userList = userList;
	}

	public LoanCustomerService getLoanCustomerService() {
		return loanCustomerService;
	}

	public void setLoanCustomerService(LoanCustomerService loanCustomerService) {
		this.loanCustomerService = loanCustomerService;
	}

	public List<LoanCustomer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<LoanCustomer> customerList) {
		this.customerList = customerList;
	}

	public String getUserRoleNames() {
		return userRoleNames;
	}

	public void setUserRoleNames(String userRoleNames) {
		this.userRoleNames = userRoleNames;
	}
    
}
