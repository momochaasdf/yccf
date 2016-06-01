package com.deying.util.json;

import java.util.Date;

import com.deying.util.data.DateUtils;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * @author wangxj
 * Apr 24, 2013
 * 
 */
public class DateJsonValueProcessor implements JsonValueProcessor {
	
	private String dateFormat = DateUtils.DATE_FMT_STR;
	
	public DateJsonValueProcessor() {
		
	}

    public DateJsonValueProcessor(String dateFormat) {
       this.dateFormat = dateFormat;
    }

    public Object processArrayValue( Object value, JsonConfig jsonConfig ) {
    	return process( value, jsonConfig );
    }

    public Object processObjectValue( String key, Object value, JsonConfig jsonConfig ) {
       return process( value, jsonConfig );
    }
    
    private Object process(Object value, JsonConfig jsonConfig){
    	if( value instanceof java.sql.Date ){
    		value = new Date( ((java.sql.Date) value).getTime() );
         }
         if( value instanceof Date )
			return DateUtils.format((Date)value, dateFormat);
         else
            return null;
    }

}
