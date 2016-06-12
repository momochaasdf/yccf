package com.deying.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.HolidayDao;
import com.deying.core.pojo.Holiday;
import com.deying.core.service.HolidayService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;
import com.deying.util.excel.Json;

@Transactional
@Service("holidayService")
public class HolidayServiceImpl extends GenericServiceImpl<Holiday, String> implements HolidayService {

	@Autowired
	public void setDao(HolidayDao dao) {
		super.setDao(dao);
	}

	/**
	 * 保存节假日
	 * @param list
	 * @param userId
	 */
	public Json saveHoliday(List<Holiday> list, String userId) {
		Json json = new Json();
    	json.setSuccess(true);
		try{
			StringBuffer msg = new StringBuffer();
			int i = 1;
			for(Holiday entity :list){
				if(null == entity){
					break;
				}
				// 节假日名称不为空验证
				if(null == entity.getName()){
					msg.append("第【" + i + "】行" + "第【1】列，" + "节假日名称不能为空,请检查excel!<br>");
				}
				// 节假日开始时间不为空验证
				if(null == entity.getStartTime()){
					msg.append("第【" + i + "】行" + "第【2】列，" + "节假日开始时间不能为空,请检查excel!<br>");
				}
				i++;
			}
			if (StringUtils.isNotBlank(msg)) {
				json.setSuccess(false);
				json.setMsg(msg.toString());
			} else {
				for(Holiday entity :list){
					List<Holiday> delEntityList = this.findByProperty("startTime", entity.getStartTime());
					for (Holiday delEntity : delEntityList) {
						this.delete(delEntity);
					}
					this.save(entity);
				}
			}
			return json;
		}catch(Exception e){
			json.setSuccess(false);
			return json;
		}
	}
}
