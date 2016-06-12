package com.deying.util.enums;


/**
 * 
 * @author wagnxj
 */
public interface PersistentEnum<T> {
	
	T getValue();
	
	String getDisplayName();
	
	String getClassName();
}
