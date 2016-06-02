package com.deying.core.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.deying.pojo.FinancingApply;
import com.deying.pojo.FinancingCustomer;
import com.deying.pojo.LoanCustomer;
import com.deying.service.FinancingApplyService;
import com.deying.service.FinancingCustomerService;
import com.deying.service.LoanCustomerService;
import com.deying.service.impl.FinancingApplyServiceImpl;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;

public class TestAction extends BaseMgrAction {
	@Autowired
	private FinancingApplyService financingApplyService;
	@Autowired
	private FinancingCustomerService financingCustomerService;
	@Autowired
	private LoanCustomerService loanCustomerService;
	
	public String test() throws Exception{

		FinancingApply financingApply = financingApplyService.get("1");
		FinancingCustomer financingCustomer = financingCustomerService.get("1");
		LoanCustomer loanCustomer = loanCustomerService.get("1");
		
		return LIST;
	}
}
