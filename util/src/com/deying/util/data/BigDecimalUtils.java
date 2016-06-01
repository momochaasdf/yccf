package com.deying.util.data;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * @author wangxj
 * 
 */
public class BigDecimalUtils {

	public static String bigDecimal2String(BigDecimal bigDecimal) {
		if (bigDecimal == null)
			return "";
		DecimalFormat df = new java.text.DecimalFormat("#0.0");
		return df.format(bigDecimal);
	}
	
	public static String formatBigDecimal2String(BigDecimal bigDecimal) {
		if (bigDecimal == null)
			return "";
		DecimalFormat df = new java.text.DecimalFormat("#0.00");
		return df.format(bigDecimal);
	}
	
	public static String formatBigDecimal3String(BigDecimal bigDecimal) {
		if (bigDecimal == null)
			return "";
		DecimalFormat df = new java.text.DecimalFormat("#0.000");
		return df.format(bigDecimal);
	}
	
	public static String bigDecimal2Integer(BigDecimal bigDecimal) {
		if (bigDecimal == null)
			return "";
		DecimalFormat df = new java.text.DecimalFormat("#0");
		return df.format(bigDecimal);
	}
	
	public static String bigDecimal2money(BigDecimal bigDecimal){
		if (bigDecimal == null)
			return "";
		String money=bigDecimal.toString();
		int length=money.length();
		if(length>3){
			for(int i=1;i<=length;i++){
				if(i%3==0&&i!=length){
					int index=length-i;
					String str_start=money.substring(0,index);
					String str_last=money.substring(index);
					money=str_start+","+str_last;
				}
			}
		}
		return money;
	}
}
