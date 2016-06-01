package com.deying.util.rmi;

import java.net.MalformedURLException;
import java.rmi.AlreadyBoundException;
import java.rmi.Naming;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;

/**
 * @author wangxj
 * 
 */
public class RemoteFactory {

	private static final Logger LOG = LoggerFactory.getLogger(RemoteFactory.class);
	
	private static List<Remote> remotes;
	
	private RemoteFactory() {
		
	}
	
	public static void createRemote() {
		if(remotes == null || remotes.size() == 0)
			return;
		try {
			LocateRegistry.createRegistry(1099);
			for(int i = 0; i < remotes.size(); i++) {
				Naming.bind("rmi://" + FileConstants.IP_BACKEND 
						+ ":1099/" + remotes.get(i).getClass().getInterfaces()[0].getSimpleName()
						,remotes.get(i));
			}
		} catch (RemoteException e) {
			LOG.error("RemoteFactory  createRemote error.", e);
		} catch (MalformedURLException e) {
			LOG.error("RemoteFactory  createRemote error.", e);
		} catch (AlreadyBoundException e) {
			LOG.error("RemoteFactory  createRemote error.", e);
		}
	}

	public void setRemotes(List<Remote> remotes) {
		RemoteFactory.remotes = remotes;
	}
	
}
