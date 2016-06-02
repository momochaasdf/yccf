package com.deying.core.action;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.pojo.FinancingCustomer;
import com.deying.service.FinancingCustomerService;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class FinancingCustomerAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory.getLogger(FinancingCustomerAction.class);
	
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private FinancingCustomerService financingCustomerService = null;

	private FinancingCustomer financingCustomer = null;
	
	private FinancingCustomer inFinancingCustomer = null;
	
	private String id;
	
	public String list() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> list----------------");
		if (this.ctx.getSessionAttr(Constants.SEARCH_COND) instanceof FinancingCustomer && this._query == null) {//编辑或新增或删除返回检索页面使用先前保存的检索条件
			this.inFinancingCustomer = (FinancingCustomer) this.ctx.getSessionAttr(Constants.SEARCH_COND);
		}
		this.start = this.start == null ? 0 : this.start;
		this.inFinancingCustomer = this.inFinancingCustomer == null ? new FinancingCustomer() : this.inFinancingCustomer;
		Condition[] conds = new Condition[2];
		conds[0] = OrderBy.desc("crtTime");
		this.pgn = this.financingCustomerService.listByPage(this.inFinancingCustomer, this.start, 10, MatchMode.ANYWHERE, conds, null);
		this.ctx.setSessionAttr(Constants.SEARCH_COND, this.inFinancingCustomer);
		return LIST;
	}
	
	/**
	 * 新增对象保存
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> add----------------");
		return ADD;
	}
	public String save() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> save----------------");
		if (financingCustomer != null) {
			this.financingCustomerService.save(financingCustomer);
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
		LOG.debug("--------------------FinancingCustomerAction -> edit----------------");
		this.financingCustomer = this.financingCustomerService.get(id);
		return EDIT;
	}
	/**
	 * 编辑对象保存
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------FinancingCustomerAction -> upd----------------");
		if (financingCustomer != null) {
			this.financingCustomer = this.financingCustomerService.update(financingCustomer);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}
	public boolean validateUpd() {
		if(hasErrors()) {
			return true;
		}
		FinancingCustomer r = this.financingCustomerService.get(this.financingCustomer.getCustomerId());
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
		LOG.debug("--------------------FinancingCustomerAction -> del----------------");
		if (this.id != null) {
			this.financingCustomerService.deleteById(this.id);
		}
		msg="操作成功!";
		return list();
	}
	public boolean validateDel() {
		if(hasErrors()) {
			return true;
		}
		FinancingCustomer r = this.financingCustomerService.get(this.id);
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
		LOG.debug("--------------------FinancingCustomerAction -> load----------------");
		this.financingCustomer = this.financingCustomerService.get(id);
		return LOAD;
	}
	
	
	public String saveFile() throws Exception {
		    String realpath = ServletActionContext.getServletContext().getRealPath("/images");
	        //D:\apache-tomcat-6.0.18\webapps\struts2_upload\images
	        System.out.println("realpath: "+realpath);
	        if (file != null) {
	            File savefile = new File(new File(realpath), imageFileName);
	            if (!savefile.getParentFile().exists())
	                savefile.getParentFile().mkdirs();
	            FileUtils.copyFile(image, savefile);
	            ActionContext.getContext().put("message", "文件上传成功");
	        }
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public FinancingCustomer getFinancingCustomer() {
		return financingCustomer;
	}
	public void setFinancingCustomer(FinancingCustomer financingCustomer) {
		this.financingCustomer = financingCustomer;
	}

	public FinancingCustomer getInFinancingCustomer() {
		return inFinancingCustomer;
	}

	public void setInFinancingCustomer(FinancingCustomer inFinancingCustomer) {
		this.inFinancingCustomer = inFinancingCustomer;
	}
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	private File file;
}
