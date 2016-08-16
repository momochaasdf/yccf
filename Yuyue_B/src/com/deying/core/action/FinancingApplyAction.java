package com.deying.core.action;

import java.beans.PropertyDescriptor;
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

import org.apache.commons.beanutils.PropertyUtilsBean;
import org.apache.commons.lang3.StringUtils;
import org.apache.tools.ant.util.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.FinancingApplyService;
import com.deying.core.service.FinancingCustomerService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.excel.TempltUtil;

public class FinancingApplyAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private FinancingApplyService financingApplyService = null;

	@Autowired
	private FinancingCustomerService financingCustomerService = null;

	private FinancingApply financingApply = null;

	private FinancingApply ifinancingApply = null;

	private List<ComDict> dicList = null;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");

		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		if (null != ifinancingApply) {
			if (StringUtils.isNotBlank(ifinancingApply.getType())) {
				c.eq("type", ifinancingApply.getType().trim());
			}
		}
		if (type.equals("4")) {
			c.eq("type", type);
		}
		dataPage = commonService.find(c, FinancingApply.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------FinancingApplyAction -> add----------------");
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "financing_type");
		dicList = commonService.find(dicParam, ComDict.class);
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------FinancingApplyAction -> save----------------");
		if (financingApply != null) {
			String customerId = financingApply.getCustomerName().split("_")[0];
			String customerName = financingApply.getCustomerName().split("_")[1];
			financingApply.setCustomerId(customerId);
			financingApply.setCustomerName(customerName);

			String EmployeeId = financingApply.getEmployeeName().split("_")[0];
			String EmployeeName = financingApply.getEmployeeName().split("_")[1];
			financingApply.setEmployeeId(EmployeeId);
			financingApply.setEmployeeName(EmployeeName);
			this.financingApplyService.save(financingApply);
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
	public String edit() throws Exception {
		LOG.debug("--------------------FinancingApplyAction -> edit----------------");
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "financing_type");
		dicList = commonService.find(dicParam, ComDict.class);
		this.financingApply = this.financingApplyService.get(id);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------FinancingApplyAction -> upd----------------");
		if (financingApply != null) {
			String customerId = financingApply.getCustomerName().split("_")[0];
			String customerName = financingApply.getCustomerName().split("_")[1];
			financingApply.setCustomerId(customerId);
			financingApply.setCustomerName(customerName);

			String EmployeeId = financingApply.getEmployeeName().split("_")[0];
			String EmployeeName = financingApply.getEmployeeName().split("_")[1];
			financingApply.setEmployeeId(EmployeeId);
			financingApply.setEmployeeName(EmployeeName);
			// this.financingApplyService.save(financingApply);
			this.financingApply = this.financingApplyService.update(financingApply);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		FinancingApply r = this.financingApplyService.get(this.financingApply.getFinancingApplyId());
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
		LOG.debug("--------------------FinancingApplyAction -> del----------------");
		if (this.id != null) {
			this.financingApplyService.deleteById(this.id);
		}
		msg = "操作成功!";
		return list();
	}

	private boolean getData(HttpServletResponse response, HttpServletRequest request, Map dataMap, String id) {
		FinancingApply r = this.financingApplyService.get(id);
		if (null != r) {
			try {
				Calendar sign = Calendar.getInstance();// 定义日期实例
				Calendar dd = Calendar.getInstance();// 定义日期实例
				Calendar mm = Calendar.getInstance();// 定义日期实例
				FinancingCustomer existCustomer = this.financingCustomerService.get(r.getCustomerId());
				dataMap.put("customerName", existCustomer.getCustomerName());
				dataMap.put("cardType", existCustomer.getCardType());
				dataMap.put("address", existCustomer.getAddress());
				dataMap.put("telephone", existCustomer.getTelephone());
				dataMap.put("cardId", existCustomer.getCardId());
				dataMap.put("depositBank", r.getDepositBank());
				dataMap.put("bankCardId", r.getBankCardId());
				Date signDate = r.getContractSigningTime();
				sign.setTime(signDate);
				if (null != signDate) {
					dataMap.put("signYear", String.valueOf(sign.get(Calendar.YEAR)));
					dataMap.put("signMonth", sign.get(Calendar.MONTH) + 1);
					dataMap.put("signDay", sign.get(Calendar.DATE));
				} else {
					dataMap.put("signYear", "2016");
					dataMap.put("signMonth", "01");
					dataMap.put("signDay", "01");
				}
				dataMap.put("signingAddress", r.getSigningAddress());
				String type = r.getType();
				Date financingStartTime = r.getFinancingStartTime();
				Date financingEndTime = r.getFinancingEndTime();
				dd.setTime(financingStartTime);
				mm.setTime(financingEndTime);
				if (StringUtils.isNotBlank(type)) {
					if (type.equals("1")) {
						dataMap.put("typeJd", "☑");
						dataMap.put("upperMoneyJd", r.getUpperMoney());
						dataMap.put("yearJd", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthJd", dd.get(Calendar.MONTH) + 1);
						dataMap.put("dayJd", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typeJd", "☒");
						dataMap.put("upperMoneyJd", "");
						dataMap.put("yearJd", "");
						dataMap.put("monthJd", "");
						dataMap.put("dayJd", "");
					}
					if (type.equals("2")) {
						dataMap.put("typebnj", "☑");
						dataMap.put("upperMoneybnj", r.getUpperMoney());
						dataMap.put("yearbnj", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthbnj", dd.get(Calendar.MONTH) + 1);
						dataMap.put("daybnj", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typebnj", "☒");
						dataMap.put("upperMoneybnj", "");
						dataMap.put("yearbnj", "");
						dataMap.put("monthbnj", "");
						dataMap.put("daybnj", "");
					}
					if (type.equals("3")) {
						dataMap.put("typennx", "☑");
						dataMap.put("upperMoneynnx", r.getUpperMoney());
						dataMap.put("yearnnx", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthnnx", dd.get(Calendar.MONTH) + 1);
						dataMap.put("daynnx", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typennx", "☒");
						dataMap.put("upperMoneynnx", "");
						dataMap.put("yearnnx", "");
						dataMap.put("monthnnx", "");
						dataMap.put("daynnx", "");
					}
					if (type.equals("4")) {
						dataMap.put("typennh", "☑");
						dataMap.put("upperMoneynnh", r.getUpperMoney());
						dataMap.put("yearnnh", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthnnh", dd.get(Calendar.MONTH) + 1);
						dataMap.put("daynnh", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typennh", "☒");
						dataMap.put("upperMoneynnh", "");
						dataMap.put("yearnnh", "");
						dataMap.put("monthnnh", "");
						dataMap.put("daynnh", "");
					}
					if (type.equals("5")) {
						dataMap.put("typeycx", "☑");
						dataMap.put("upperMoneyycx", r.getUpperMoney());
						dataMap.put("yearycx", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthycx", dd.get(Calendar.MONTH) + 1);
						dataMap.put("dayycx", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typeycx", "☒");
						dataMap.put("upperMoneyycx", "");
						dataMap.put("yearycx", "");
						dataMap.put("monthycx", "");
						dataMap.put("dayycx", "");
					}
					if (type.equals("6")) {
						dataMap.put("typeyct", "☑");
						dataMap.put("upperMoneyyct", r.getUpperMoney());
						dataMap.put("yearyct", String.valueOf(dd.get(Calendar.YEAR)));
						dataMap.put("monthyct", dd.get(Calendar.MONTH) + 1);
						dataMap.put("dayyct", dd.get(Calendar.DATE));
					} else {
						dataMap.put("typeyct", "☒");
						dataMap.put("upperMoneyyct", "");
						dataMap.put("yearyct", "");
						dataMap.put("monthyct", "");
						dataMap.put("dayyct", "");
					}
				}
				CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
				dicParam.eq("dictTypeCode", "bank_card_id");
				dicList = commonService.find(dicParam, ComDict.class);
				if (!dicList.isEmpty()) {
					dataMap.put("TbankCardId", dicList.get(0).getDictName());
				} else {
					dataMap.put("TbankCardId", "");
				}
				dataMap.put("upperMoney", r.getUpperMoney());
				dataMap.put("money", r.getMoney());
				dataMap.put("months", r.getMonths());
				dataMap.put("year", String.valueOf(dd.get(Calendar.YEAR)));
				dataMap.put("month", dd.get(Calendar.MONTH) + 1);
				dataMap.put("day", dd.get(Calendar.DATE));
				dataMap.put("endyear", String.valueOf(mm.get(Calendar.YEAR)));
				dataMap.put("endmonth", mm.get(Calendar.MONTH) + 1);
				dataMap.put("endday", mm.get(Calendar.DATE));
				dataMap.put("annualizedRate", r.getAnnualizedRate());
				dataMap.put("upperExpireMoney", r.getUpperExpireMoney());
				dataMap.put("expireMoney", r.getExpireMoney());
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		TempltUtil.toPreview(request, "financing.ftl", dataMap);
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
				response.addHeader("Content-Disposition", "attachment; filename=\"" + "FinancingAgreement.doc" + "\"");
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

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		FinancingApply r = this.financingApplyService.get(this.id);
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
		LOG.debug("--------------------FinancingApplyAction -> load----------------");
		CriteriaWrapper dicParam = CriteriaWrapper.newInstance();
		dicParam.eq("dictTypeCode", "financingApply_type");
		dicList = commonService.find(dicParam, ComDict.class);
		this.financingApply = this.financingApplyService.get(id);
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

	public FinancingApply getFinancingApply() {
		return financingApply;
	}

	public void setFinancingApply(FinancingApply financingApply) {
		this.financingApply = financingApply;
	}

	public FinancingApplyService getFinancingApplyService() {
		return financingApplyService;
	}

	public void setFinancingApplyService(FinancingApplyService financingApplyService) {
		this.financingApplyService = financingApplyService;
	}

	public FinancingApply getIfinancingApply() {
		return ifinancingApply;
	}

	public void setIfinancingApply(FinancingApply ifinancingApply) {
		this.ifinancingApply = ifinancingApply;
	}

	public FinancingCustomerService getFinancingCustomerService() {
		return financingCustomerService;
	}

	public void setFinancingCustomerService(FinancingCustomerService financingCustomerService) {
		this.financingCustomerService = financingCustomerService;
	}

}
