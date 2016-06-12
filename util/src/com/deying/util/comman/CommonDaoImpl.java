package com.deying.util.comman;

import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.hql.ast.QueryTranslatorImpl;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;



public class CommonDaoImpl extends HibernateDaoSupport implements CommonDao {
	/* (non-Javadoc)
	 * @see com.comman.CommonDao#get(java.lang.Class, java.io.Serializable)
	 */
	@Override
	public <T> T get(final Class<T> clazz, final Serializable id) {
		return (T) this.session().get(clazz, id);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#delete(java.lang.Object)
	 */
	@Override
	public void delete(final Object entity) {
		this.session().delete(entity);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#delete(java.lang.Class, java.io.Serializable)
	 */
	@Override
	public <T> void delete(final Class<T> clazz, final Serializable id) {
		delete(this.session().load(clazz, id));
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#executeUpdate(java.lang.String)
	 */
	@Override
	public int executeUpdate(final String hql) {
		return this.createQuery(hql).executeUpdate();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#executeUpdate(java.lang.String, java.util.List)
	 */
	@Override
	public int executeUpdate(final String hql, List<? extends Object> params) {
		return this.createQuery(hql, params).executeUpdate();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#executeUpdate(java.lang.String, java.util.List, java.lang.Boolean)
	 */
	@Override
	public int executeUpdate(final String hql, List<? extends Object> params,
			Boolean splitParams) {
		return this.createQuery(hql, params, splitParams).executeUpdate();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#deletes(java.lang.String, java.util.List)
	 */
	@Override
	public int deletes(final String hql, List<Object> ids) {
		return this.executeUpdate(hql, ids, false);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#deletes(java.util.List, java.lang.Integer)
	 */
	@Override
	public <T> void deletes(final List<T> entities, final Integer cacheSize) {
		Session session = this.session();
		for (int i = 0; i < entities.size(); i++) {
			T entity = entities.get(i);
			session.delete(entity);
			int defaultCacheSize = 0;
			if (cacheSize == null || cacheSize == 0) {
				defaultCacheSize = 20;
			} else {
				defaultCacheSize = cacheSize;
			}
			if (i % defaultCacheSize == 0) {
				session.flush();
				session.clear();
			}
		}
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#merge(java.lang.Object)
	 */
	@Override
	public void merge(final Object entity) {
		getSession().merge(entity);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#merges(java.util.List)
	 */
	@Override
	public <T> void merges(final List<T> entities) {

	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#merges(java.util.List, java.lang.Integer)
	 */
	@Override
	public <T> void merges(final List<T> entities, final Integer cacheSize) {
		Session session = this.session();
		for (int i = 0; i < entities.size(); i++) {
			T entity = entities.get(i);
			session.merge(entity);
			int defaultCacheSize = 0;
			if (cacheSize == null || cacheSize == 0) {
				defaultCacheSize = 20;
			} else {
				defaultCacheSize = cacheSize;
			}
			if (i % defaultCacheSize == 0) {
				session.flush();
				session.clear();
			}
		}
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#get(java.lang.String)
	 */
	@Override
	public Object get(final String hql) {
		return this.createQuery(hql).uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#get(java.lang.String, java.lang.Object)
	 */
	@Override
	public Object get(final String hql, final Object param) {
		return this.createQuery(hql).setParameter(0, param).uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#get(java.lang.String, java.util.List)
	 */
	@Override
	public Object get(final String hql, final List<? extends Object> params) {
		return this.createQuery(hql, params).uniqueResult();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.String)
	 */
	@Override
	public <T> List<T> query(final String hql) {
		return this.createQuery(hql).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.String, java.lang.Object)
	 */
	@Override
	public <T> List<T> query(final String hql, final Object param) {
		return this.createQuery(hql).setParameter(0, param).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.String, java.util.List)
	 */
	@Override
	public <T> List<T> query(final String hql,
			final List<? extends Object> params) {
		return this.createQuery(hql, params).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.Class)
	 */
	@Override
	public <T> List<T> query(final Class<T> clazz) {
		return this.createCriteria(clazz).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.Class, org.hibernate.criterion.Criterion)
	 */
	@Override
	public <T> List<T> query(final Class<T> clazz, final Criterion criterion) {
		return this.createCriteria(clazz).add(criterion).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.Class, java.util.List)
	 */
	@Override
	public <T> List<T> query(final Class<T> clazz,
			final List<Criterion> criterions) {
		return this.query(clazz, criterions, null);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#query(java.lang.Class, java.util.List, java.util.List)
	 */
	@Override
	public <T> List<T> query(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders) {
		return this.createCriteria(clazz, criterions, orders).list();
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#queryByPage(java.lang.String, java.util.List, java.lang.Integer, java.lang.Integer, java.lang.Long)
	 */
	@Override
	public <T> Page<T> queryByPage(final String listHql,
			final List<? extends Object> params, final Integer firstResult,
			final Integer maxResults, final Long totalCount) {
		if (listHql == null || listHql.trim().length() == 0) {
			return null;
		}
		Page<T> page = new Page<T>();
		Query listQuery = this.createQuery(listHql, params);
		// 设置开始检索的起始记录
		listQuery.setFirstResult(firstResult);
		// 设置每次检索返回的最大对象数
		listQuery.setMaxResults(maxResults);
		List<T> list = listQuery.list();
		page.setResult(list);

		// 如果总数已经存在，则不查询
		if (totalCount > 0) {
			page.setTotalCount(totalCount);
		} else {
			String countHql = listHql;
			int order_index = countHql.toUpperCase().lastIndexOf("ORDER");
			if (order_index != -1) {
				countHql = countHql.substring(0, order_index);
			}

			// 通过转成SQL来进行查询，解决hql不能在distinct，group by结果集上使用count的问题
			QueryTranslatorImpl queryTranslator = new QueryTranslatorImpl(
					null,
					countHql,
					Collections.EMPTY_MAP,
					(org.hibernate.engine.SessionFactoryImplementor) getSession()
							.getSessionFactory());
			queryTranslator.compile(Collections.EMPTY_MAP, false);
			countHql = new StringBuffer("select count(*) from (")
					.append(queryTranslator.getSQLString())
					.append(") tmp_count_table").toString();

			SQLQuery countQuery = this.createSQLQuery(countHql, params);
			page.setTotalCount(Long.valueOf(countQuery.uniqueResult()
					.toString()));

		}

		return page;
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#queryByPage(java.lang.String, java.util.Map, java.lang.Integer, java.lang.Integer, java.lang.Long)
	 */
	@Override
	public <T> Page<T> queryByPage(final String listHql,
			final Map<String, ? extends Object> namedParames,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount) {
		if (listHql == null || listHql.trim().length() == 0) {
			return null;
		}
		Page<T> page = new Page<T>();
		Query listQuery = this.createQuery(listHql, namedParames);
		// 设置开始检索的起始记录
		listQuery.setFirstResult(firstResult);
		// 设置每次检索返回的最大对象数
		listQuery.setMaxResults(maxResults);
		List<T> list = listQuery.list();
		page.setResult(list);

		// 如果总数已经存在，则不查询
		if (totalCount > 0) {
			page.setTotalCount(totalCount);
		} else {
			String countHql = listHql;
			int order_index = countHql.toUpperCase().lastIndexOf("ORDER");
			if (order_index != -1) {
				countHql = countHql.substring(0, order_index);
			}
			// 通过转成SQL来进行查询，解决hql不能在distinct，group by结果集上使用count的问题
			QueryTranslatorImpl queryTranslator = new QueryTranslatorImpl(
					null,
					countHql,
					Collections.EMPTY_MAP,
					(org.hibernate.engine.SessionFactoryImplementor) getSession()
							.getSessionFactory());
			queryTranslator.compile(Collections.EMPTY_MAP, false);
			countHql = new StringBuffer("select count(*) from (")
					.append(queryTranslator.getSQLString())
					.append(") tmp_count_table").toString();
			SQLQuery countQuery = this.createSQLQuery(countHql, namedParames);
			page.setTotalCount(Long.valueOf(countQuery.uniqueResult()
					.toString()));

		}

		return page;
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#queryByPage(java.lang.Class, java.util.List, java.util.List, java.lang.Integer, java.lang.Integer, java.lang.Long)
	 */
	@Override
	public <T> Page<T> queryByPage(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount) {
		Criteria criteria = this.createCriteria(clazz, criterions, orders);
		return this.queryByPage(criteria, firstResult, maxResults, totalCount);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#queryByPage(org.hibernate.Criteria, java.lang.Integer, java.lang.Integer, java.lang.Long)
	 */
	@Override
	public <T> Page<T> queryByPage(final Criteria criteria,
			final Integer firstResult, final Integer maxResults,
			final Long totalCount) {
		Page<T> page = new Page<T>();
		// 查询记录总数
		if (totalCount > 0) {
			page.setTotalCount(totalCount);
		} else {
			// 缓存总数(点击页码的时候没必要计算总数，只有查询提交的时候才重新查询数据库)
			page.setTotalCount(Long.valueOf((criteria.setProjection(Projections
					.rowCount()).uniqueResult()).toString()));
			// 记得要把它设置为null,否则会报错
			criteria.setProjection(null);
		}
		// 设置分页
		// 分页从那条记录开始
		criteria.setFirstResult(firstResult);
		// 每页多少条记录
		criteria.setMaxResults(maxResults);
		page.setResult(criteria.list());
		return page;
	}

	private Session session() {
		return getSession();
	}

	/******************************创建HQL语句开始******************************/
	private Query createQuery(final String hql) {
		return this.session().createQuery(hql);
	}

	private Query createQuery(final String hql,
			final List<? extends Object> params) {
		return this.createQuery(hql, params, null);
	}
	/**
	 * 参数为List集合
	 * @param hql
	 * @param params
	 * @param splitParams 是否需要分割参数，true或者null是需要分开，fasle不需要
	 * @return
	 */
	private Query createQuery(final String hql,
			final List<? extends Object> params, Boolean splitParams) {
		Query query = this.createQuery(hql);
		if (splitParams == null || splitParams == true) {
			if (params != null && !params.isEmpty()) {
				int size = params.size();
				for (int i = 0; i < size; i++) {
					query.setParameter(i, params.get(i));
				}
			}
		} else {
			if (params != null && !params.isEmpty()) {
				//对于in not in等批量数据
				query.setParameter(0, params);
				//query.setParameterList(0, params);
			}
		}
		return query;

	}
	/**
	 * 参数为命名的Map集合
	 * @param hql
	 * @param namedParames
	 * @return
	 */
	private Query createQuery(final String hql,
			final Map<String, ? extends Object> namedParames) {
		Query query = this.createQuery(hql);
		if (namedParames != null && !namedParames.isEmpty()) {
			Iterator iter = namedParames.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry) iter.next();
				query.setParameter((String) entry.getKey(), entry.getValue());
			}
		}
		return query;
	}
	/******************************创建HQL语句结束******************************/
	
	
	/******************************创建SQL语句开始******************************/
	private SQLQuery createSQLQuery(final String sql) {
		return this.session().createSQLQuery(sql);
	}

	private SQLQuery createSQLQuery(final String sql,
			final List<? extends Object> params) {
		return this.createSQLQuery(sql, params, null);
	}

	private SQLQuery createSQLQuery(final String sql,
			final List<? extends Object> params, Boolean splitParams) {
		SQLQuery sqlQuery = this.createSQLQuery(sql);
		if (splitParams == null || splitParams == false) {
			if (params != null && !params.isEmpty()) {
				int size = params.size();
				for (int i = 0; i < size; i++) {
					sqlQuery.setParameter(i, params.get(i));
				}
			}
		} else {
			if (params != null && !params.isEmpty()) {
				sqlQuery.setParameter(0, params);
			}
		}
		return sqlQuery;
	}

	private SQLQuery createSQLQuery(final String sql,
			final Map<String, ? extends Object> namedParames) {
		SQLQuery sqlQuery = this.createSQLQuery(sql);
		if (namedParames != null && !namedParames.isEmpty()) {
			Iterator iter = namedParames.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry) iter.next();
				sqlQuery.setParameter((String) entry.getKey(), entry.getValue());
			}
		}
		return sqlQuery;
	}
	/******************************创建SQL语句结束******************************/
	/* (non-Javadoc)
	 * @see com.comman.CommonDao#createCriteria(java.lang.Class)
	 */
	@Override
	public <T> Criteria createCriteria(final Class<T> clazz) {
		return this.session().createCriteria(clazz);
	}

	/* (non-Javadoc)
	 * @see com.comman.CommonDao#createCriteria(java.lang.Class, java.util.List, java.util.List)
	 */
	@Override
	public <T> Criteria createCriteria(final Class<T> clazz,
			final List<Criterion> criterions, final List<Order> orders) {
		Criteria criteria = this.createCriteria(clazz);
		// 添加查询条件
		if (criterions != null && !criterions.isEmpty()) {
			for (Criterion c : criterions) {
				criteria.add(c);
			}
		}
		// 添加排序条件
		if (orders != null && !orders.isEmpty()) {
			for (Order order : orders) {
				criteria.addOrder(order);
			}
		}
		return criteria;
	}

}
