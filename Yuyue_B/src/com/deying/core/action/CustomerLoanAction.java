package com.deying.core.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.hibernate.criterion.MatchMode;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.FinancingCustomer;
import com.deying.core.pojo.LoanCustomer;
import com.deying.core.pojo.Notice;
import com.deying.core.pojo.user.ComUser;
import com.deying.core.service.LoanCustomerService;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.hibernate3.Condition;
import com.deying.util.core.com.framework.hibernate3.OrderBy;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CustomerLoanAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory.getLogger(CustomerLoanAction.class);

	private static final long serialVersionUID = 1L;

	@Autowired
	private LoanCustomerService loanCustomerService = null;

	private LoanCustomer customer = null;

	private List<ComUser> userList = null;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------customerAction -> list----------------");
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

		dataPage = commonService.find(c, LoanCustomer.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------customerAction -> add----------------");
		CriteriaWrapper customerParam = CriteriaWrapper.newInstance();
		userList = commonService.find(customerParam, ComUser.class);
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------customerAction -> save----------------");
		if (customer != null) {
			String picUrl = saveFile(ASSERTS_ROOT_DIR, ASSERTS_IMAGES_DIR, fileUpload);
			if (null != picUrl) {
				customer.setPicUrl(picUrl);
			}
			customer.setCompanyId(this.getCtxUser().getCompanyId());
			String EmployeeId = customer.getEmployeeName().split("_")[0];
			String EmployeeName = customer.getEmployeeName().split("_")[1];
			customer.setEmployeeId(EmployeeId);
			customer.setEmployeeName(EmployeeName);
			this.loanCustomerService.save(customer);
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
		LOG.debug("--------------------customerAction -> edit----------------");
		this.customer = this.loanCustomerService.get(id);
		CriteriaWrapper customerParam = CriteriaWrapper.newInstance();
		userList = commonService.find(customerParam, ComUser.class);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------customerAction -> upd----------------");
		if (customer != null) {
			LoanCustomer existCustomer = this.loanCustomerService.get(customer.getCustomerId());
			existCustomer.setCustomerName(customer.getCustomerName());
			existCustomer.setIndustry(customer.getIndustry());
			existCustomer.setCardId(customer.getCardId());
			existCustomer.setTelephone(customer.getTelephone());
			existCustomer.setAddress(customer.getAddress());
			String EmployeeId = customer.getEmployeeName().split("_")[0];
			String EmployeeName = customer.getEmployeeName().split("_")[1];
			existCustomer.setEmployeeId(EmployeeId);
			existCustomer.setEmployeeName(EmployeeName);
			String picUrl = saveFile(ASSERTS_ROOT_DIR, ASSERTS_IMAGES_DIR, fileUpload);
			if (null != picUrl) {
				existCustomer.setPicUrl(picUrl);
			}
			this.customer = this.loanCustomerService.update(existCustomer);
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		LoanCustomer customer = this.loanCustomerService.get(this.customer.getCustomerId());
		if (customer == null) {
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
		LOG.debug("--------------------customerAction -> del----------------");
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
		LoanCustomer customer = this.loanCustomerService.get(this.id);
		if (customer == null || this.id == null) {
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
		LOG.debug("--------------------customerAction -> load----------------");
		this.customer = this.loanCustomerService.get(id);
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
	 * @return 相对rootDir 的文件名 file/file1.txt
	 * @throws Exception
	 */
	public String saveFile(String rootDir, String saveDirWithoutRoot, File file) throws Exception {
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
		if (!saveDirWithoutRoot.endsWith("/") && !saveDirWithoutRoot.trim().equals("")) {
			System.out.println("拼接前saveDirWithoutRoot: " + saveDirWithoutRoot);
			saveDirWithoutRoot = saveDirWithoutRoot + "/";
			System.out.println("拼接后saveDirWithoutRoot: " + saveDirWithoutRoot);
		}
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String fileTempPath = file.getAbsolutePath();
		System.out.println("fileTempPath: " + fileTempPath);
		String fileTypeName = fileUploadFileName.substring(fileUploadFileName.lastIndexOf(".") + 1);
		String fileRealName = fmt.format(new Date()) + "." + fileTypeName.toLowerCase();

		System.out.println("rootDir: " + rootDir);
		System.out.println("saveDirWithoutRoot: " + saveDirWithoutRoot);
		String fileSavePathWithoutRoot = saveDirWithoutRoot + fileRealName;
		System.out.println("fileSavePathWithoutRoot: " + fileSavePathWithoutRoot);

		String fileSavePath = rootDir + fileSavePathWithoutRoot;
		System.out.println("fileSavePath: " + fileSavePath);

		File saveFile = new File(fileSavePath);
		if (!saveFile.getParentFile().exists())
			saveFile.getParentFile().mkdirs();
		FileUtils.copyFile(file, saveFile);
		return fileSavePathWithoutRoot;
	}

	public LoanCustomer getCustomer() {
		return customer;
	}

	public void setCustomer(LoanCustomer customer) {
		this.customer = customer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setLoanCustomerService(LoanCustomerService loanCustomerService) {
		this.loanCustomerService = loanCustomerService;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	private File fileUpload;

	private String fileUploadFileName;

	public List<ComUser> getUserList() {
		return userList;
	}

	public void setUserList(List<ComUser> userList) {
		this.userList = userList;
	}

}
