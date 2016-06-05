package com.deying.core.dao.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.NoticeDao;
import com.deying.core.pojo.Notice;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class NoticeDaoImpl extends GenericDaoImpl<Notice, String> implements NoticeDao {


}

