package com.deying.core.dao.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.AttendanceDao;
import com.deying.core.pojo.Attendance;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class AttendanceDaoImpl extends GenericDaoImpl<Attendance, String> implements AttendanceDao {

	
}
