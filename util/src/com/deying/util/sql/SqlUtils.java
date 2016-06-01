package com.deying.util.sql;

import java.util.Calendar;
import java.util.Collection;
import java.util.Date;

import com.deying.util.data.DateUtils;
import com.deying.util.data.Symbol;
import com.deying.util.enums.PersistentEnum;

/**
 * @author wangxj
 * Mar 19, 2013
 * 
 */
public class SqlUtils {
	
	@SuppressWarnings("unchecked")
	public static String value2Sql(Object o){
		String str = null;
		if(o == null)
			str = "null";
		else if(o instanceof String || o instanceof StringBuffer || 
				o instanceof StringBuilder) 
			str = "'" + o.toString() + "'";
		else if(o instanceof Date)
			str = "'" + DateUtils.DATE_FMT.format((Date)o) + "'";
		else if(o instanceof Calendar)
			str = "'" + DateUtils.DATE_FMT.format(((Calendar)o).getTime()) + "'";
		else if(o instanceof Object[]) {
			str = " ( ";
			Object[] tmp = (Object[])o;
			for(Object ot: tmp) 
				str += value2Sql(ot) + ",";
			str = str.substring(0, str.length()-1);
			str += " ) ";
		}else if(o instanceof Collection) {
			str = value2Sql(((Collection)o).toArray());
		}else if(o instanceof PersistentEnum){
			str = value2Sql(((PersistentEnum)o).getValue());
		}else
			str = o.toString();
		return str;
	}
	
	public static String format(String propertyName, Object value, String op){
		return Symbol.SPACE + propertyName + Symbol.SPACE + op + Symbol.SPACE + value2Sql(value) + Symbol.SPACE;
	}
	
	/**
	 * value 不转化为sql变量形式，使用原生值
	 * @param propertyName
	 * @param value
	 * @param op
	 * @return
	 */
	public static String formatRawVal(String propertyName, Object value, String op){
		return Symbol.SPACE + propertyName + Symbol.SPACE + op + Symbol.SPACE + value + Symbol.SPACE;
	}
	

}
