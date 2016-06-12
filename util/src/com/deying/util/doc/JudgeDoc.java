package com.deying.util.doc;

import java.util.Properties;

public class JudgeDoc {
	public static String docName() {
		Properties prop = System.getProperties();
		String os = prop.getProperty("os.name");
//		if(os.startsWith("Lin") || os.startsWith("lin")){
//			os="linex";
//			return  os;
//		}else if (os.startsWith("win") || os.startsWith("Win")){
//			os="windows";
//			return os;
//		}
		return os;
	}
}
