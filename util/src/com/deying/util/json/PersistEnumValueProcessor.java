package com.deying.util.json;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import com.deying.util.enums.PersistentEnum;

/**
 * @author wangxj
 * Apr 26, 2013
 * 
 */
public class PersistEnumValueProcessor implements JsonValueProcessor {
	

    public Object processArrayValue( Object value, JsonConfig jsonConfig ) {
    	return process( value, jsonConfig );
    }

    public Object processObjectValue( String key, Object value, JsonConfig jsonConfig ) {
       return process( value, jsonConfig );
    }
    
    private Object process(Object value, JsonConfig jsonConfig){
    	JSONObject jsonObject = null;
        if( value instanceof PersistentEnum ){
      	  PersistentEnum<?> en = (PersistentEnum<?>)value;
           jsonObject = new JSONObject()
   					.element("value", en.getValue())
   					.element("displayName", en.getDisplayName());
        }else{
           jsonObject = new JSONObject( true );
        }
        return jsonObject;
    }

}
