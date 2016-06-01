package com.deying.core.dao.element;

import java.util.Date;
import java.util.List;

import com.deying.core.pojo.element.Message;
import com.deying.util.annotation.AnnDao;
import com.deying.util.page.DataPage;

/**
 * @author wangxj
 * 
 */
public interface MessageDao extends AnnDao<Message>{

	List<Message> listUnreadAlertMsg(long shopId, int industryId, int categoryId) throws Exception;
	
	long getUnreadAlertMsgCount(long shopId, int industryId, int categoryId) throws Exception;

	List<Message> listunMessage4shopOrSys(Long shopId, Integer industryId,Integer categoryId)throws Exception;
	
	long getUnreadMsg4Count(long shopId, int industryId, int categoryId) throws Exception;
	/***
	 * 消息精灵 --- 系统公告分页查询
	 * @param shopId
	 * @param industryId
	 * @param categoryId
	 * @param sys
	 * @param pageNo
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	DataPage<Message> findUnMessage4SysInfoModul(Integer msgType, Integer msgState, Date createTime, Date createTime2,Long shopId,
			Integer industryId, Integer categoryId,String sys,Integer pageNo, Integer pageSize)throws Exception;
	/***
	 * 消息精灵 --- 快点订公告
	 * @param shopId
	 * @param industryId
	 * @param categoryId
	 * @param shop_msg
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	DataPage<Message> findUnMessage4Notice(Integer msgType,Integer msgState,Date minCreateTime,Date maxCreateTime,Long shopId, Integer industryId,
			Integer categoryId, String shop_msg, Integer currentPage,
			Integer pageSize)throws Exception;
}
