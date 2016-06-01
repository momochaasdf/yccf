package com.deying.core.dao.element.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.element.MessageDao;
import com.deying.core.pojo.element.Message;
import com.deying.util.annotation.AnnDaoImpl;
import com.deying.util.page.DataPage;

/**
 * @author wangxj
 * 
 */
@Repository("messageDao")
public class MessageDaoImpl extends AnnDaoImpl<Message> implements MessageDao{

	@Override
	public List<Message> listUnreadAlertMsg(long shopId, int industryId, int categoryId) throws Exception {
//		MsgTypeEnum[] types = MsgTypeEnum.getAlertMsgBox();
//		if(types == null || types.length == 0) 
//			return new ArrayList<Message>(0);
//		QueryBuilder qb = new QueryBuilder();
//		qb.append(" from Message ")
//			.append(" where ( ( ")
//			.append(" accepterType = ? ", EntityEnum.SHOP)
//			.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.GLOBAL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//			.append(" and accepterId = ? ", industryId + "")
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//			.append(" and accepterId = ? ", categoryId + "")
//			.append(" ) ) ")
//			.append(" and state = ? ", MsgStateEnum.UNREAD)
//			.in(" and msgType ", types);
//		return find(qb);
		return null;
	}

	@Override
	public long getUnreadAlertMsgCount(long shopId, int industryId, int categoryId) throws Exception {
//		MsgTypeEnum[] types = MsgTypeEnum.getAlertMsgBox();
//		if(types == null || types.length == 0) 
//			return 0;
//		QueryBuilder qb = new QueryBuilder();
//		qb.append(" select count(id) from Message ")
//			.append(" where ( ( ")
//			.append(" accepterType = ? ", EntityEnum.SHOP)
//			.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.GLOBAL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//			.append(" and accepterId = ? ", industryId + "")
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//			.append(" and accepterId = ? ", categoryId + "")
//			.append(" ) ) ")
//			.append(" and state = ? ", MsgStateEnum.UNREAD)
//			.in(" and msgType ", types);
//		return countByQB(qb, true);
		return 0;
	}
	/**
	 * 获得该商铺下的所有未读消息包括系统消息的数量
	 */
	@Override
	public long getUnreadMsg4Count(long shopId, int industryId, int categoryId) throws Exception {
//		QueryBuilder qb = new QueryBuilder();
//		qb.append(" select count(id) from Message ")
//			.append(" where ( ( ")
//			.append(" accepterType = ? ", EntityEnum.SHOP)
//			.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.GLOBAL)
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//			.append(" and accepterId = ? ", industryId + "")
//			.append(" ) or (")
//			.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//			.append(" and accepterId = ? ", categoryId + "")
//			.append(" ) ) ")
//			.append(" and state = ? ", MsgStateEnum.UNREAD);
//			
//		return countByQB(qb,true);
		return 0;
	}
	
	/**
	 * 获得该商铺下的所有未读消息包括系统消息
	 */
	@Override
	public List<Message> listunMessage4shopOrSys(Long shopId,
			Integer industryId, Integer categoryId) throws Exception {
//			QueryBuilder qb = new QueryBuilder();
//			qb.append(" from Message ")
//				.append(" where ( ( ")
//				.append(" accepterType = ? ", EntityEnum.SHOP)
//				.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//				.append(" ) or (")
//				.append(" accepterType = ? ", EntityEnum.GLOBAL)
//				.append(" ) or (")
//				.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//				.append(" and accepterId = ? ", industryId + "")
//				.append(" ) or (")
//				.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//				.append(" and accepterId = ? ", categoryId + "")
//				.append(" ) ) ")
//				.append(" and state = ? ", MsgStateEnum.UNREAD)
//				.append(" order by createTime desc limit 20");
//			return find(qb);
		return null;
	  }
	
	@Override
	public DataPage<Message> findUnMessage4SysInfoModul(Integer msgType, Integer msgState, Date createTime, Date createTime2,Long shopId,
			Integer industryId, Integer categoryId,String sys,Integer pageNo, Integer pageSize) throws Exception {
//		MsgStateEnum[] state = new  MsgStateEnum[]{MsgStateEnum.UNREAD,MsgStateEnum.READED};
//		if(state == null || state.length == 0) 
//			return new DataPage<Message>();
//		QueryBuilder qb = new QueryBuilder();
//		qb.append(" from Message ")
//		.append(" where ( ( ")
//		.append(" accepterType = ? ", EntityEnum.SHOP)
//		.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.GLOBAL)
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//		.append(" and accepterId = ? ", industryId + "")
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//		.append(" and accepterId = ? ", categoryId + "")
//		.append(" ) ) ")
//		.append(" and msgModule = ? ", sys)
//		.in(" and state  ", state);
//		if( msgType != null){
//			qb.append(" and msgType = ? ", PersistentEnums.parse(MsgTypeEnum.class, msgType));
//		}
//		if( msgState != null ){
//			qb.append(" and state = ? ", PersistentEnums.parse(MsgStateEnum.class, msgState));
//		}
//		if( createTime != null ){
//			qb.append(" and createTime >= ? ", createTime);
//			
//		}
//		if( createTime2 != null ){
//			qb.append(" and createTime < ? ", createTime2);
//			
//		}
//		qb.append(" order by state asc,createTime desc ");
//		return paginate(qb, pageNo, pageSize);
		return null;
	}

	@Override
	public DataPage<Message> findUnMessage4Notice(Integer msgType,Integer msgState,
			Date minCreateTime,Date maxCreateTime,Long shopId,
			Integer industryId, Integer categoryId, String shop_msg,
			Integer currentPage, Integer pageSize) throws Exception {
//		if(msgState != null && msgState == -1){
//			msgState = null;
//		}
//		if(msgType != null && msgType == -1){
//			msgType = null;
//		}
//		MsgStateEnum[] state = new  MsgStateEnum[]{MsgStateEnum.UNREAD,MsgStateEnum.READED};
//		if(state == null || state.length == 0) 
//			return new DataPage<Message>();
//		QueryBuilder qb = new QueryBuilder();
//		qb.append(" from Message ")
//		.append(" where ( ( ")
//		.append(" accepterType = ? ", EntityEnum.SHOP)
//		.append(" and ( accepterId = ? or accepterId = ? )", shopId + "", Message.ACCEPTER_ID_ALL)
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.GLOBAL)
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.SHOP_INDUSTRY)
//		.append(" and accepterId = ? ", industryId + "")
//		.append(" ) or (")
//		.append(" accepterType = ? ", EntityEnum.SHOP_CATEGORY)
//		.append(" and accepterId = ? ", categoryId + "")
//		.append(" ) ) ")
//		.append(" and msgModule = ? ", shop_msg)
//		.in(" and state  ", state);
//		
//		if(msgType!=null && msgType!= -1){
//			qb.append(" and msgType= ? ", PersistentEnums.parse(MsgTypeEnum.class, msgType));
//		}
//		if(msgState!=null && msgState!= -1){
//			qb.append(" and state= ? ", PersistentEnums.parse(MsgStateEnum.class, msgState));
//		}
//		if( minCreateTime != null ){
//			qb.append(" and createTime >= ? ", minCreateTime);
//		}
//		if( maxCreateTime != null ){
//			qb.append(" and createTime < ? ", maxCreateTime);
//		}
//		qb.append(" order by createTime desc , state asc ");
//		return paginate(qb, currentPage, pageSize);
		return null;
	}
}
