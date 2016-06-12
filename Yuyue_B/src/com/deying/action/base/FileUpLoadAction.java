package com.deying.action.base;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.struts2.BaseAction;
import com.deying.util.file.FileUtilNew;
import com.deying.util.file.FileUtils;

public class FileUpLoadAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	
	private String savePath;
	private File[] files;
	private String[] filesFileName;
	private String picType;
	private File file;
	private String fileFileName;
	public String upload() {
		try {
			if(StringUtils.isNotBlank(picType))
				savePath = FileConstants.UPLOAD_PATH.get(picType);
			List<String> urls = FileUtils.uploadImgs(files, filesFileName
							, null, obtionRealPath(), savePath, false);
			jsonObject.put("error", 0);
			jsonObject.put("url", urls);
		} catch (Exception e) {
			LOG.error("upload error.", e);
			jsonObject.put("error", 1);
		}
		return JSON;
	}
	
	/**
	 * 
	 * swf批量上传
	 * @return
	 * @throws Exception
	 * @author chenjie
	 * @create 2015-9-22 下午02:08:52
	 */
	public String uploadForSwf(){
		try {
			String imgSavePath = ServletActionContext.getServletContext().getRealPath("");
			int lastIndexOf = imgSavePath.lastIndexOf(File.separator);
			imgSavePath = imgSavePath.substring(0,lastIndexOf);
			String savePath = FileConstants.UPLOAD_PATH.get("ingoods");//积分商城商品图片-swf上传
//			List<String> urls = FileUtils.uploadImgs(new File[]{file}, new String[]{fileFileName}, null, imgSavePath, savePath, 640, null, true);
			List<String> urls = FileUtilNew.uploadImgsEqualProportion(new File[]{file}, new String[]{fileFileName}, null, imgSavePath, savePath,
					640 , null, 2, true);
			String fileName = URLEncoder.encode(fileFileName, "UTF-8");
			ServletActionContext.getResponse().getWriter().print("/"+urls.get(0)+"#@#"+urls.get(0)+"#@#"+fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JSON;
	}
	
	
	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	
	public File[] getFiles() {
		return files;
	}

	public void setFiles(File[] files) {
		this.files = files;
	}

	public String[] getFilesFileName() {
		return filesFileName;
	}

	public void setFilesFileName(String[] filesFileName) {
		this.filesFileName = filesFileName;
	}

	public String getPicType() {
		return picType;
	}

	public void setPicType(String picType) {
		this.picType = picType;
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

}
