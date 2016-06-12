package com.deying.util.message;

import net.sf.json.JSONObject;
import org.directwebremoting.Browser;
import org.directwebremoting.ScriptSessions;

public class SendShopMsg {
	
	public static final String key = "SHOP";
	private String shopId;
	
	public SendShopMsg() {
		super();
	}
	
	public SendShopMsg(String shopId) {
		this.shopId = shopId;
	}
	
	public void send(final Message message) {
		/*Container container = ServerContextFactory.get().getContainer();
		ScriptSessionManager manager = container.getBean(ScriptSessionManager.class);
		Collection<RealScriptSession> s = manager.getScriptSessionsByHttpSessionId(sessionId);
		Browser.withSession(((RealScriptSession)s.toArray()[0]).getId(), new Runnable() {
			public void run() {
				ScriptSessions.addFunctionCall("setVal",id);
			}
		});*/
		
		Browser.withAllSessionsFiltered(new MessageFilter(key, shopId), new Runnable() {
			public void run() {
				ScriptSessions.addFunctionCall("showMsg",JSONObject.fromObject(message).toString());
			}
		});
	} 
	
}
