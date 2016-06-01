package com.deying.util.message;

import org.directwebremoting.ScriptSession;
import org.directwebremoting.WebContextFactory;

/**
 * @author wangxj
 * 
 */
public class RegisterUser {

	/**
	 * 注册用户到DWR容器中
	 * @param userKey	用户存容器中的属性名
	 * @param userVal	用户存容器中的值
	 */
	public void register(String userKey, String userVal) {
		ScriptSession scriptSession = WebContextFactory.get()
				.getScriptSession();
		scriptSession.setAttribute(userKey, userVal);
	}
	
}
