package com.deying.core.action;

import java.util.Date;
import java.util.List;

import com.deying.core.pojo.HolidayRemind;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.data.DateUtils;
import com.deying.util.datawrapper.CriteriaWrapper;
public class HolidayRemindAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;
	
	private String id;
	
	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");
		
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("status", "1");
		c.desc("crtTime");
		
		dataPage = commonService.find(c
				, HolidayRemind.class,  currentPage, pageSize);
		@SuppressWarnings("unchecked")
		List<HolidayRemind> list = dataPage.getData();
		for (HolidayRemind holidayRemind : list) {
			holidayRemind.setIntervalDays(DateUtils.getTwoDay(new Date(), holidayRemind.getStartTime()));
		}
		
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
