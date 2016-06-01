package com.deying.action.album;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.BaseMgrAction;
import com.deying.util.core.com.framework.struts2.UserContext;
import com.deying.util.file.ImageTools;

@SuppressWarnings("serial")
public class FileAction extends BaseMgrAction {

	private File file;
	private String fileFileName;
	private String fileFileContentType;

	private String message = "ok";
	private String serverFilePath = "";
	private String savePath ;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileFileContentType() {
		return fileFileContentType;
	}

	public void setFileFileContentType(String fileFileContentType) {
		this.fileFileContentType = fileFileContentType;
	}

	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		
		UserContext uc = (UserContext) this.ctx
		.getSessionAttr(Constants.USER_KEY);
		HttpServletRequest request=ServletActionContext.getRequest();
		String companyId= "";
		if(uc.getCompanyId()!=null)
			companyId+="shop_"+ uc.getCompanyId();
		else
			companyId+="sys";
		String path =request.getSession().getServletContext().getRealPath(File.separator)+ getSavePath() + companyId+"/";
		Date dt=new Date();
		String saveUrl = request.getContextPath() + "/"+getSavePath()+ companyId+"/";
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMM");
		String ym = sdf1.format(dt);
		path += ym + "/";
		
		saveUrl += ym + "/";
		if(this.getFileFileName().endsWith(".exe")){
			message="对不起,你上传的文件格式不允许!";
			return ERROR;
		}
		File temp = new File(path);
		File mobileDir = new File(temp,Constants.MOBILE_IMAGE_PATH+"/");
		if (!temp.exists())
			temp.mkdirs();
		if (!mobileDir.exists())
			mobileDir.mkdirs();
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String extend = this.getFileFileName().substring(
				this.getFileFileName().lastIndexOf(".")).toLowerCase();
		String newFileName = sdf2.format(new Date()) + "_"
		+ new Random().nextInt(1000) + extend;
		File uploadFile = new File(path, newFileName);// 存储到硬盘上的文件
		File mobileFile = new File(mobileDir, newFileName);// 存储到硬盘上手机的文件
		serverFilePath=saveUrl+newFileName;
		try {
			ImageTools.resizeImage(this.getFile().getAbsolutePath(), uploadFile.getAbsolutePath(), 960, 760, true);
			ImageTools.resizeImage(this.getFile().getAbsolutePath(), mobileFile.getAbsolutePath(), 500, 150, true);
		} catch (Exception e) {
			LOG.error("文件上传失败了", e);
			message = "对不起,文件上传失败了!";
		}
		return SUCCESS;
	}

	public String getServerFilePath() {
		return serverFilePath;
	}

	public void setServerFilePath(String serverFilePath) {
		this.serverFilePath = serverFilePath;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

}
