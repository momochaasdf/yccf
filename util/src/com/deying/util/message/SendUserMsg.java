package com.deying.util.message;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptSessions;

public class SendUserMsg {
	
	public static final String key = "USER";
	private String userId;
	
	public SendUserMsg() {
		super();
	}
	
	public SendUserMsg(String userId) {
		this.userId = userId;
	}
	
	public void send(final Message message) {
		Browser.withAllSessionsFiltered(new MessageFilter(key, userId), new Runnable() {
			public void run() {
				ScriptSessions.addFunctionCall("showMsg",message);
			}
		});
	} 
	
}
