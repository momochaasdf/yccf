package com.deying.util.timer;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;

import com.deying.core.pojo.Holiday;
import com.deying.core.pojo.HolidayRemind;
import com.deying.util.annotation.AnnIService;
import com.deying.util.data.DateUtils;
import com.deying.util.datawrapper.CriteriaWrapper;

/**
 * 提醒定时器（1，节假日提醒，），每天 00:20:00 执行
 */
public class RemindTimer implements Timer{
	
	private static final Logger LOG = LoggerFactory.getLogger(RemindTimer.class);

	@Resource
	protected AnnIService commonService;

	@Override
	public void execute() {
		LOG.info("=====定时任务开始=====");
		try {
			// 1，节假日提醒
			holidayRemind();
			
		} catch (Exception e) {
			LOG.error("定时任务失败.", e);
		}
		LOG.info("=====定时任务结束=====");
	}
	
	/**
	 * 节假日提醒
	 * @throws Exception
	 */
	public void holidayRemind() throws Exception {
		
		// 获取接下来一个月要提醒的节假日
		CriteriaWrapper c = CriteriaWrapper.newInstance();
		c.eq("startTime", DateUtils.getNextMonthDay0());
		Holiday holiday= commonService.get(c, Holiday.class);
		
		if (holiday != null) {
			HolidayRemind holidayRemind = new HolidayRemind();
			BeanUtils.copyProperties(holiday, holidayRemind);
			holidayRemind.setStatus("1");
			commonService.save("HolidayRemind", holidayRemind);
		}
		
		// 获取即将过期的节假日
		CriteriaWrapper c1 = CriteriaWrapper.newInstance();
		c1.eq("startTime", DateUtils.getYesterdayDay0());
		HolidayRemind holidayRemind1= commonService.get(c1, HolidayRemind.class);
		if (holidayRemind1 != null) {
			// 废止
			holidayRemind1.setStatus("0");
			commonService.update("HolidayRemind", holidayRemind1);
		}
	}

	public void setCommonService(AnnIService commonService) {
		this.commonService = commonService;
	}

}
