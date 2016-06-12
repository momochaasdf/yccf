package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.NoticeDao;
import com.deying.core.pojo.Notice;
import com.deying.core.service.NoticeService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("noticeService")
public class NoticeServiceImpl extends GenericServiceImpl<Notice, String> implements NoticeService {

	@Autowired
	public void setDao(NoticeDao dao) {
		super.setDao(dao);
	}
}
