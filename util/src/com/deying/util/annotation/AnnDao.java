package com.deying.util.annotation;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import org.hibernate.LockMode;
import com.deying.util.enums.PersistentEnum;



/**
 * 
 * @author wangxj
 */
public interface AnnDao<T> {
	
	void clear();
	
	void flush() throws Exception;
	
	void refresh(T entity) throws Exception;
	
	void evict(T entity) throws Exception;
	
	void update(T entity) throws Exception;
	
	<V extends PersistentEnum<?>> void updateState(Collection<? extends Serializable> ids, V state) throws Exception;
	
	<V extends PersistentEnum<?>> void updateState(Serializable id, V state) throws Exception;
	
	void delete(T entity) throws Exception;
	
	Serializable save(T entity) throws Exception;
	
	T get(Serializable id,LockMode mod) throws Exception;
	
	T get(Serializable id, String... eagerProperties) throws Exception;
	
	List<T> get(Collection<? extends Serializable> ids, String... eagerProperties) throws Exception;

	boolean exists(Serializable id) throws Exception;
	
}
