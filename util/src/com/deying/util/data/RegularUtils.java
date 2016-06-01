package com.deying.util.data;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

import com.deying.util.FileConstants;
import com.deying.util.exception.BaseException;

/**
 * @author wangxj
 * May 8, 2013
 * 有关正则表达式的功能
 */
public class RegularUtils {

	
	/**
	 * 在指定路径的倒数第二处添加文件夹
	 *(/frontend/img/a.jpg ==>  /frontend/img/add/a.jpg)
	 * @param originalUri
	 * @param fileName
	 * @return
	 */
	public static String addFileInLastURI(String originalUri, String fileName) {
		if(StringUtils.isBlank(originalUri) || StringUtils.isBlank(fileName)) {
			return originalUri;
		}
		return originalUri.replaceFirst("^((https?://)?(/|\\\\)?([^/\\\\]+(/|\\\\))*?)([^/\\\\]+(/|\\\\)?)$", "$1" + fileName + "/$6");
	}
	
	/**
	 * 在指定路径的指定的文件夹
	 *(/frontend/img/remove/a.jpg ==>  /frontend/img/a.jpg)
	 * @param originalUri
	 * @param fileName
	 * @return
	 */
	public static String removeFileInURI(String originalUri, String fileName) {
		if(StringUtils.isBlank(originalUri) || StringUtils.isBlank(fileName)) {
			return originalUri;
		}
		return originalUri.replaceAll("(/|\\\\)" + fileName + "([/\\\\]|$)", "" + "$2");
	}
	
	public static String fileNamePrefix(String fileName, String prefix) {
		return modifyFileName(fileName, prefix, null);
	}
	
	public static String fileNamePostfix(String fileName, String postfix) {
		return modifyFileName(fileName, null, postfix);
	}
	
	/**
	 * modifyFileName("c:/test/aa/a.txt", "1", "2") ==> "c:/test/aa/1a2.txt"
	 * @param fileName
	 * @param prefix
	 * @param postfix
	 * @return
	 */
	public static String modifyFileName(String fileName, String prefix, String postfix) {
		if(StringUtils.isBlank(fileName))
			throw new BaseException("FileName is blank, can't modifyFileName.");
		prefix = prefix == null ? "" : prefix;
		postfix = postfix == null ? "" : postfix;
		return fileName.replaceFirst("^((https?://)?(/|\\\\)?([^/\\\\]+(/|\\\\))*)([^/\\\\\\.]+)((\\.[^/\\\\\\.]+)?)$", "$1" + prefix + "$6" + postfix + "$7");
	}
	
	/**
	 * modifyFileName("c:/test/aa/a.txt", "b.txt") ==> "c:/test/aa/b.txt"
	 * @return
	 */
	public static String modifyFileName(String path, String newFileName) {
		if(StringUtils.isBlank(path))
			throw new BaseException("path is blank, can't modifyFileName.");
		if(StringUtils.isBlank(newFileName))
			return path;
		return path.replaceAll("^((https?://)?(/|\\\\)?([^/\\\\]+(/|\\\\))*)[^/\\\\\\.]+(\\.[^/\\\\\\.]+)?$", "$1" + newFileName);
	}
	
	/**
	 * "c:/test/aa/a.txt" ==> "a.txt"
	 * @param path
	 * @return
	 */
	public static String getfileNameOfPath(String path) {
		if(StringUtils.isBlank(path)
				|| path.endsWith("/")
				|| path.endsWith("\\"))
			return null;
		return path.replaceFirst("^((https?://)?(/|\\\\)?([^/\\\\]+(/|\\\\))*)([^/\\\\]+)$", "$6");
	}
	
	/**
	 * "c:/test/aa/a.txt" ==> "txt"
	 * "a.txt" ==> "txt"
	 * @param path
	 * @return
	 */
	public static String getfilePostfix(String path) {
		if(StringUtils.isBlank(path))
			return null;
		int lastIndex = path.lastIndexOf(Symbol.PERIOD);
		if(lastIndex >= 0) {
			return path.substring(lastIndex + 1).toLowerCase();
		}else
			return null;
	}
	
	/**
	 * 判断这个URL是否含有参数
	 * @param url
	 * @return
	 */
	public static boolean isParamUrl(String url) {
		if(StringUtils.isNotBlank(url)) {
			int lastIndex = url.lastIndexOf(Symbol.QUESTION);
			if(lastIndex != -1) {
				url = url.substring(lastIndex + 1);
				if(url.indexOf(Symbol.EQ) != -1)
					return true;
			}
		}
		return false;
	}
	
	public static void main(String[] args) {
		Pattern p = Pattern.compile("^((/|\\\\)?([^/\\\\]+(/|\\\\))*)[^/\\\\\\.]+(\\.[^/\\\\\\.]+)?$");
		p.matcher("c:/test/aa/");
		System.out.println(removeFileInURI("aa/bb/cc", "bb"));
	}
	
	public static boolean isRightMobile(String mobile) {
		Pattern pattern = Pattern.compile(FileConstants.MOBILE_PATTON);
		Matcher matcher = pattern.matcher(mobile);
		return matcher.matches();
	}
}
