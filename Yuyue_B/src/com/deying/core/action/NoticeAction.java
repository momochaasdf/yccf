package com.deying.core.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.Notice;
import com.deying.core.pojo.user.ComDict;
import com.deying.core.service.NoticeService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;
public class NoticeAction extends BaseMgrAction {

	private static final long serialVersionUID = 1L;

	@Autowired
	private NoticeService noticeService;

	private Notice data;

	private String id;
	
	public String list() throws Exception {
		LOG.debug("--------------------NoticeAction -> list----------------");
		String companyId = this.getCtxUser().getCompanyId();
		String title = obtionInfoVal("title", String.class);
		Integer status = obtionInfoVal("status", Integer.class);
		
		this.currentPage = this.currentPage == null ? 1 : this.currentPage;
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if(title != null){
			c.like("title", title);
		}
		if(status != null && status != 2){
			c.eq("status", status.toString());
		}
		if(companyId != null){
			c.eq("companyId", companyId);
		}
		if (status == null) {
			info.put("status", "2");
		}
		dataPage = commonService.find(c
				, Notice.class,  currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return INPUT;
	}
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------NoticeAction -> add----------------");

		//查询公司情报
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.asc("dictCode");
		c.eq("dictTypeCode", "company_code");
		List<ComDict> companyList= commonService.find(c, ComDict.class);
		getValueStack().set("companyList", companyList);
		
		return ADD;
	}
	public String save() throws Exception {
		LOG.debug("--------------------NoticeAction -> save----------------");
		if (data != null) {
			this.noticeService.save(data);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateSave() {
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 编辑对象加载
	 * @return
	 */
	public String edit() throws Exception {
		LOG.debug("--------------------NoticeAction -> edit----------------");
		this.data = this.noticeService.get(id);

		//查询公司情报
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.asc("dictCode");
		c.eq("dictTypeCode", "company_code");
		List<ComDict> companyList= commonService.find(c, ComDict.class);
		getValueStack().set("companyList", companyList);
		
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------NoticeAction -> upd----------------");
		if (data != null) {
			Notice notice = this.noticeService.get(this.data.getNoticeId());
			notice.setTitle(data.getTitle());
			notice.setContent(data.getContent());
			notice.setStatus(data.getStatus());
			notice.setCompanyId(data.getCompanyId());
			this.noticeService.update(notice);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		Notice r = this.noticeService.get(this.data.getNoticeId());
		if (r == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 删除
	 * @return
	 */
	public String del() throws Exception {
		LOG.debug("--------------------NoticeAction -> del----------------");
		if (this.id != null) {
			this.noticeService.deleteById(this.id);
		}
		msg="操作成功!";
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		Notice r = this.noticeService.get(this.id);
		if (r == null || this.id == null) {
			this.addActionError(this.getText("err.no.entity"));
		}
		if(hasErrors()) {
			return true;
		}
		return false;
	}
	/**
	 * 查看对象
	 * @return
	 */
	public String load() throws Exception {
		LOG.debug("--------------------NoticeAction -> load----------------");
		this.data = this.noticeService.get(id);

		//查询公司情报
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.asc("dictCode");
		c.eq("dictTypeCode", "company_code");
		List<ComDict> companyList= commonService.find(c, ComDict.class);
		getValueStack().set("companyList", companyList);
		
		return LOAD;
	}

	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Notice getData() {
		return data;
	}

	public void setData(Notice data) {
		this.data = data;
	}
	
}
