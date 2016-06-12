package com.deying.util.message;

import org.directwebremoting.ScriptSession;
import org.directwebremoting.ScriptSessionFilter;

/**
 * @author wangxj
 * 
 */
public class MessageFilter implements ScriptSessionFilter {

	private String key = null; 
	private String value = null; 
	
	public MessageFilter(String key, String val) {
		this.key = key;
		this.value = val;
	}
	
	@Override
	public boolean match(ScriptSession session) {
		Object check = session.getAttribute(key);
		return (check != null) && (check.equals(value));
	}

}
