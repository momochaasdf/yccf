package com.deying.util.generator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.FileConstants;
import com.deying.util.data.DateUtils;

/**
 * @author wangxj
 * Apr 19, 2013
 * 
 */
public class Generator {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(Generator.class);
	
	/**
	 * @return 生成订单验证码
	 */
	public static String billNO(Date reserveDate, Integer timeInterval, Long tableId){
		Random r = new Random();
		String tabIdStr = tableId.toString();
		if(tabIdStr.length() > 4) {
			tabIdStr = tabIdStr.substring(tabIdStr.length()-4);
		}else {
			int count = 4 - tabIdStr.length();
			for(int i = 0; i < count; i++) 
				tabIdStr += r.nextInt(10); 
		}
		String billNo = r.nextInt(10) + tabIdStr
					+ DateUtils.format(reserveDate, "MMdd") + r.nextInt(10) 
					+ timeInterval + r.nextInt(10);
		/*billNo = billNo.substring(0, 4) + "-" 
				+ billNo.substring(4, 8) + "-" 
				+ billNo.substring(8, 12);*/
		return billNo;
	}
	
	
	/******************** 生成优惠券号 ***************************/
	
	/**
	 * 批量生成优惠券号, 最大批量生成数8万
	 * @param couponId		优惠券ID
	 * @param couponIndex	优惠券索引值	
	 * @return
	 */
	public static String couponNO(Long couponId, Integer curCouponIndex){
		Random r = new Random();
		String couponNO = couponId.toString();
		if(couponNO.length() > 5) {
			couponNO = couponNO.substring(couponNO.length()-5);
		}else {
			int count = 5 - couponNO.length();
			for(int i = 0; i < count; i++) 
				couponNO = "0" + couponNO; 
		}
		String index = (curCouponIndex + 13517) + "";
		if(index.length() < 5) {
			int count = 5 - index.length();
			for(int i = 0; i < count; i++) 
				index = "0" + index; 
		}
		return couponNO + r.nextInt(10) + index + + r.nextInt(10);
	}
	
	/**
	 * 动态生成优惠券号
	 * @param couponId		优惠券批号ID
	 * @param memberId		用户ID
	 * @return
	 */
	public static String dynamicCouponNO(Long couponId, String memberId){
		return dynamicCouponNO(couponId, memberId, null);
	}
	
	/**
	 * 动态生成优惠券号
	 * @param couponId		优惠券批号ID
	 * @param memberId		用户ID
	 * @param index			同时生成多个优惠券号的索引下标
	 * @return
	 */
	public static String dynamicCouponNO(Long couponId, String memberId, Integer index){
		Random r = new Random();
		String cid = couponId.toString();
		if(cid.length() > 5) {
			cid = cid.substring(cid.length()-5);
		}else {
			int count = 5 - cid.length();
			for(int i = 0; i < count; i++) 
				cid = "0" + cid; 
		}
		memberId = memberId.replaceAll("[a-zA-Z]|-", "");
		if(index == null) {
			return cid + r.nextInt(10) + r.nextInt(10) + memberId.substring(0,3) + r.nextInt(10) + r.nextInt(10);
		}else {
			String ind = index.toString();
			if(ind.length() > 4) {
				ind.substring(ind.length()-4);
			}else{
				int count = 4 - ind.length();
				for(int i = 0; i < count; i++) 
					ind += r.nextInt(10); 
			}
			return cid + memberId.substring(0,3) + ind;
		}
		
		
		
	}
	
	
	/******************** 生成订单流水号 ***************************/
	
	private static Long orderCount = 312L;
	private static String date = DateUtils.format(new Date(), "yyMMdd");
	
	private static Connection connection;
//	static {
//		String driverClass = FileConstants.JDBC_DRIVEE_CLASS;
//		String jdbcUrl = FileConstants.JDBC_URL;
//		String user = FileConstants.JDBC_USER_NAME;
//		String password = FileConstants.JDBC_PASSWORD;
//		try {
//			Class.forName(driverClass).newInstance();
//			connection = java.sql.DriverManager.getConnection(jdbcUrl, user, password);
//			init();
//		}catch (Exception e) {
//			LOGGER.error("jdbc inputStream 关闭异常", e);
//		} finally {
//			try {
//				connection.close();
//			} catch (Exception e) {
//				LOGGER.error("jdbc 关闭异常", e);
//			}
//		}
//	}
	
	private static void init()
	{
		orderCount += obtionOrderCountCurDay();
		LOGGER.info("========== orderCount init value is: " + orderCount);
	}
	
	private static long obtionOrderCountCurDay() {
		long orderCount = 0;
		String sql = "select count(1) as orderCount from p_purchase_order where DATE_FORMAT(createTime,'%Y-%m-%d') = '" + DateUtils.format(new Date(), "yyyy-MM-dd") + "'";
		Statement statement = null;
		ResultSet resultSet = null;
		try {
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				orderCount = resultSet.getLong("orderCount");
			}
		} catch (Exception e) {
			LOGGER.error("jdbc obtionOrderCountCurDay", e);
		} finally {
			try {
				if(resultSet != null) {
					resultSet.close();
				}
				if(statement != null) {
					statement.close();
				}
			} catch (Exception e) {
				LOGGER.error("jdbc inputStream 关闭异常", e);
			}
		}
		return orderCount;
	}
	
	/**
	 * @param id 商家ID
	 * @return 订单的流水号（ID）
	 */
	public static synchronized Long getNextOrderId(long shopId) {
		Random r = new Random();
		String idStr = shopId + "";
		if(idStr.length() > 4)
			idStr = idStr.substring(idStr.length()-4);
		else {
			int count = 4 - idStr.length();
			for(int i = 0; i < count; i++)
				idStr = "0" + idStr;
		}
		++orderCount;
		String countStr = orderCount.toString();
		if(countStr.length() < 4) {
			int tmp = 4 - countStr.length();
			for(int i = 0; i < tmp; i++) 
				countStr = "0" + countStr;
		}
		String orderId = date + idStr + countStr + r.nextInt(10) + r.nextInt(10);
		return Long.parseLong(orderId);
	} 
	
	public static synchronized void resetOrderCount() {
		date = DateUtils.format(new Date(), "yyMMdd");
		orderCount = 312L;
	}
	
}
