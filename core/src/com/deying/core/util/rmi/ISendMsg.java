package com.deying.core.util.rmi;

import java.rmi.Remote;
import java.rmi.RemoteException;
import com.deying.util.message.Message;

/**
 * @author wangxj
 * 
 */
public interface ISendMsg extends Remote {

	/**
	 * 调用远程方法发送消息
	 * @return 1 发送成功  return -1 发送失败
	 * @throws RemoteException
	 */
	Integer sendMsg(Message msg) throws RemoteException;
	
}
