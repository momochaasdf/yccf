package com.deying.util.data;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.Calendar;
import java.util.Date;
import org.apache.commons.lang.StringUtils;

import com.deying.util.exception.BaseException;

/**
 * @author wangxj
 * Mar 15, 2013
 * 
 */
public class DataConvert {
	
	public static final String separator = ",";
	
	/**
	 * 转换数组类型
	 * @param <T>
	 * @param obj  为aa,bb,cc 类型
	 * @param clazz
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static <T> T[] convertArray(String obj, Class<T[]> clazz, String separator) throws BaseException {
		if(StringUtils.isBlank(obj)) throw new BaseException("obj is null.");
		if(StringUtils.isBlank(separator))
			separator = DataConvert.separator;
		String[] s = obj.replaceAll("[\\[\\]]", "").split(separator);
		return convertArray(s, clazz);
	}
	
	public static <T> T[] convertArray(String obj, Class<T[]> clazz) throws BaseException {
		return convertArray(obj, clazz, separator);
	}
	
	@SuppressWarnings("unchecked")
	public static <T> T[] convertArray(String[] objs, Class<T[]> clazz) throws BaseException {
		if(objs == null) return null;
		if((Object)clazz == (Object)Object[].class)
			return (T[])objs;
		T[] copy = (T[]) Array.newInstance(clazz.getComponentType(), objs.length);
        int i = 0;  				
		for(String temp : objs) 
			copy[i++] = (T)convertType(temp, clazz.getComponentType());
		return copy;
	}
	
	public static <T> T convertType(String obj, Class<T> clazz)  throws BaseException {
		return convertType(obj, clazz, null);
	}
	
	/**
	 * 转换数据类型包括数组
	 * @param <T>
	 * @param obj
	 * @param clazz
	 * @return
	 * @throws BaseException
	 */
	@SuppressWarnings("unchecked")
	public static <T> T convertType(String obj, Class<T> clazz, String separator)  throws BaseException {
		if(obj == null) throw new BaseException("obj is null.");
		if(clazz == null) throw new BaseException("you except convert type is null.");
		obj = obj.trim().replaceAll("^['\"]*([^'\"]*)['\"]*$", "$1");
		T t = null;
		if(clazz.isArray()) {
			if(StringUtils.isBlank(separator))
				separator = DataConvert.separator;
			String[] os = obj.replaceAll("[\\[\\]]", "").split(separator);
			t = (T)Array.newInstance(clazz.getComponentType(), os.length);
	        int i = 0;  				
			for(String temp : os) 
				Array.set(t, i++, convertType(temp, clazz.getComponentType()));
		}else{
			if(clazz.getSuperclass().equals(Number.class)) {
				try {
					Constructor<T> c = clazz.getConstructor(String.class);
					t = c.newInstance(obj);
				} catch (Exception e) {
					//throw new BaseException("convert value error in obtionInfoVal method.");
				} 
			}else if(clazz.equals(Date.class)) {
				if (obj.length() <= 10) {
					t = (T)DateUtils.parse(obj.toString(), DateUtils.DATE_STR);
				} else {
					t = (T)DateUtils.parse(obj.toString());	
				}
			}else if(clazz.equals(Calendar.class)) {
				t = (T)DateUtils.parse2Calenar(obj.toString()); 
			}else {
				t = (T)obj;
			}
		}
		return t;
	}
	
	public static <T> String array2String(T[] data) {
		if(data == null) return null;
		StringBuffer sb = new StringBuffer("[");
		for(int i = 0; i < data.length; i++) {
			if(i == data.length - 1)
				sb.append(data[i].toString());
			else
				sb.append(data[i].toString()).append(Symbol.COMMA);
		}
		sb.append("]");
		return sb.toString();
	}
	
}
