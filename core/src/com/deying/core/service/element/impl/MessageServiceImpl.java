package com.deying.core.service.element.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.deying.core.dao.element.MessageDao;
import com.deying.core.pojo.element.Message;
import com.deying.core.service.element.IMessageService;
import com.deying.core.util.rmi.SendMsgFactory;
import com.deying.util.annotation.AnnServiceImpl;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.page.DataPage;

/**
 * @author wangxj
 * 
 */
@Service("messageService")
public class MessageServiceImpl extends AnnServiceImpl implements IMessageService{

	@Resource
	private MessageDao messageDao;
	
	@Override
	public Long sendMessage(Message message) throws Exception {
//		message.setState(String.UNREAD);
//		message.setMsgModule(String.SYSTEM_INFORM);
		Long id = (Long)this.save("Message", message);
		com.deying.util.message.Message msg 
				= new com.deying.util.message.Message();
		msg.setId(id);
//		msg.setTitle(message.getMsgType().getDisplayName());
		msg.setDetailUrl(message.getDetailUrl());
		msg.setContent(message.getContent());
//		msg.setAccepterType(message.getAccepterType());
		msg.setAccepterId(message.getAccepterId());
		msg.setAccepter(message.getAccepter());
//		msg.setAddressorType(message.getAddressorType());
		msg.setAddressorId(message.getAddressorId());
		msg.setAddressor(message.getAddressor());
		SendMsgFactory.sendMsg(msg);
		return id;
	}

	@Override
	public Long asynSendMessage(Message message) throws Exception {
//		message.setState(String.UNREAD);
//		message.setMsgModule(String.SYSTEM_INFORM);
		Long id = (Long)this.save("Message", message);
		com.deying.util.message.Message msg 
				= new com.deying.util.message.Message();
		msg.setId(id);
//		msg.setTitle(message.getMsgType().getDisplayName());
		msg.setDetailUrl(message.getDetailUrl());
		msg.setContent(message.getContent());
//		msg.setAccepterType(message.getAccepterType());
		msg.setAccepterId(message.getAccepterId());
		msg.setAccepter(message.getAccepter());
//		msg.setAddressorType(message.getAddressorType());
		msg.setAddressorId(message.getAddressorId());
		msg.setAddressor(message.getAddressor());
		SendMsgFactory.asynSendMsg(msg);
		return id;
	}

	@Override
	public List<Message> listUnreadAlertMsg(long shopId, int industryId, int categoryId) throws Exception {
		return messageDao.listUnreadAlertMsg(shopId, industryId, categoryId);
	}

	@Override
	public long getUnreadAlertMsgCount(long shopId) throws Exception {
		// TODO
//		Shop shop = this.get(CriteriaWrapper.newInstance()
//				.column("industryId", "industryId")
//				.column("categoryId", "categoryId")
//				.eq("id", shopId)
//				, Shop.class, Shop.class);
//		return messageDao.getUnreadAlertMsgCount(shopId
//				, shop.getIndustryId(), shop.getCategoryId());
		return 5;
	}
	@Override
	public List<Message> listunMessage4shopOrSys(Long shopId,
			Integer industryId, Integer categoryId) throws Exception {
		return messageDao.listunMessage4shopOrSys(shopId,industryId,categoryId);
	}

	@Override
	public long getUnreadMsg4Count(long shopId, int industryId, int categoryId)
			throws Exception {
		return messageDao.getUnreadMsg4Count(shopId, industryId, categoryId);
	}
	@Override
	public DataPage<Message> findUnMessage4SysInfoModul(Integer msgType, Integer msgState, Date createTime, Date createTime2,Long shopId,
			Integer industryId, Integer categoryId,String sys,Integer pageNo, Integer pageSize) throws Exception {
		return messageDao.findUnMessage4SysInfoModul(msgType,msgState,createTime,createTime2,shopId,industryId,categoryId,sys,pageNo,pageSize);
	}
	@Override
	public DataPage<Message> findUnMessage4Notice(Integer msgType,Integer msgState,Date minCreateTime,Date maxCreateTime, Long shopId,
			Integer industryId, Integer categoryId, String shop_msg,
			Integer currentPage, Integer pageSize) throws Exception {
		return messageDao.findUnMessage4Notice(msgType,msgState,minCreateTime,maxCreateTime,shopId,industryId,categoryId,shop_msg,currentPage,pageSize);
	}
	
	@Override
	public List<Message> listShopMessage(long shopId, String state, 
			String msgModule, String msgType, 
			Integer pageNo , Integer pageSize) throws Exception {
		DataPage<Message> data = this.find(CriteriaWrapper.newInstance()
				.column("id", "id")
				.column("state", "state")
				.column("title", "title")
				.column("content", "content")
				.column("entityId", "entityId")
				.column("msgModule", "msgModule")
				.column("msgType", "msgType")
				.column("addressorType", "addressorType")
				.column("addressorId", "addressorId")
				.column("addressor", "addressor")
				.column("realAddressorId", "realAddressorId")
				.column("realAddressor", "realAddressor")
				.column("createTime", "createTime")
//				.eq("accepterType", String.SHOP)
				.eq("accepterId", String.valueOf(shopId))
//				.in(CriteriaWrapper.ROOT_ALIAS + ".state", new String[]{String.READED, String.UNREAD})
				.eq(CriteriaWrapper.ROOT_ALIAS + ".msgModule", msgModule)
				.eq(CriteriaWrapper.ROOT_ALIAS + ".msgType", msgType)
				.eq(CriteriaWrapper.ROOT_ALIAS + ".state", state)
				.desc("createTime")
				, Message.class, Message.class, pageNo, pageSize);
		 return data.getData();
	}

	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
}
