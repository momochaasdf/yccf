package com.deying.util.comman;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;

public interface CommonDao {

	/**
	 * 根据id获得对象
	 * 
	 * @param <T>
	 * @param clazz
	 * @param id
	 * @return
	 */
	public <T> T get(final Class<T> clazz, final Serializable id);

	/**
	 * 删除对象
	 * 
	 * @param entity
	 */
	public void delete(final Object entity);

	/**
	 * 根据ID删除对象,load提高性能
	 * 
	 * @param <T>
	 * @param clazz
	 * @param id
	 */
	public <T> void delete(final Class<T> clazz, final Serializable id);

	/**
	 * hql更新
	 * 
	 * @param hql
	 * @return
	 */
	public int executeUpdate(final String hql);

	/**
	 * 有条件参数的hql更新
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public int executeUpdate(final String hql, List<? extends Object> params);

	/**
	 * 有条件参数的hql更新
	 * 
	 * @param hql
	 * @param params
	 * @param splitParams参数是否拆分
	 *            ，传入null或ture表示拆分参数，false参数不拆分，适合只有一个参数的情况
	 * @return
	 */
	public int executeUpdate(final String hql, List<? extends Object> params,
			Boolean splitParams);

	/**
	 * hql批量删除实体
	 * 
	 * @param hql
	 * @param ids
	 * @return
	 */
	public int deletes(final String hql, List<Object> ids);

	/**
	 * 批量删除实体，不推荐
	 * 
	 * @param <T>
	 * @param entities
	 * @param cacheSize
	 */
	public <T> void deletes(final List<T> entities, final Integer cacheSize);

	/**
	 * 保存的实体对象
	 * 
	 * @param entity
	 */
	public void merge(final Object entity);

	/**
	 * 批量保存实体,缓存大小默认是20
	 * 
	 * @param <T>
	 * @param entities
	 */
	public <T> void merges(final List<T> entities);

	/**
	 * 批量保存实体
	 * 
	 * @param <T>
	 * @param entities
	 * @param cacheSize缓存大小
	 *            ，如果传入null或小于0，默认是20
	 */
	public <T> void merges(final List<T> entities, final Integer cacheSize);

	/**
	 * 没有条件参数的HQL查询单个对象
	 * 
	 * @param hql
	 * @return
	 */
	public Object get(final String hql);

	/**
	 * 单一条件参数的HQL查询单个对象
	 * 
	 * @param hql
	 * @param param
	 * @return
	 */
	public Object get(final String hql, final Object param);

	/**
	 * 支持条件参数的HQL查询单个对象
	 * 
	 * @param hql
	 * @param params
	 * @return
	 */
	public Object get(final String hql, final List<? extends Object> params);

	/**
	 * 没有条件参数的HQL查询
	 * 
	 * @param <T>
	 * @param hql
	 * @return
	 */
	public <T> List<T> query(final String hql);

	/**
	 * 单一条件参数的HQL查询
	 * 
	 * @param <T>
	 * @param hql
	 * @param param
	 * @return
	 */
	public <T> List<T> query(final String hql, final Object param);

	/**
	 * 支持条件参数的HQL查询
	 * 
	 * @param <T>
	 * @param listHql
	 * @return
	 */
	public <T> List<T> query(final String hql,
			final List<? extends Object> params);

	/**
	 * 没有条件和排序参数的对象化查询
	 * 
	 * @param <T>
	 * @param clazz
	 * @return
	 */
	public <T> List<T> query(final Class<T> clazz);

	/**
	 * 单一条件的对象化查询
	 * 
	 * @param <T>
	 * @param clazz
	 * @param criterion
	 * @return
	 */
	public <T> List<T> query(final Class<T> clazz, final Criterion criterion);

	/**
	 * 支持条件没有排序的对象化查询
	 * 
	 * @param <T>
	 * @param clazz
	 * @param criterions
	 * @return
	 */
	public <T> List<T> query(final Class<T> clazz,
			final List<Criterion> criterions);

	/**
	 * 支持条件和排序参数的对象化查询
	 * 
	 * @param <T>
	 * @param clazz
	 * @return
	 */
	public <T> List<T> query(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders);

	/**
	 * Hibernate HQL查询分页,参数按索引号传递
	 * 
	 * @param <T>
	 * @param listHql
	 * @param params
	 * @param firstResult
	 * @param maxResults
	 * @param itemsTotal
	 * @return
	 */
	public <T> Page<T> queryByPage(final String listHql,
			final List<? extends Object> params, final Integer firstResult,
			final Integer maxResults, final Long totalCount);

	/**
	 * Hibernate HQL查询分页,参数按索key传递
	 * 
	 * @param <T>
	 * @param listHql
	 * @param params
	 * @param firstResult
	 * @param maxResults
	 * @param itemsTotal
	 * @return
	 */
	public <T> Page<T> queryByPage(final String listHql,
			final Map<String, ? extends Object> namedParames,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount);

	/**
	 * Hibernate面向对象的方法查询分页
	 * 
	 * @param <T>
	 * @param clazz
	 * @param criterions
	 * @param orders
	 * @param firstResult
	 * @param maxResults
	 * @param itemsTotal
	 * @return
	 */
	public <T> Page<T> queryByPage(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount);

	/**
	 * Hibernate面向对象的方法查询分页
	 * 
	 * @param <T>
	 * @param criteria
	 * @param firstResult
	 * @param maxResults
	 * @param totalCount
	 * @return
	 */
	public <T> Page<T> queryByPage(final Criteria criteria,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount);

	/**
	 * 获取Criteria
	 * 
	 * @param <T>
	 * @param clazz
	 * @return
	 */
	public <T> Criteria createCriteria(final Class<T> clazz);

	/**
	 * 获取Criteria
	 * 
	 * @param <T>
	 * @param clazz
	 * @param criterions
	 * @param orders
	 * @return
	 */
	public <T> Criteria createCriteria(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders);

}