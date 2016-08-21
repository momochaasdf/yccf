package com.deying.core.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.LoanBack;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class BackLoanAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory.getLogger(BackLoanAction.class);

	private static final long serialVersionUID = 1L;

	private LoanBack Back = null;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------BackAction -> list----------------");
		String customerName = obtionInfoVal("customerName", String.class);
		String cardId = obtionInfoVal("cardId", String.class);
		String telephone = obtionInfoVal("telephone", String.class);

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
		dataPage = commonService.find(c, LoanBack.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	public LoanBack getBack() {
		return Back;
	}

	public void setBack(LoanBack Back) {
		this.Back = Back;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
