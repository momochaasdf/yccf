package com.deying.util.core.com.framework.hibernate3;

public class DataSourceHandler {

	private static ThreadLocal<String> ds = new ThreadLocal<String>();   
	       
	public static void setDataSourceType(String type) {
		ds.set(type);
	}

	public static String getDataSourceType() {
		return ds.get();
	}

	public static void clearDataSourceType() {
		ds.remove();
	} 

}
