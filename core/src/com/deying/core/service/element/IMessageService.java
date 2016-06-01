package com.deying.core.service.element;

import java.util.Date;
import java.util.List;

import com.deying.core.pojo.element.Message;
import com.deying.util.annotation.AnnIService;
import com.deying.util.page.DataPage;

/**
 * @author wangxj
 * 
 */
public interface IMessageService extends AnnIService {

	/**
	 * 发送消息
	 * 需要填写属性 content、accepterType、accepterId、accepter、
	 * addressorType、addressorId、addressor、detailURl
	 * @return
	 * @throws Exception
	 */
	Long sendMessage(Message message) throws Exception;
	
	/**
	 * 异步发送消息
	 * 需要填写属性 content、accepterType、accepterId、accepter、
	 * addressorType、addressorId、addressor、detailURl
	 * @return
	 * @throws Exception
	 */
	Long asynSendMessage(Message message) throws Exception;
	
	/**
	 * 返回指定的店铺未读的弹出框信息
	 * @param shopId
	 * @param industryId	行业ID	
	 * @param categoryId	一级分类ID
	 * @return
	 * @throws Exception
	 */
	List<Message> listUnreadAlertMsg(long shopId, int industryId, int categoryId) throws Exception;
	
	/**
	 * 返回指定的店铺未读的弹出框信息数量
	 * @param shopId
	 * @return
	 * @throws Exception
	 */
	long getUnreadAlertMsgCount(long shopId) throws Exception;
	/**
	 * 返回指定的店铺未读的消息和系统消息
	 * @param shopId industryId categoryId
	 * @return
	 * @throws Exception
	 */
	List<Message> listunMessage4shopOrSys(Long shopId, Integer industryId,
			Integer categoryId)throws Exception;
	
	long getUnreadMsg4Count(long shopId, int industryId, int categoryId) throws Exception;
	
	/**
	 * 消息精灵 --- 系统公告分页查询 
	 * @param createTime2 
	 * @param createTime 
	 * @param msgState 
	 * @param msgType 
	 * @param shopId
	 * @param industryId
	 * @param categoryId
	 * @return DataPage<Message>
	 * @throws Exception
	 */
	DataPage<Message> findUnMessage4SysInfoModul(Integer msgType, Integer msgState, Date createTime, Date createTime2, Long shopId, Integer industryId,
			Integer categoryId,String sys,Integer pageNo, Integer pageSize)throws Exception;
	/***
	 * 消息精灵 --- 快点订公告分页查询
	 * @param shopId
	 * @param industryId
	 * @param categoryId
	 * @param shop_msg
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	DataPage<Message>  findUnMessage4Notice(Integer msgType,Integer msgState,Date minCreateTime,Date maxCreateTime,Long shopId, Integer industryId,
			Integer categoryId, String shop_msg, Integer currentPage,
			Integer pageSize) throws Exception;
	
	/**
	 * 列出指定商铺的消息(过滤掉删除状态)
	 * @param shopId
	 * @return
	 * @throws Exception
	 */
	List<Message> listShopMessage(long shopId, String state, 
			String msgModule, String msgType, 
			Integer pageNo , Integer pageSize) throws Exception;
	
}
