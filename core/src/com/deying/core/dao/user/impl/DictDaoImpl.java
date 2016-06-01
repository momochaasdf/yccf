
package com.deying.core.dao.user.impl;

import org.springframework.stereotype.Repository;

import com.deying.core.dao.user.DictDao;
import com.deying.core.pojo.user.ComDict;
import com.deying.util.core.com.framework.hibernate3.GenericDaoImpl;

@Repository
public class DictDaoImpl extends GenericDaoImpl<ComDict, String> implements DictDao {


}

