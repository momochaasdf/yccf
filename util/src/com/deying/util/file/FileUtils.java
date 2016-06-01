package com.deying.util.file;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.deying.util.FileConstants;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.data.RegularUtils;
import com.deying.util.data.Symbol;
import com.deying.util.exception.BaseException;

public class FileUtils {
	
	/**
	 * 创建文件
	 * @param fileFullName 文件全路径 如D:\\test\\a.txt
	 * @throws IOException 如果目录test不存在时，则报错
	 */
	public static void createFile(String fileFullName) throws IOException {
		createFile(fileFullName, false, false);
	}

	/**
	 * 创建文件
	 * @throws IOException 如果父级目录不存在时，则报错
	 */
	public static void createFile(File file) throws IOException {
		createFile(file, false, false);
	}

	/**
	 * 创建文件
	 * @param file
	 * @param removeFlag	为true时 若文件已存在将原文件删除，创建新文件。
	 * @param createDir		为true时 创建不存在的父级目录
	 * @throws IOException
	 */
	public static void createFile(File file, boolean removeFlag, boolean createDir) throws IOException {
		if (file.exists()) {
			if (removeFlag) {
				file.delete();
			} else {
				throw new IOException("文件已存在");
			}
		}
		File parent = file.getParentFile();
		if(parent != null && !parent.exists()
				&& createDir == true) 
			parent.mkdirs();
		file.createNewFile();
	}

	/**
	 * 创建文件
	 * @param fileFullName 文件全路径 如D:\\a.txt
	 * @param removeFlag 为true时 若文件已存在将原文件删除，创建新文件。
	 * @param createDir		为true时 创建不存在的父级目录
	 * @throws IOException
	 */
	public static void createFile(String fileFullName, boolean removeFlag, boolean createDir)
			throws IOException {
		File file = new File(fileFullName);
		createFile(file, removeFlag, createDir);
	}

	public static void append(File file, List<String> contentList)
			throws IOException {
		if (contentList == null || contentList.size() == 0) {
			return;
		}
		if(file == null || !file.exists())
			throw new IOException(file + " 不存在.");
		String sep = System.getProperty("line.separator");
		FileWriter writer = null;
		try {
			StringBuilder buf = new StringBuilder();
			for (String str : contentList) {
				buf.append(str).append(sep);
			}
			writer = new FileWriter(file, true);
			writer.write(buf.toString().toCharArray());
			writer.flush();
		} finally {
			if (writer != null) 
				writer.close();
		}
	}
	
	/**
	 * 积分商城上传图片到服务器
	 * smallWidth、smallHeight、returnBigImg任意一个参数为NULL 则不产生小图
	 * @param imgs			
	 * @param imgsFileName	原文件名
	 * @param baseRealPath	图片在服务器真实的根路径 例:c:/tomcat/webapps/frontend
	 * @param smallWidth	产生小图片的宽度，可空
	 * @param smallHeight	产生小图片的高度，可空
	 * @param returnBigImg	是否返回大图的地址，可空
	 * @return	上传成功返回相对的路径
	 * @throws BaseException
	 */
	public static List<String> uploadForIntegralImgs(File[] imgs, String[] imgsFileName,
			String baseRealPath, String savePath, Integer smallWidth, Integer smallHeight, Boolean returnBigImg) throws BaseException, IOException {
		return uploadImgs(imgs, imgsFileName, null, baseRealPath
				, savePath, smallWidth, smallHeight, returnBigImg);
	}
	
	/**
	 * 上传文件到服务器
	 * @param imgs			
	 * @param imgsFileName	原文件名
	 * @param toNames		上传文件时规定的文件名 不带文件后缀，不传用当前时间+三位随机数 作为文件名
	 * @param baseRealPath	图片在服务器真实的根路径 例:c:/tomcat/webapps/frontend
	 * @param filePath		图片的相对路径	 例：upload/img
	 * @param returnBigImg	是否返回大图的地址
	 * @return	上传成功返回相对的路径
	 * @throws BaseException
	 */
	public static List<String> uploadImgs(File[] imgs, String[] imgsFileName, String[] toNames,
			String baseRealPath, String filePath, boolean returnBigImg) throws BaseException, IOException {
		return uploadImgs(imgs, imgsFileName, toNames, baseRealPath
				, filePath, 500, 150, returnBigImg);
	}
	
	/**
	 * 上传文件到服务器
	 * smallWidth、smallHeight、returnBigImg任意一个参数为NULL 则不产生小图
	 * @param imgs			
	 * @param imgsFileName	原文件名
	 * @param toNames		上传文件时规定的文件名 不带文件后缀，不传用当前时间+三位随机数 作为文件名
	 * @param baseRealPath	图片在服务器真实的根路径 例:c:/tomcat/webapps/frontend
	 * @param filePath		图片的相对路径	 例：upload/img
	 * @param smallWidth	产生小图片的宽度，可空
	 * @param smallHeight	产生小图片的高度，可空
	 * @param returnBigImg	是否返回大图的地址，可空
	 * @return	上传成功返回相对的路径
	 * @throws BaseException
	 */
	public static List<String> uploadImgs(File[] imgs, String[] imgsFileName, String[] toNames,
			String baseRealPath, String filePath, Integer smallWidth, Integer smallHeight, Boolean returnBigImg) throws BaseException, IOException {
		if(imgs == null || imgs.length == 0)
			return new ArrayList<String>(0);
		if(StringUtils.isBlank(baseRealPath))
			throw new BaseException("arg baseRealPath is blank in (uploadFiles) method.");
		if(StringUtils.isBlank(filePath))
			throw new BaseException("arg filePath is blank in (uploadFiles) method.");
		if(imgsFileName == null || imgsFileName.length != imgs.length) 
			throw new BaseException("arg filesFileName's length is not equeal " +
					"files in (uploadFiles) method.");
		
		String path = baseRealPath + Symbol.SLASH + filePath;
		File temp = new File(path);
		File smallDir = new File(temp, Constants.MOBILE_IMAGE_PATH);
		if (!temp.exists())
			temp.mkdirs();
		if (!smallDir.exists())
			smallDir.mkdirs();
		List<String> urls = new ArrayList<String>();
		Random r = new Random();
		for(int i = 0; i < imgs.length; i++) {
			String postfix = RegularUtils.getfilePostfix(imgsFileName[i]);
			String fileName = (toNames == null ? System.currentTimeMillis() 
					+ "" + r.nextInt(100) + i : toNames[i]) + Symbol.PERIOD + postfix;
			File uploadFile = new File(path, fileName);		//存储的大图
			ImageTools.resizeImage(imgs[i].getAbsolutePath(), uploadFile.getAbsolutePath(), 960, 760, true);
			if(smallWidth != null && smallHeight != null && returnBigImg != null) {
				File smallFile = new File(smallDir, fileName);	//存储的小图
				ImageTools.resizeImage(imgs[i].getAbsolutePath(), smallFile.getAbsolutePath(), smallWidth, smallHeight, true);
				if(returnBigImg)
					urls.add( filePath + Symbol.SLASH + fileName);
				else
					urls.add( filePath + Symbol.SLASH + Constants.MOBILE_IMAGE_PATH 
							+ Symbol.SLASH + fileName);
			}else{
				urls.add( filePath + Symbol.SLASH + fileName);
			}
			imgs[i].delete();
		}
		return urls;
	}
	
}
