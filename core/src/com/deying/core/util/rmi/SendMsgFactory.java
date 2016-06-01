package com.deying.core.util.rmi;

import java.rmi.RemoteException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.message.Message;
import com.deying.util.rmi.LookupRemote;

/**
 * @author wangxj
 * 
 */
public class SendMsgFactory {
	
	private static final Logger LOG = LoggerFactory.getLogger(SendMsgFactory.class);

	private SendMsgFactory (){
		super();
	}
	
	/**
	 * 同步发送消息
	 * @param msg
	 * @return
	 * @throws Exception
	 */
	public static Integer sendMsg(Message msg) throws Exception {
		ISendMsg sendMsg = LookupRemote.lookup(ISendMsg.class);
		if(sendMsg == null)
			sendMsg = LookupRemote.lookup(ISendMsg.class);
		if(sendMsg != null)
			return sendMsg.sendMsg(msg);
		return -1;
	}
	
	/**
	 * 异步发送消息
	 * @param msg
	 * @return
	 * @throws Exception
	 */
	public static void asynSendMsg(final Message msg) throws Exception {
		new Thread(new Runnable(){
			@Override
			public void run(){
				ISendMsg sendMsg = LookupRemote.lookup(ISendMsg.class);
				if(sendMsg == null)
					sendMsg = LookupRemote.lookup(ISendMsg.class);
				if(sendMsg != null)
					try {
						sendMsg.sendMsg(msg);
					} catch (RemoteException e) {
						LOG.error("asynSendMsg error.", e);
					}
			}
		}).start();
	}
	
}
