
package com.deying.core.service;

import java.util.List;

import com.deying.core.pojo.Attendance;
import com.deying.util.core.com.framework.hibernate3.GenericServer;
import com.deying.util.excel.Json;

public interface AttendanceService extends GenericServer<Attendance, String>
{

    Json saveAttendance(List<Attendance> list, String key);
    
}
