package com.deying.util.json;

import java.util.Date;
import java.util.Map;

/**
 * Object转换到各种类型值的工具类
 * @author penghy
 * @date 2014-09-04
 */
public class ValueUtils {

	
	/**
	 * Object转换成byte类型
	 * @param obj
	 * @return
	 */
	public static byte toByte(Object obj) {
		if (obj == null) {
			return 0;
		}
		try {
			return Byte.parseByte(obj.toString());
		} catch (NumberFormatException nfe) {
			return 0;
		}
	}
	
	/**
	 * Object转换成int类型
	 * @param obj
	 * @return
	 */
	public static int toInt(Object obj) {
		if (obj == null) {
			return 0;
		}
		try {
			return Integer.parseInt(obj.toString());
		} catch (NumberFormatException nfe) {
			return 0;
		}
	}
	
	/**
	 * Object转换成double类型
	 * @param obj
	 * @return
	 */
	public static double toDouble(Object obj){
		if(obj==null){
			return 0;
		}
		try{
			return Double.parseDouble(obj.toString());
		} catch (NumberFormatException nfe) {
			return 0;
		}
	}

	/**
	 * Object转换成String类型
	 * @param obj
	 * @return
	 */
	public static String toString(Object obj) {
		return obj != null ? obj.toString() : "";
	}

	/**
	 * Object转换成Date类型
	 * @param obj
	 * @return
	 */
	public static Date toDate(Object obj) {
		return obj != null && obj instanceof Date ? (Date) obj : null;
	}
	
	/**
	 * Object转换成Map类型
	 * @param obj
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String,Object> toMap(Object obj) {
		return obj != null && obj instanceof Map ? (Map<String,Object>) obj : null;
	}

}
