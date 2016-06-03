package com.deying.core.action;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.LoanCustomer;
import com.deying.core.service.LoanCustomerService;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoanCustomerAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory
			.getLogger(LoanCustomerAction.class);

	private static final long serialVersionUID = 1L;

	@Autowired
	private LoanCustomerService loanCustomerService = null;

	private LoanCustomer loanCustomer = null;

	private LoanCustomer inLoanCustomer = null;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------LoanCustomerAction -> list----------------");
		if (this.ctx.getSessionAttr(Constants.SEARCH_COND) instanceof LoanCustomer
				&& this._query == null) {// 编辑或新增或删除返回检索页面使用先前保存的检索条件
			this.inLoanCustomer = (LoanCustomer) this.ctx
					.getSessionAttr(Constants.SEARCH_COND);
		}
		this.start = this.start == null ? 0 : this.start;
		this.inLoanCustomer = this.inLoanCustomer == null ? new LoanCustomer()
				: this.inLoanCustomer;
		Condition[] conds = new Condition[2];
		conds[0] = OrderBy.desc("crtTime");
		this.pgn = this.loanCustomerService.listByPage(
				this.inLoanCustomer, this.start, 10, MatchMode.ANYWHERE,
				conds, null);
		this.ctx.setSessionAttr(Constants.SEARCH_COND, this.inLoanCustomer);
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------LoanCustomerAction -> add----------------");
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------LoanCustomerAction -> save----------------");
		if (loanCustomer != null) {
			String picUrl = saveFile(ASSERTS_ROOT_DIR,ASSERTS_IMAGES_DIR,file);
			if(null!=picUrl){
				loanCustomer.setPicUrl(picUrl);
			}
			this.loanCustomerService.save(loanCustomer);
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
		LOG.debug("--------------------LoanCustomerAction -> edit----------------");
		this.loanCustomer = this.loanCustomerService.get(id);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------LoanCustomerAction -> upd----------------");
		if (loanCustomer != null) {
			String picUrl = saveFile(ASSERTS_ROOT_DIR,ASSERTS_IMAGES_DIR,file);
			if(null!=picUrl){
				loanCustomer.setPicUrl(picUrl);
			}
			this.loanCustomer = this.loanCustomerService
					.update(loanCustomer);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		LoanCustomer r = this.loanCustomerService
				.get(this.loanCustomer.getCustomerId());
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
		LOG.debug("--------------------LoanCustomerAction -> del----------------");
		if (this.id != null) {
			this.loanCustomerService.deleteById(this.id);
		}
		msg = "操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		LoanCustomer r = this.loanCustomerService.get(this.id);
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
		LOG.debug("--------------------LoanCustomerAction -> load----------------");
		this.loanCustomer = this.loanCustomerService.get(id);
		return LOAD;
	}

	/**
	 * 保存上传的文件
	 * 
	 * @param rootDir
	 *            /home/
	 * @param saveDirWithoutRoot
	 *            file/ 相对rootDir的路径
	 * @param file
	 *            保存的文件
	 * @return 相对rootDir 的文件名  file/file1.txt
	 * @throws Exception
	 */
	public String saveFile(String rootDir, String saveDirWithoutRoot, File file)
			throws Exception {
		// String saveDirPath =
		// ServletActionContext.getServletContext().getRealPath("/images");
		if (null == file || null == rootDir || null == saveDirWithoutRoot) {
			return null;
		}
		if (!rootDir.endsWith("/")) {
			System.out.println("拼接前rootDir: " + rootDir);
			rootDir = rootDir + "/";
			System.out.println("拼接后rootDir: " + rootDir);
		}
		if (!saveDirWithoutRoot.endsWith("/")&&!saveDirWithoutRoot.trim().equals("")) {
			System.out.println("拼接前saveDirWithoutRoot: " + saveDirWithoutRoot);
			saveDirWithoutRoot = saveDirWithoutRoot + "/";
			System.out.println("拼接后saveDirWithoutRoot: " + saveDirWithoutRoot);
		}
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String fileTempPath = file.getAbsolutePath();
		System.out.println("fileTempPath: " + fileTempPath);
		String fileTypeName = fileTempPath.substring(fileTempPath
				.lastIndexOf(".") + 1);
		String fileRealName = fmt.format(new Date()) + "."
				+ fileTypeName.toLowerCase();

		System.out.println("rootDir: " + rootDir);
		System.out.println("saveDirWithoutRoot: " + saveDirWithoutRoot);
		String fileSavePathWithoutRoot = saveDirWithoutRoot + fileRealName;
		System.out.println("fileSavePathWithoutRoot: "
				+ fileSavePathWithoutRoot);

		String fileSavePath = rootDir + fileSavePathWithoutRoot;
		System.out.println("fileSavePath: " + fileSavePath);

		File saveFile = new File(fileSavePath);
		if (!saveFile.getParentFile().exists())
			saveFile.getParentFile().mkdirs();
		FileUtils.copyFile(file, saveFile);
		return fileSavePathWithoutRoot;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public LoanCustomer getLoanCustomer() {
		return loanCustomer;
	}

	public void setLoanCustomer(LoanCustomer loanCustomer) {
		this.loanCustomer = loanCustomer;
	}

	public LoanCustomer getInLoanCustomer() {
		return inLoanCustomer;
	}

	public void setInLoanCustomer(LoanCustomer inLoanCustomer) {
		this.inLoanCustomer = inLoanCustomer;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	private File file;
}
