package com.deying.util.command;
/**
 * @author wangxj
 * Apr 22, 2013
 * 
 */
public class Native2ascii {
	
	public static String basePath = "E:\\develop\\workspace\\util\\src\\sources\\";
	
	public static String inFile = "base.properties";
	public static String outFile = "base_out.properties";
	
	
	public static void main(String[] args) {
		String in = basePath + inFile;
		String out = basePath + outFile;
		Command.exec("native2ascii -encoding UTF-8 " + in + " " + out);
	}

}
