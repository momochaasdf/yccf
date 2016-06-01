package com.deying.util.mysql;

import java.sql.Types;

import org.hibernate.Hibernate;
import org.hibernate.dialect.MySQL5Dialect;

/**
 * @author wangxj
 * Apr 3, 2013
 * 
 */
public class MysqlCustomDialect extends MySQL5Dialect {
	
	public MysqlCustomDialect() {
		registerHibernateType(Types.DECIMAL, Hibernate.BIG_DECIMAL.getName());
		registerHibernateType(Types.TINYINT, Hibernate.SHORT.getName());
		registerHibernateType(Types.BIGINT, Hibernate.LONG.getName());
		registerHibernateType(Types.TIMESTAMP, Hibernate.TIMESTAMP.getName());
		registerHibernateType(Types.LONGVARCHAR, Hibernate.TEXT.getName());
		registerHibernateType(Types.LONGVARBINARY, Hibernate.BLOB.getName()); 
		registerHibernateType(Types.BOOLEAN, Hibernate.BOOLEAN.getName());
	}
}
