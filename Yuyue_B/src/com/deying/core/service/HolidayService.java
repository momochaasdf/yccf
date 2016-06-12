
package com.deying.core.service;

import java.util.List;

import com.deying.core.pojo.Holiday;
import com.deying.util.core.com.framework.hibernate3.GenericServer;
import com.deying.util.excel.Json;

public interface HolidayService extends GenericServer<Holiday,String> {


	/**
	 * 保存节假日
	 * @param list
	 * @param userId
	 */
	public Json saveHoliday(List<Holiday> list, String userId);
}
