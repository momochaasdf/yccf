/**
 * 
 */
package com.deying.action.comment;

import java.io.File;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author fengHL
 * @version 1.0,
 * @Date Apr 1, 2013 1:24:32 PM
 */
public class kindeditorImageUpload extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private static final Logger log = LoggerFactory.getLogger(kindeditorImageUpload.class);
	
	private String savePath;

	private File imgFile;
	/**
	 * 文件名称
	 */
	private String imgFileFileName;

	/**
	 * 图片宽度
	 */
	private String imgWidth;

	/**
	 * 图片高度
	 */
	private String imgHeight;

	/**
	 * 图片对齐方式
	 */
	private String align;

	/**
	 * 图片标题
	 */
	private String imgTitle;

	public String uploadImg() throws Exception {
		log.info("进入");
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		response.setContentType("text/html; charset=UTF-8");
		// 文件保存目录路径
		String realSavePath = ServletActionContext.getServletContext().getRealPath(
				"/")
				+getSavePath();
		// 文件保存目录URL
		String saveUrl = request.getContextPath() + "/"+getSavePath();
		// 定义允许上传的文件扩展名
		String[] fileTypes = new String[] { "gif", "jpg", "jpeg", "png", "bmp" };
		// 最大文件大小
		long maxSize = 1000000002L;
		PrintWriter out = null;
		out = response.getWriter();

		if (imgFile == null) {
			out.println(getError("请选择文件。"));
			return null;
		}

		// 检查目录
		File uploadDir = new File(realSavePath);
		if (!uploadDir.isDirectory()) {
			log.info(realSavePath);
			out.println(getError("上传目录不存在。"));
			return null;
		}
		// 检查目录写权限
		if (!uploadDir.canWrite()) {
			out.println(getError("上传目录没有写权限。"));
			return null;
		}
		// 创建文件夹
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String ymd = sdf.format(new Date());
		realSavePath += ymd + "/";
		saveUrl += ymd + "/";
		File dirFile = new File(realSavePath);
		if (!dirFile.exists()) {
			dirFile.mkdirs();
		}
		String fileExt = imgFileFileName.substring(
				imgFileFileName.lastIndexOf(".") + 1).toLowerCase();
		if (!Arrays.<String> asList(fileTypes).contains(fileExt)) {
			out.println(getError("上传文件扩展名[" + fileExt + "]是不允许的扩展名。"));
			return null;
		}
		if (imgFile.length() > maxSize) {
			out.println(getError("[ " + imgFileFileName + " ]超过单个文件大小限制，文件大小[ "
					+ imgFile.length() + " ]，限制为[ " + maxSize + " ] "));
			return null;
		}
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		String newFileName = df.format(new Date()) + "_"
				+ new Random().nextInt(1000) + "." + fileExt;
		File uploadedFile = new File(realSavePath, newFileName);
		org.apache.commons.io.FileUtils.copyFile(imgFile, uploadedFile);
		//FileUtil.Copy(imgFile, uploadedFile);
		JSONObject obj = new JSONObject();
		obj.put("error", 0);
		obj.put("url", saveUrl + newFileName);
		out.println(obj.toString());
		log.debug("上传图片:[" + uploadedFile.getName() + "]" + ">>>["
				+ newFileName + "]成功");
		return null;
	}

	private String getError(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error", 1);
		obj.put("message", message);
		return obj.toString();
	}

	public File getImgFile() {
		return imgFile;
	}

	public void setImgFile(File imgFile) {
		this.imgFile = imgFile;
	}



	public String getImgFileFileName() {
		return imgFileFileName;
	}

	public void setImgFileFileName(String imgFileFileName) {
		this.imgFileFileName = imgFileFileName;
	}

	public String getImgWidth() {
		return imgWidth;
	}

	public void setImgWidth(String imgWidth) {
		this.imgWidth = imgWidth;
	}

	public String getImgHeight() {
		return imgHeight;
	}

	public void setImgHeight(String imgHeight) {
		this.imgHeight = imgHeight;
	}

	public String getAlign() {
		return align;
	}

	public void setAlign(String align) {
		this.align = align;
	}

	public String getImgTitle() {
		return imgTitle;
	}

	public void setImgTitle(String imgTitle) {
		this.imgTitle = imgTitle;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}




}
