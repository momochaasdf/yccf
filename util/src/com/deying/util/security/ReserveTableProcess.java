package com.deying.util.security;

import java.util.Date;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.deying.util.bo.ReserveTable;
import com.deying.util.data.DateUtils;

/**
 * @author wangxj
 * 
 */
public class ReserveTableProcess {

	private static final Logger LOGGER = LoggerFactory.getLogger(ReserveTableProcess.class);

	private static ConcurrentMap<String,ConcurrentMap<String, ReserveTable>> tablePool = new ConcurrentHashMap<String,ConcurrentMap<String, ReserveTable>>();
	
	public static ReserveTable[] process(Long shopId, Long[] tableIds,
			Date reserveDate, Integer timeInterval) throws Exception{
		if(shopId == null || tableIds == null || reserveDate == null 
				|| timeInterval == null) {
			LOGGER.error("parameter is null in ReserveTablePool class.", new NullPointerException());
			throw new NullPointerException("parameter is null in ReserveTablePool class.");
		}
		String resDateStr = DateUtils.format(reserveDate,"yyyyMMdd");
		String[] keys = new String[tableIds.length];
		ReserveTable[] rts = new ReserveTable[tableIds.length];
		for(int index = 0; index < tableIds.length; index++) {
			Long tabId = tableIds[index];
			keys[index] = calculateKey(shopId, tabId, timeInterval);
			ConcurrentMap<String, ReserveTable> resMap = tablePool.get(resDateStr);
			if(resMap == null) {
				synchronized(ReserveTableProcess.tablePool){
					resMap = tablePool.get(resDateStr);
					if(resMap == null) {
						resMap = new ConcurrentHashMap<String, ReserveTable>();
						tablePool.put(resDateStr, resMap);
					}
				}
			}
			rts[index] = resMap.get(keys[index]);
			if(rts[index] == null) {
				synchronized(resMap) {
					rts[index] = resMap.get(keys[index]);
					if(rts[index] == null) {
						rts[index] = new ReserveTable(shopId, tabId, reserveDate, timeInterval);
						resMap.put(keys[index], rts[index]);
						LOGGER.info("insert a ReserveTable into tablePool." + rts[index].toString());
					}
				}
			}
			
		}
		return rts;
	}
	
	/**
	 * 删除指定日期 当天的所有的tablePool桌子数据
	 * @param cur	
	 */
	public static void removeTablePool(Date date) {
		String resDateStr = DateUtils.format(date,"yyyyMMdd");
		tablePool.remove(resDateStr);
	}
	
	private static String calculateKey(Long shopId, Long tableId, Integer timeInterval) {
		if(tableId == null || timeInterval == null) {
			LOGGER.error("parameter is null in ReserveTablePool class.", new NullPointerException());
			throw new NullPointerException("parameter is null in ReserveTablePool class.");
		}
		return shopId + "-" + tableId + "-" + timeInterval;
	}
	
}
