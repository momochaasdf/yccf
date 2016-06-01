package com.deying.util.rmi;

import java.net.MalformedURLException;
import java.rmi.Naming;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;

/**
 * @author wangxj
 * 
 */
public class LookupRemote {
	
	private static final Logger LOG = LoggerFactory.getLogger(LookupRemote.class);

	@SuppressWarnings("unchecked")
	public static <T> T lookup(Class<T> result) {
		try {
			return (T)Naming.lookup("rmi://" + FileConstants.IP_BACKEND + ":1099/" + result.getSimpleName());
		} catch (MalformedURLException e) {
			LOG.error("LookupRemote for {} error.", result.getSimpleName(), e);
		} catch (RemoteException e) {
			LOG.error("LookupRemote for {} error.", result.getSimpleName(), e);
		} catch (NotBoundException e) {
			LOG.error("LookupRemote for {} error.", result.getSimpleName(), e);
		}
		return null;
	}
	
}
