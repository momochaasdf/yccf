package com.deying.core.action;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.deying.core.pojo.LoanBack;
import com.deying.core.pojo.LoanCollection;
import com.deying.core.service.LoanCollectionService;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.datawrapper.CriteriaWrapper;

public class CollectionLoanAction extends BaseMgrAction {
	private static final Logger log = LoggerFactory.getLogger(CollectionLoanAction.class);

	private static final long serialVersionUID = 1L;

	@Autowired
	private LoanCollectionService loanCollectionService = null;

	private LoanCollection collection = null;

	private String id;

	public String list() throws Exception {
		LOG.debug("--------------------collectionAction -> list----------------");
		String customerName = obtionInfoVal("customerName", String.class);
		String isPrepayment = obtionInfoVal("isPrepayment", String.class);
		String isOverdue = obtionInfoVal("isOverdue", String.class);
		String status = obtionInfoVal("status", String.class);

		this.currentPage = this.currentPage == null ? 1 : this.currentPage;

		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.desc("crtTime");
		if (null != collection) {
			customerName = collection.getCustomerName();
			if (StringUtils.isNotBlank(customerName)) {
				c.like("customerName", customerName);
			}
			isPrepayment = collection.getIsPrepayment();
			isOverdue = collection.getIsOverdue();
			status = collection.getStatus();
			if (StringUtils.isNotBlank(isPrepayment)) {
				c.like("isPrepayment", isPrepayment);
			}
			if (StringUtils.isNotBlank(isOverdue)) {
				c.like("isOverdue", isOverdue);
			}
			if (StringUtils.isNotBlank(status)) {
				c.eq("status", status);
			} else {
				c.ne("status", "2");
			}
		}else {
			c.ne("status", "2");
		}
		dataPage = commonService.find(c, LoanCollection.class, currentPage, pageSize);
		setTotalPage(dataPage.getTotalPageCount());
		return LIST;
	}

	/**
	 * 新增对象保存
	 * 
	 * @return
	 */
	public String add() throws Exception {
		LOG.debug("--------------------collectionAction -> add----------------");
		return ADD;
	}

	public String save() throws Exception {
		LOG.debug("--------------------collectionAction -> save----------------");
		if (collection != null) {
			collection.setCompanyId(this.getCtxUser().getCompanyId());
			this.loanCollectionService.save(collection);
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
		LOG.debug("--------------------collectionAction -> edit----------------");
		this.collection = this.loanCollectionService.get(id);
		return EDIT;
	}

	/**
	 * 编辑对象保存
	 * 
	 * @return
	 */
	public String upd() throws Exception {
		LOG.debug("--------------------collectionAction -> upd----------------");
		if (collection != null) {
			LoanCollection existCollection = this.loanCollectionService.get(collection.getLoanCollectionId());
			existCollection.setStatus(collection.getStatus());
			existCollection.setIsOverdue(collection.getIsOverdue());
			existCollection.setIsPrepayment(collection.getIsPrepayment());
			this.collection = this.loanCollectionService.update(existCollection);
			if ("2".equals(this.collection.getStatus())) {
				CriteriaWrapper c = CriteriaWrapper.newInstance();
				c.eq("loanApplyId", this.collection.getLoanApplyId());
				List<LoanBack> backList = commonService.find(c, LoanBack.class);
				if (backList.isEmpty()) {
					LoanBack back = new LoanBack();
					back.setCompanyId(this.collection.getCompanyId());
					back.setCustomerName(this.collection.getCustomerName());
					back.setTelephone(this.collection.getTelephone());
					back.setType(this.collection.getType());
					back.setMoney(this.collection.getMoney());
					back.setRepaymentMonths(1);
					back.setLoanApplyId(this.collection.getLoanApplyId());
					commonService.save("loanBack", back);
				} else {
					for (LoanBack back : backList) {
						back.setRepaymentMonths(back.getRepaymentMonths() + 1);
						commonService.update("loanBack", back);
					}
				}
			}
			this.addActionMessage(this.getText("do.success.back"));
		}
		return list();
	}

	public boolean validateUpd() {
		if (hasErrors()) {
			return true;
		}
		LoanCollection collection = this.loanCollectionService.get(this.collection.getLoanCollectionId());
		if (collection == null) {
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
		LOG.debug("--------------------collectionAction -> del----------------");
		if (this.id != null) {
			this.loanCollectionService.deleteById(this.id);
		}
		msg = "操作成功!";
		return list();
	}

	public boolean validateDel() {
		if (hasErrors()) {
			return true;
		}
		LoanCollection collection = this.loanCollectionService.get(this.id);
		if (collection == null || this.id == null) {
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
		LOG.debug("--------------------collectionAction -> load----------------");
		this.collection = this.loanCollectionService.get(id);
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

	public LoanCollection getCollection() {
		return collection;
	}

	public void setCollection(LoanCollection collection) {
		this.collection = collection;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setLoanCollectionService(LoanCollectionService loanCollectionService) {
		this.loanCollectionService = loanCollectionService;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	private File fileUpload;

	private String fileUploadFileName;

}
