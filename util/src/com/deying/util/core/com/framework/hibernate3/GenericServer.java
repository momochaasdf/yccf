package com.deying.util.core.com.framework.hibernate3;

import java.io.Serializable;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;

import com.deying.util.core.com.framework.common.tools.BasePage;

public interface GenericServer<T extends Serializable, PK extends Serializable> {
	//检索系--------------------------------------------------------------------开始
	/**
	 * 根据主键获取实体，没有检索到相应实体返回NULL
	 */
	public T get(PK id);
	/**
	 * 根据主键获取实体并加锁，没有检索到相应实体返回NULL
	 */
	public T getWithLock(PK id, LockMode lock);
	/**
	 * 根据主键获取实体，没有检索到相应实体返回NULL
	 */
	public T load(PK id);
	/**
	 * 根据主键获取实体并加锁，没有检索到相应实体返回NULL
	 */
	public T loadWithLock(PK id, LockMode lock);
	/**
	 * 检索全部实体
	 */
	public List<T> listALL();
	/**
	 * 按属性查找对象列表.
	 */
	public List<T> findByProperty(String property, Object value);

	/**
	 * 按属性查找唯一对象.
	 */
	public T findUniqueByProperty(String property, Object value);
	
	public BasePage<T> listByPage(T example, int firstResult, int maxResult);
	
	public BasePage<T> listByPage(T example, int firstResult, int maxResult, MatchMode matchMode, Condition[] conds,String... exclude);
	
	public List<T> listAll(T example, MatchMode matchMode, Condition[] conds, String[] exclude);
	@SuppressWarnings("unchecked")
	public List listByHql(String hql, Object... args);
	@SuppressWarnings("unchecked")
	public List listBySQL(String sqlStr);
	
	public T save(T entity);
	
	public T saveOrUpdate(T entity);
	
	public T update(T entity);
	
	public T merge(T entity);
	
	public void delete(Object entity);
	
	public T deleteById(PK id);
	//检索系--------------------------------------------------------------------结束

}
