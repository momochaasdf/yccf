package com.deying.core.service.impl;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.AttendanceDao;
import com.deying.core.pojo.Attendance;
import com.deying.core.pojo.Attendance;
import com.deying.core.service.AttendanceService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;
import com.deying.util.excel.Json;

@Transactional
@Service("attendanceService")
public class AttendanceServiceImpl extends GenericServiceImpl<Attendance, String> implements AttendanceService {
	@Autowired
	public void setDao(AttendanceDao dao) {
		super.setDao(dao);
	}

    @Override
    public Json saveAttendance(List<Attendance> list, String key)
    {
        Json json = new Json();
        json.setSuccess(true);
        try{
            StringBuffer msg = new StringBuffer();
            int i = 1;
            for(Attendance entity :list){
                if(null == entity){
                    break;
                }
                i++;
            }
            if (StringUtils.isNotBlank(msg)) {
                json.setSuccess(false);
                json.setMsg(msg.toString());
            } else {
                for(Attendance entity :list){
                    List<Attendance> delEntityList = this.findByProperty("startTime", entity.getStartTime());
                    for (Attendance delEntity : delEntityList) {
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
