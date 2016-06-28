package com.deying.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.core.dao.RewardDao;
import com.deying.core.pojo.Reward;
import com.deying.core.service.RewardService;
import com.deying.util.core.com.framework.hibernate3.GenericServiceImpl;

@Transactional
@Service("rewardService")
public class RewardServiceImpl extends GenericServiceImpl<Reward, String> implements RewardService {

	@Autowired
	public void setDao(RewardDao dao) {
		super.setDao(dao);
	}
}
