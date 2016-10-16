package com.deying.core.action;

import java.util.Date;
import java.util.List;

import com.deying.core.pojo.BirthdayRemind;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.data.DateUtils;
import com.deying.util.datawrapper.CriteriaWrapper;

public class BirthdayRemindAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------BackupAction -> list----------------");

		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		String[] statuss = {"0"};
		c.in("status", statuss);
		c.desc("crtTime");

		dataPage = commonService.find(c, BirthdayRemind.class, currentPage, pageSize);
		@SuppressWarnings("unchecked")
		List<BirthdayRemind> list = dataPage.getData();
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}

	/**
	 * 删除
	 * 
	 * @return
	 */
	public String remind() throws Exception {
		LOG.debug("--------------------GoodsStockAction -> del----------------");
		if (this.id != null) {
			CriteriaWrapper c = CriteriaWrapper.newInstance();
			c.eq("birthdayRemindId", this.id);
			List<BirthdayRemind> remind = commonService.findList(c, BirthdayRemind.class, currentPage, pageSize);
			if (!remind.isEmpty()) {
				for (BirthdayRemind r : remind) {
					r.setStatus(String.valueOf(1));
					commonService.update("rinancingRemind", r);
				}
			}
		}
		msg = "更新状态操作成功!";
		return list();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
