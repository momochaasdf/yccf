package com.deying.util.core.com.framework.common.tools;


public class MyStringUtils {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		System.out.println(Integer.parseInt("10", 16));
		StringBuilder str = new StringBuilder("");
		byte[] b = "65".getBytes();
		for (int i = 0; i < b.length; i++) {
			int a =b[i] & 0xff;
			if (Integer.toHexString(a).length() < 2) {
				str.append(0);
			}
			str.append(Integer.toHexString(a));
		}
		System.out.println(str.toString());
	}
	
	/**
	 * 生成32位随机数
	 * @return
	 */
	public static String genUid(){
		return new String(java.util.UUID.randomUUID().toString().replaceAll("-", ""));  


	}

}
