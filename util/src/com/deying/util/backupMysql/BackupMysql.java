package com.deying.util.backupMysql;
import java.io.File;
import java.io.IOException;

import com.deying.util.FileConstants;

/**
 * MySQL数据库的备份与恢复 缺陷：可能会被杀毒软件拦截
 * 
 * @author xxx
 * @version xxx
 */
public class BackupMysql {
	
	/** 访问MySQL数据库的用户名 */
	private static final String username = FileConstants.JDBC_USER_NAME;
	/** 访问MySQL数据库的密码 */
	private static final String password = FileConstants.JDBC_PASSWORD;
	
	/**
	 * 备份数据库
	 * 
	 * @param filepath
	 *            文件路径
	 * @param dbname
	 *            要备份的数据库名
	 */
	public static void backup(String filepath, String filename, String dbname) {
		File file = new File(filepath);
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir();
		}
		
		String stmt1 = "mysqldump " + dbname + " -u " + username + " -p" + 
				password + " --default-character-set=utf8 --result-file=" + filepath + filename;
		//--default-character-set这儿设为你安装数据库时所选择的语言，比如说你安装MySQL里用的默认的UTF-8，这儿
		//就设为UTF8，若是gb2312的话应设为gb2312,如果这儿设得不对的话，你用ultraedit打开这个备份后的sql文件时，
		//中文部分显示乱码。
		try {
			Runtime.getRuntime().exec(stmt1);
			System.out.println("数据已导出到文件" + filepath + filename + "中");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 恢复数据库
	 * 
	 * @param filepath
	 *            备份文件路径
	 * @param dbname
	 *            数据库名
	 */
	public static void restore(String filepath, String filename, String dbname) {
		
		   // 新建数据库
		   String stmt1 = "mysqladmin -u" + username
				+ " -p" + password + " create " + dbname;
		   //-p后面加的是你的密码
		   String stmt2 = "mysql -u" + username
				+ " -p" + password + " --default-character-set=utf8 " + dbname + " < " + filepath + filename;
		   String[] cmd = { "cmd", "/c", stmt2 };
		  
		   try {
		    Runtime.getRuntime().exec(stmt1);
		    Runtime.getRuntime().exec(cmd);
		    System.out.println("数据已从 " + filepath + filename + " 导入到数据库中");
		   } catch (IOException e) {
		    e.printStackTrace();
		   }
	}
	public static void main(String[] args) {
		BackupMysql.backup("c:/", "yccf20160605.sql", "test");
		BackupMysql.restore("c:/", "yccf20160605.sql", "test");
	}
}
