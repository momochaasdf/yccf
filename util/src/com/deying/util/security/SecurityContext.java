package com.deying.util.security;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;

/**
 * @author wangxj
 * Apr 7, 2013
 * 
 */
public class SecurityContext<T extends Serializable> implements Externalizable{
	
	private static final long serialVersionUID = 7396550641375652577L;
	
	private T security;
	private String ipAddress;
	private String sessionId;
	
	public T getSecurity() {
		return security;
	}

	public void setSecurity(T security) {
		this.security = security;
	}

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	@Override
	@SuppressWarnings("unchecked")
	public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {
		this.security = (T)in.readObject();
	}

	@Override
	public void writeExternal(ObjectOutput out) throws IOException {
		out.writeObject(security);
	}

}
