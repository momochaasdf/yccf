package com.deying.util.data;

import java.util.Collection;
import java.util.Date;
import java.util.Map;

/**
 * @author wangxj
 * Jun 6, 2013
 * 
 */
public class DataTypeUtils {
	
	/**
	 * data==null return true;
	 * @param data
	 * @return
	 */
	public static boolean isBasicType(Object data) {
		if(data == null
				|| data instanceof CharSequence
				|| data instanceof Number
				|| data instanceof Boolean
				|| data instanceof Character
				|| data instanceof Date
				|| data.getClass().isArray()
				|| data instanceof Collection<?>
				|| data instanceof Map<?,?>
				|| data instanceof Enum){
			return true;
		}
		return false;
	}
	
	/**
	 * data==null return true;
	 * @param data
	 * @return
	 */
	public static boolean isBasicType(Class<?> clazz) {
		if(clazz == null
				|| CharSequence.class.isAssignableFrom(clazz)
				|| Number.class.isAssignableFrom(clazz) 
				|| Boolean.class.isAssignableFrom(clazz)
				|| Character.class.isAssignableFrom(clazz)
				|| Date.class.isAssignableFrom(clazz)
				|| clazz.isArray()
				|| Collection.class.isAssignableFrom(clazz)
				|| Map.class.isAssignableFrom(clazz)
				|| clazz.isEnum()){
			return true;
		}
		return false;
	}

}
