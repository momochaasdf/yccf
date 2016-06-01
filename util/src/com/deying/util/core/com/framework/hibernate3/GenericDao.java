package com.deying.util.core.com.framework.hibernate3;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;

import com.deying.util.core.com.framework.common.tools.BasePage;

public interface GenericDao<T extends Serializable, PK extends Serializable> {
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
	/**
	 * 根据Hql分页检索
	 * @param hql HQL
	 * @param firstResult 开始记录数
	 * @param maxResult 每页显示记录数
	 * @param args HQL参数
	 * @return
	 */
	public BasePage<Object> listByHQL4Page(String hql,int firstResult, int maxResult, Object... args);

	public T save(T entity);
	
	public T saveOrUpdate(T entity);
	
	public T update(T entity);
	
	public T merge(T entity);
	
	public void delete(Object entity);
	
	public T deleteById(PK id);
	
	public BasePage<T> listByPage(Criteria criteria, int firstResult, int maxResult);
	//检索系--------------------------------------------------------------------结束
	
	/*
	 * 
	 * 执行Sql语句
	 */
	public int executeSql(String sql, Object... args);
}
