package com.deying.util.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.StringUtils;

import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.data.RegularUtils;
import com.deying.util.data.Symbol;
import com.deying.util.exception.BaseException;

public class FileUtilNew {

	/**
	 * 
	 * 图片等比例压缩上传
	 * @param imgs 图片对象数组
	 * @param imgsFileName 图片名称数组（主要是用于截取图片的格式.jpg,jepg等）
	 * @param toNames 上传文件时规定的文件名 不带文件后缀，不传用当前时间+三位随机数 作为文件名
	 * @param baseRealPath 上传图片的根目录
	 * @param filePath 指定的上传图片的子目录----图片真正的上传目录是 baseRealPath+filePath
	 * @param biglength  大图压缩到的长宽像素，为null则是 不压缩
	 * @param smallLength 小图压缩到的长宽像素 ，为null则是不存放小图
	 * @param type 按哪一条边压缩 1:按高压缩2：按宽压缩
	 * @param returnBigImg 是否返回大图地址
	 * 压缩规则:x——>实际图片的高，y——>压缩的最小图片的高
	 * if x>y then actualx= y,宽度按原图比例压缩  else actualx = x,宽度不变
	 * @return
	 * @throws BaseException
	 * @throws IOException
	 * @author chenjie
	 * @create 2015-12-7 下午3:24:47
	 */
	public static List<String> uploadImgsEqualProportion(File[] imgs, String[] imgsFileName, String[] toNames,String baseRealPath,
			String filePath,Integer biglength ,Integer smallLength ,int type,Boolean returnBigImg) throws BaseException, IOException {
		if(imgs == null || imgs.length == 0){
			return new ArrayList<String>(0);
		}
		if(StringUtils.isBlank(baseRealPath)){//上传的根目录为空
			throw new BaseException("arg baseRealPath is blank in (uploadFiles) method.");
		}
		if(imgsFileName == null || imgsFileName.length != imgs.length){//上传的图片和图片名称个数不匹配
			throw new BaseException("arg filesFileName's length is not equeal " +
					"files in (uploadFiles) method.");
		}
		if(toNames != null && toNames.length != imgs.length){//有指定的图片名称切上传的图片和有指定的图片名称个数不匹配
			throw new BaseException("arg toNames's length is not equeal " +
					"files in (uploadFiles) method.");
		}
		
		//获得图片存放地址
		String path;
		if(filePath == null || "".equals(filePath.trim())){
			path = baseRealPath;
		}else{
			path = baseRealPath + Symbol.SLASH + filePath;
		}
		
		//创建大图对象及相关目录
		File temp = new File(path);
		if (!temp.exists()){
			temp.mkdirs();//mkdirs（）创建此抽象路径指定的目录，包括所有必须但不存在的父目录。（及可以创建多级目录，无论是否存在父目录）
						 //mkdir（）创建此抽象路径名称指定的目录（及只能创建一级的目录，且需要存在父目录）
		}
		
		//创建小图对象及相关目录
		File smallDir = new File(temp, Constants.MOBILE_IMAGE_PATH);
		if (!smallDir.exists()){
			smallDir.mkdirs();
		}
		
		List<String> urls = new ArrayList<String>();
		Random r = new Random();
		for(int i = 0; i < imgs.length; i++) {
			String postfix = RegularUtils.getfilePostfix(imgsFileName[i]);
			String fileName = (toNames == null ? System.currentTimeMillis() + "" + r.nextInt(100) + i : toNames[i]) + Symbol.PERIOD + postfix;
			File bigFile = new File(path, fileName);		//存储的大图
			
			//按高等比例压缩
			if(type == 1){
				ImageTools.resizeImage(imgs[i].getAbsolutePath(), bigFile.getAbsolutePath(), null, biglength, true);
			}else{//按宽等比例压缩
				ImageTools.resizeImage(imgs[i].getAbsolutePath(), bigFile.getAbsolutePath(), biglength, null, true);
			}
			
			
			if(smallLength != null && returnBigImg != null) {
				File smallFile = new File(smallDir, fileName);	//存储的小图
				//按高等比例压缩
				if(type == 1){
					ImageTools.resizeImage(imgs[i].getAbsolutePath(), smallFile.getAbsolutePath(), null, smallLength, true);
				}else{//按宽等比例压缩
					ImageTools.resizeImage(imgs[i].getAbsolutePath(), smallFile.getAbsolutePath(), smallLength, null, true);
				}
				if(returnBigImg){
					urls.add( filePath + Symbol.SLASH + fileName);
				}else{
					urls.add( filePath + Symbol.SLASH + Constants.MOBILE_IMAGE_PATH 
							+ Symbol.SLASH + fileName);
				}
			}else{
				urls.add( filePath + Symbol.SLASH + fileName);
			}
			imgs[i].delete();
		}
		
		return urls;
	}
	
	
	/**
	 * 
	 * 根据需求来指定图片大小
	 * @param imgs 图片文件
	 * @param imgsFileName 图片名称
	 * @param toNames 指定的文件名
	 * @param baseRealPath  图片存放跟路径
	 * @param filePath 图片存放子路径
	 * @param bigWidth 大图的宽度
	 * @param bigHegight 大图的高度
	 * @param smallWidth 小图的宽度
	 * @param smallHegight 小图的高度
	 * @param isFillAll 是否填充
	 * @return
	 * @throws BaseException
	 * @throws IOException
	 * @author chenjie
	 * @create 2015-12-17 下午2:38:54
	 */
	public static List<String> uploadImgsRequest(File[] imgs, String[] imgsFileName, String[] toNames,String baseRealPath,
			String filePath,Integer bigWidth ,Integer bigHegight ,Integer smallWidth, Integer smallHegight,boolean isFillAll) throws BaseException, IOException {
		if(imgs == null || imgs.length == 0){
			return new ArrayList<String>(0);
		}
		if(StringUtils.isBlank(baseRealPath)){//上传的根目录为空
			throw new BaseException("arg baseRealPath is blank in (uploadFiles) method.");
		}
		if(imgsFileName == null || imgsFileName.length != imgs.length){//上传的图片和图片名称个数不匹配
			throw new BaseException("arg filesFileName's length is not equeal " +
					"files in (uploadFiles) method.");
		}
		if(toNames != null && toNames.length != imgs.length){//有指定的图片名称切上传的图片和有指定的图片名称个数不匹配
			throw new BaseException("arg toNames's length is not equeal " +
					"files in (uploadFiles) method.");
		}
		
		//获得图片存放地址
		String path;
		if(filePath == null || "".equals(filePath.trim())){
			path = baseRealPath;
		}else{
			path = baseRealPath + Symbol.SLASH + filePath;
		}
		
		//创建大图对象及相关目录
		File temp = new File(path);
		if (!temp.exists()){
			temp.mkdirs();//mkdirs（）创建此抽象路径指定的目录，包括所有必须但不存在的父目录。（及可以创建多级目录，无论是否存在父目录）
						 //mkdir（）创建此抽象路径名称指定的目录（及只能创建一级的目录，且需要存在父目录）
		}
		
		//创建小图对象及相关目录
		File smallDir = new File(temp, Constants.MOBILE_IMAGE_PATH);
		if (!smallDir.exists()){
			smallDir.mkdirs();
		}
		
		List<String> urls = new ArrayList<String>();
		Random r = new Random();
		for(int i = 0; i < imgs.length; i++) {
			String postfix = RegularUtils.getfilePostfix(imgsFileName[i]);
			String fileName = (toNames == null ? System.currentTimeMillis() + "" + r.nextInt(100) + i : toNames[i]) + Symbol.PERIOD + postfix;
			File bigFile = new File(path, fileName);		//存储的大图
			ImageTools.resizeImgsRequest(imgs[i].getAbsolutePath(), bigFile.getAbsolutePath(), bigWidth, bigHegight);
			if(smallWidth != null && smallHegight != null) {
				File smallFile = new File(smallDir, fileName);	//存储的小图
				//按高等比例压缩
				ImageTools.resizeImgsRequest(imgs[i].getAbsolutePath(), smallFile.getAbsolutePath(), smallWidth, smallHegight);
				urls.add( filePath + Symbol.SLASH + fileName);
			}else{
				urls.add( filePath + Symbol.SLASH + fileName);
			}
			imgs[i].delete();
		}
		return urls;
	}
	
}
