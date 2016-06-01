package com.deying.util.generator.hibernate;

import java.io.Serializable;

import org.hibernate.HibernateException;
import org.hibernate.engine.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

import com.deying.util.codec.Base64UUID;

/**
 * @author wangxj
 * 
 */
public class Base64UUIDGenerator implements IdentifierGenerator {

	@Override
	public Serializable generate(SessionImplementor session, Object object)
			throws HibernateException {
		return Base64UUID.compressUUID();
	}

}
