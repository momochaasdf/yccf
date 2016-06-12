package com.deying.util.hibernate;

import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.annotations.common.util.ReflectHelper;
import org.hibernate.usertype.ParameterizedType;
import org.hibernate.usertype.UserType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deying.util.enums.PersistentEnum;
import com.deying.util.enums.PersistentEnums;

/**
 * @author wangxj
 * Apr 26, 2013
 * 
 */
@SuppressWarnings("unchecked")
public class EnumUserType<T extends Enum<T> & PersistentEnum<Integer>> implements ParameterizedType,UserType{

	private static final Logger LOGGER = LoggerFactory.getLogger(EnumUserType.class);
	
	private Class<T> valClazz;
	
	
	/**
	 *  从二级缓存中取这个对象数据时要调用的方法
	 */
	@Override
	public Object assemble(Serializable cached, Object owner)
			throws HibernateException {
		return cached;
	}

	/**
	 * 这是用于Hibernate缓存生成的快照，由于EnumUserType是不可变的，直接返回就好了
	 */
	@Override
	public Object deepCopy(Object value) throws HibernateException {
		return value;
	}

	/**
	 * hibernate把这个数据放入二级缓存时要调用的方法
	 */
	@Override
	public Serializable disassemble(Object value) throws HibernateException {
		return (Serializable)value;
	}

	@Override
	public boolean equals(Object x, Object y) throws HibernateException {
		if  (x == y) 
			return   true ;
        if  (x == null || y == null) 
            return   false ;
        final PersistentEnum<Integer> xTmp = (PersistentEnum<Integer>)x;
        final PersistentEnum<Integer> yTmp = (PersistentEnum<Integer>)y;
        return  xTmp.getValue().equals(yTmp.getValue());
	}

	@Override
	public int hashCode(Object x) throws HibernateException {
		return  x.hashCode(); 
	}

	/**
	 * 这个类型是不可变的
	 */
	@Override
	public boolean isMutable() {
		return false;
	}

	@Override
	public Object nullSafeGet(ResultSet rs, String[] names, Object owner)
			throws HibernateException, SQLException {
		Integer id = rs.getInt(names[0]);
        if (rs.wasNull()) 
            return null;
        return PersistentEnums.parse(valClazz, id);
	}

	@Override
	public void nullSafeSet(PreparedStatement st, Object value, int index)
			throws HibernateException, SQLException {
		 if(value == null) 
			 st.setNull(index, Hibernate.INTEGER.sqlType());
	     else {
	    	 PersistentEnum<Integer> per  =  (PersistentEnum<Integer>)value;
             st.setInt(index, per.getValue());
	     } 
	}

	/**
	 * 处理脱管对象状态的合并
	 */
	@Override
	public Object replace(Object original, Object target, Object owner)
			throws HibernateException {
		return original;
	}

	/**
	 * 这个UserType用来映射的数据类型
	 */
	@Override
	public Class returnedClass() {
		return valClazz;
	}

	/**
	 * 要使用什么SQL列类型生成DDL
	 */
	@Override
	public int[] sqlTypes() {
		return new int[]{Hibernate.INTEGER.sqlType()};
	}

	@Override
	public void setParameterValues(Properties parameters) {
		try{
			valClazz =  (Class<T>)ReflectHelper.classForName(parameters.getProperty("class"));
        }catch (ClassNotFoundException e){
        	LOGGER.error("Set parameters error in EnumUserType.", e);
        } 
		
	}

}
