package com.deying.util.core.com.framework.common.tools;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

public class ZStringUntils {
	
	/**
	 * MD5加密
	 * @param inStr
	 * @return
	 */
	public String encodeMd5(String inStr) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(inStr.getBytes());
			byte[] digest = md.digest();
			return byte2hex(digest);
		} catch (Exception e) {
			System.out.println(e.toString());
			return "";
		}
	}
	
	public static String byte2hex(byte[] in) {
		StringBuilder sb = new StringBuilder();
		if (in != null) {
			for (int i = 0; i < in.length; i++) {
				String temp = Integer.toHexString(((int) in[i]) & 0xFF);
	            for(int t = temp.length();t<2;t++)
	            {
	                sb.append("0");
	            }
	            sb.append(temp);

			}
		}
		return sb.toString();
	}
	public static byte[] hex2byte(String hexStr){
        byte[] bts = new byte[hexStr.length() / 2];
        for (int i = 0,j=0; j < bts.length;j++ ) {
           bts[j] = (byte) Integer.parseInt(hexStr.substring(i, i+2), 16);
           i+=2;
        }
        return bts;
    }

	public static void main(String arg[]) throws Exception {

		InputStream in = new FileInputStream("c:\\1.jpg");
		byte[] b = new byte[in.available()];
		in.read(b);
		System.out.println("============" + ZStringUntils.byte2hex(b));
		byte[] out = ZStringUntils.hex2byte(ZStringUntils.byte2hex(b));
		OutputStream o = new FileOutputStream("c:\\2.jpg");
		o.write(out);
		o.flush();
		o.close();
	}
}
