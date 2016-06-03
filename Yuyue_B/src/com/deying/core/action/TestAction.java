package com.deying.core.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingApply;
import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.service.FinancingApplyService;
import com.deying.core.service.FinancingCustomerService;
import com.deying.core.service.LoanCustomerService;
import com.deying.core.service.impl.FinancingApplyServiceImpl;
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
