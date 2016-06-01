package com.deying.util.enums;

import java.lang.reflect.Method;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.data.Symbol;

/**
 * 
 * @author wangxj
 */
public final class PersistentEnums {
	
	private static final Logger LOG = LoggerFactory.getLogger(PersistentEnums.class);
	
	/**
	 *  如果clazz中没有null值，value==null时return null值
	 * @param <K>
	 * @param <T>
	 * @param clazz
	 * @param value
	 * @return
	 */
	public static  <T extends Enum<T> & PersistentEnum<V>, V> T parse(Class<T> clazz, V value) {
		for(T t : clazz.getEnumConstants()) {
			if(t.getValue() == null && value == null) {
				return t;
			} else if(t.getValue() == null || value == null){
				continue;
			} else if(t.getValue().equals(value)){
				return t;
			}
		}
		return null;
	}
	
	/**
	 * 没有指定的enumClass枚举类时，则返回null
	 * @param enumClass
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Class<? extends PersistentEnum<?>> loadEnumClass(String enumClass) {
		Class<? extends PersistentEnum<?>> c = null;
		try {
			c = (Class<? extends PersistentEnum<?>>)Class.forName(FileConstants.ENUM_PKG + Symbol.PERIOD + enumClass);
		} catch (ClassNotFoundException e) {
			try {
				c = (Class<? extends PersistentEnum<?>>)Class.forName(FileConstants.ENUM_ALTER_PKG + Symbol.PERIOD + enumClass);
			} catch (ClassNotFoundException e1) {
				LOG.error("PersistentEnums loadEnumClass error, caurse by the " + enumClass + " parameter is error.", e);
			}
		}
		return c;
	}
	
	@SuppressWarnings("unchecked")
	public static <T> String getEnum(Class<T> clz) {
        try {
            Method values = clz.getDeclaredMethod("values");
            PersistentEnum<T>[] v = (PersistentEnum<T>[])values.invoke(clz);
            return getEnum(v);
        } catch ( Exception e ) {
        	LOG.error(clz.getSimpleName(), e);
        }
        return Symbol.EMPTY;
    }
	
    public static String getEnum( PersistentEnum< ? >[] pe ) {
        StringBuffer stringBuffer = new StringBuffer();
        for ( PersistentEnum< ? > item : pe ) {
            stringBuffer.append( "\"" );
            stringBuffer.append( item.getValue() );
            stringBuffer.append( "\":\"" );
            stringBuffer.append( item.getDisplayName() );
            stringBuffer.append( "\"," );
        }
        return stringBuffer.substring( 0 , stringBuffer.length() - 1 );
    }
	
}
