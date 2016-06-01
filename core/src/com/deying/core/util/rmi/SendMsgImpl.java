package com.deying.core.util.rmi;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.message.Message;
import com.deying.util.message.SendShopMsg;

/**
 * @author wangxj
 * 
 */
public class SendMsgImpl extends UnicastRemoteObject implements ISendMsg {

	private static final Logger LOG = LoggerFactory.getLogger(SendMsgImpl.class);
	private static final long serialVersionUID = 1L;
	
	private static final Integer SUC = 1;
	private static final Integer FAIL = -1;
	
	public SendMsgImpl() throws RemoteException {
		super();
	}

	@Override
	public Integer sendMsg(Message msg) throws RemoteException {
		try {
			if(msg == null) 
				return FAIL;
			// TODO
			else if(msg.getAccepterType() == "") {
				new SendShopMsg(msg.getAccepterId()).send(msg);
			}
		} catch (RuntimeException e) {
			LOG.error("send Msg error.", e);
			return FAIL;
		}
		return SUC;
	}

}
