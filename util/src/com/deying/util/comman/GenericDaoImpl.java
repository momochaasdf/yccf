package com.deying.util.comman;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.hql.ast.QueryTranslatorImpl;
import org.hibernate.transform.ResultTransformer;
import org.hibernate.transform.Transformers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.deying.util.page.DataPage;

@SuppressWarnings( { "unchecked" })
public class GenericDaoImpl<T, PK extends Serializable> extends
		HibernateDaoSupport implements GenericDao<T, PK> {

	private static final Logger LOGGER = LoggerFactory.getLogger(GenericDaoImpl.class);
	
	// 具体的实体类型
	private Class<T> type;

	protected final Class<T> actualType;
	
	// Spring提供的Hibernate工具类

	// 查询条件
	private String hql;

	/**
	 * <p>
	 * 必须提供的构造方法,以便创建实例的时候就知道具体实体的类型
	 * <p>
	 * 
	 * @param type :
	 *            实体类型
	 */
	public GenericDaoImpl() {
		this.actualType = detectActualType();
		this.type = detectActualType();
		this.hql = "from " + type.getName();
	}

	private Class<T> detectActualType() {
		//
		Class<?> clazz = getClass();
		while (clazz.getSuperclass() != GenericDaoImpl.class) {
			clazz = clazz.getSuperclass();
		}
		//
		Type type = clazz.getGenericSuperclass();
		return (Class<T>) ((ParameterizedType) type).getActualTypeArguments()[0];
	}

	public void setHql(String hql) {
		this.hql = hql;
	}

	public String getHql() {
		return hql;
	}

	public List<T> findAll() {
		String hql = "from " + type.getName();
		return (List<T>) super.getHibernateTemplate().find(hql);
	}

	public T findById(PK id) {
		return (T) super.getHibernateTemplate().get(type, id);
	}

	public void modify(T entity) {
		super.getHibernateTemplate().update(entity);
	}

	public void remove(T entity) {
		super.getHibernateTemplate().delete(entity);
	}

	public void removeAll(Collection<T> entities) {
		super.getHibernateTemplate().deleteAll(entities);
	}

	public PK save(T entity) {
		return (PK) super.getHibernateTemplate().save(entity);
	}

	public int getTotalRows() {
		String actualHql = "select count(*) "
				+ hql.substring(hql.indexOf("from"));
		return ((Long) super.getHibernateTemplate().find(actualHql).get(0))
				.intValue();
	}

	public int getPageSize(int size) {
		// 最大页数
		int pageSize;
		// 实际每页数据条数
		int actualSize;
		// 总记录数
		int totalRows = this.getTotalRows();
		// 计算实际每页的条数,如果请求的每页数据条数大于总条数, 则等于总条数
		actualSize = (size > totalRows) ? totalRows : size;
		if (totalRows > 0) {
			pageSize = (totalRows % size == 0) ? (totalRows / actualSize)
					: (totalRows / actualSize + 1);
		} else {
			pageSize = 0;
		}
		return pageSize;
	}

	public Page<T> findByPage(final int page, final int size) {
		Page<T> paged = new Page<T>();
		final int pageSize = this.getPageSize(size);
		final int totalRows = this.getTotalRows();
		paged.setTotalCount((long) totalRows);
		paged.setPageSize(pageSize);
		List<T> list = super.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public List<T> doInHibernate(Session session)
							throws HibernateException, SQLException {
						// 实际页码
						int actualPage = (page > pageSize) ? pageSize : page;
						// 计算实际每页的条数,如果请求的每页数据条数大于总条数, 则等于总条数
						int actualSize = (size > totalRows) ? totalRows : size;
						// 计算请求页码的第一条记录的索引值,如果
						int startRow = (actualPage > 0) ? (actualPage - 1)
								* actualSize : 0;
						Query query = session.createQuery(hql);
						// 设置第一条记录
						query.setFirstResult(startRow);
						query.setMaxResults(actualSize);
						return (List<T>) query.list();
					}
				});
		paged.setResult(list);
		return paged;
	}

	@Override
	public Page<T> findByPage(String hql, final int page, final int size) {
		this.setHql(hql);
		return findByPage(page, size);
	}

	@Override
	public List<T> findByNamedQuery(String queryName,
			Map<String, Object> queryParams) {
		String[] params = new String[queryParams.size()];
		Object[] values = new Object[queryParams.size()];
		int index = 0;
		Iterator<String> i = queryParams.keySet().iterator();
		while (i.hasNext()) {
			String key = i.next();
			params[index] = key;
			values[index++] = queryParams.get(key);
		}
		// this.hibernateTemplate.u
		return (List<T>) getHibernateTemplate().findByNamedQueryAndNamedParam(
				queryName, params, values);
		// getHibernateTemplate().u

	}

	@Override
	public boolean exists(PK id) {
		T entity = (T) super.getHibernateTemplate().get(type, id);
		return entity != null;
	}

	@Override
	public List<T> getAllDistinct() {
		Collection<T> result = new LinkedHashSet<T>(findAll());
		return new ArrayList<T>(result);

	}

	@Override
	public void updateByNamedParametors(String hql,
			Map<String, Object> queryParams) {
		// this.hibernateTemplate.
		// String[] params = new String[queryParams.size()];
		// Object[] values = new Object[queryParams.size()];
		Iterator<String> i = queryParams.keySet().iterator();
		Query query = getCurrentSession().createQuery(hql);
		while (i.hasNext()) {
			String key = i.next();
			Object value = queryParams.get(key);
			query.setParameter(key, value);
		}
		query.executeUpdate();
	}

	// -------------------- 基本检索、增加、修改、删除操作 --------------------

	// 根据主键获取实体。如果没有相应的实体，返回 null。

	// 根据主键获取实体并加锁。如果没有相应的实体，返回 null。
	public T getWithLock(PK id, LockMode lock) {
		T t = (T) getHibernateTemplate().get(type, id, lock);
		if (t != null) {
			this.flush(); // 立即刷新，否则锁不会生效。
		}
		return t;
	}

	// 根据主键获取实体。如果没有相应的实体，抛出异常。
	public T load(PK id) {
		return (T) getHibernateTemplate().load(type, id);
	}

	// 根据主键获取实体并加锁。如果没有相应的实体，抛出异常。
	public T loadWithLock(PK id, LockMode lock) {
		T t = (T) getHibernateTemplate().load(type, id, lock);
		if (t != null) {
			this.flush(); // 立即刷新，否则锁不会生效。
		}
		return t;
	}

	// 获取全部实体。
	public List<T> loadAll() {
		return (List<T>) getHibernateTemplate().loadAll(type);
	}

	// loadAllWithLock() ?

	// 更新实体
	public void update(T entity) {
		//System.out.println(getCurrentSession().hashCode() + "=====" + getCurrentSession().getTransaction().hashCode());
		getHibernateTemplate().update(entity);
	}

	// 更新实体并加锁
	public void updateWithLock(T entity, LockMode lock) {
		getHibernateTemplate().update(entity, lock);
		this.flush(); // 立即刷新，否则锁不会生效。
	}

	// saveWithLock()？

	// 增加或更新实体
	public void saveOrUpdate(T entity) {
		getHibernateTemplate().saveOrUpdate(entity);
	}

	// 增加或更新集合中的全部实体
	public void saveOrUpdateAll(Collection<T> entities) {
		getHibernateTemplate().saveOrUpdateAll(entities);
	}

	// 删除指定的实体
	public void delete(T entity) {
		//System.out.println(getCurrentSession().hashCode() + "=====" + getCurrentSession().getTransaction().hashCode());
		getHibernateTemplate().delete(entity);
	}

	// 加锁并删除指定的实体
	public void deleteWithLock(T entity, LockMode lock) {
		getHibernateTemplate().delete(entity, lock);
		this.flush(); // 立即刷新，否则锁不会生效。
	}

	// 根据主键删除指定实体
	public void deleteByKey(PK id) {
		this.delete(this.load(id));
	}

	// 根据主键加锁并删除指定的实体
	public void deleteByKeyWithLock(PK id, LockMode lock) {
		this.deleteWithLock(this.load(id), lock);
	}

	// 删除集合中的全部实体
	public void deleteAll(Collection<T> entities) {
		getHibernateTemplate().deleteAll(entities);
	}
	

	// -------------------- HSQL ----------------------------------------------

	// 使用HSQL语句直接增加、更新、删除实体
	public int bulkUpdate(String queryString) {
		return getHibernateTemplate().bulkUpdate(queryString);
	}

	// 使用带参数的HSQL语句增加、更新、删除实体
	public int bulkUpdate(String queryString, Object[] values) {
		return getHibernateTemplate().bulkUpdate(queryString, values);
	}

	// 使用HSQL语句检索数据
	public List find(String queryString) {
		return getHibernateTemplate().find(queryString);
	}

	// 使用带参数的HSQL语句检索数据

	public List find(String queryString, Object[] values) {
		return getHibernateTemplate().find(queryString, values);
	}

	// 使用命名的HSQL语句检索数据
	public List findByNamedQuery(String queryName) {
		return getHibernateTemplate().findByNamedQuery(queryName);
	}

	// 使用带参数的命名HSQL语句检索数据
	public List findByNamedQuery(String queryName, Object[] values) {
		return getHibernateTemplate().findByNamedQuery(queryName, values);
	}

	// 使用带命名参数的命名HSQL语句检索数据
	public List findByNamedQueryAndNamedParam(String queryName,
			String[] paramNames, Object[] values) {
		return getHibernateTemplate().findByNamedQueryAndNamedParam(queryName,
				paramNames, values);
	}

	// 使用HSQL语句检索数据，返回 Iterator
	public Iterator iterate(String queryString) {
		return getHibernateTemplate().iterate(queryString);
	}

	// 使用带参数HSQL语句检索数据，返回 Iterator
	public Iterator iterate(String queryString, Object[] values) {
		return getHibernateTemplate().iterate(queryString, values);
	}

	// 关闭检索返回的 Iterator
	public void closeIterator(Iterator<T> it) {
		getHibernateTemplate().closeIterator(it);
	}

	// -------------------------------- Criteria ------------------------------

	// 创建与会话无关的检索标准
	public DetachedCriteria createDetachedCriteria() {
		return DetachedCriteria.forClass(this.type);
	}

	// 创建与会话绑定的检索标准
	public Criteria createCriteria() {
		return this.createDetachedCriteria().getExecutableCriteria(
				getCurrentSession());
	}

	// 检索满足标准的数据
	public List findByCriteria(DetachedCriteria criteria) {
		return getHibernateTemplate().findByCriteria(criteria);
	}

	// 检索满足标准的数据，返回指定范围的记录
	public List findByCriteria(DetachedCriteria criteria, int firstResult,
			int maxResults) {
		return getHibernateTemplate().findByCriteria(criteria, firstResult,
				maxResults);
	}

	// 使用指定的实体及属性检索（满足除主键外属性＝实体值）数据，propertyNames要排除的属性
	public List<T> findEqualByEntity(T entity, String[] propertyNames) {
		Criteria criteria = this.createCriteria();
		Example exam = Example.create(entity);
		exam.excludeZeroes();//排除为0的
		String[] defPropertys = getSessionFactory().getClassMetadata(type)
				.getPropertyNames();
		for (String defProperty : defPropertys) {
			int ii = 0;
			for (ii = 0; ii < propertyNames.length; ++ii) {
				if (defProperty.equals(propertyNames[ii])) {
					criteria.addOrder(Order.asc(defProperty));
					break;
				}
			}
			if (ii == propertyNames.length) {
				exam.excludeProperty(defProperty);//
			}
		}
		criteria.add(exam);
		return (List<T>) criteria.list();
	}

	// 使用指定的实体及属性检索（满足属性 like 串实体值）数据
	public List<T> findLikeByEntity(T entity, String[] propertyNames) {
		Criteria criteria = this.createCriteria();
		for (String property : propertyNames) {
			try {
				Object value = PropertyUtils.getProperty(entity, property);
				if (value instanceof String) {
					criteria.add(Restrictions.like(property, (String) value,
							MatchMode.ANYWHERE));
					criteria.addOrder(Order.asc(property));
				} else {
					criteria.add(Restrictions.eq(property, value));
					criteria.addOrder(Order.asc(property));
				}
			} catch (Exception ex) {
				// 忽略无效的检索参考数据。
			}
		}
		return (List<T>) criteria.list();
	}

	// 使用指定的检索标准获取满足标准的记录数
	public Integer getRowCount(DetachedCriteria criteria) {
		criteria.setProjection(Projections.rowCount());
		List list = this.findByCriteria(criteria, 0, 1);
		return (Integer) list.get(0);
	}

	// 使用指定的检索标准检索数据，返回指定统计值(max,min,avg,sum)
	public Object getStatValue(DetachedCriteria criteria, String propertyName,
			String StatName) {
		if (StatName.toLowerCase().equals("max"))
			criteria.setProjection(Projections.max(propertyName));
		else if (StatName.toLowerCase().equals("min"))
			criteria.setProjection(Projections.min(propertyName));
		else if (StatName.toLowerCase().equals("avg"))
			criteria.setProjection(Projections.avg(propertyName));
		else if (StatName.toLowerCase().equals("sum"))
			criteria.setProjection(Projections.sum(propertyName));
		else
			return null;
		List list = this.findByCriteria(criteria, 0, 1);
		return list.get(0);
	}

	// -------------------------------- Others --------------------------------

	// 加锁指定的实体
	public void lock(T entity, LockMode lock) {
		getHibernateTemplate().lock(entity, lock);
	}

	// 强制初始化指定的实体
	public void initialize(Object proxy) {
		getHibernateTemplate().initialize(proxy);
	}

	// 强制立即更新缓冲数据到数据库（否则仅在事务提交时才更新）
	public void flush() {
		getHibernateTemplate().flush();
	}

	/** ******************第三模块实现类开始**************************** */
	@Override
	public int deletes(String hql, List<PK> ids) {
		return this.Update(hql, ids, false);
	}

	
	@Override
	public void deletes(List<T> entities, Integer cacheSize) {
		Session session = getCurrentSession();
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

	@Override
	public int Update(String hql) {
		return this.createQuery(hql).executeUpdate();
	}

	@Override
	public int Update(String hql, List<? extends Object> params) {
		return this.createQuery(hql, params).executeUpdate();
	}

	@Override
	public int Update(String hql, List<? extends Object> params,
			Boolean splitParams) {
		return this.createQuery(hql, params, splitParams).executeUpdate();
	}

	@Override
	public void merge(Object entity) {
		getCurrentSession().merge(entity);

	}

	@Override
	public void merges(List<T> entities) {
		this.merges(entities, null);
	}

	@Override
	public void merges(List<T> entities, Integer cacheSize) {
		Session session = getCurrentSession();
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

	@Override
	public Page<T> findByPage(String listHql, List<? extends Object> params,
			Integer firstResult, Integer maxResults, Long totalCount) {
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
					(org.hibernate.engine.SessionFactoryImplementor) getSessionFactory());
			queryTranslator.compile(Collections.EMPTY_MAP, false);
			countHql = new StringBuffer("select count(*) from (").append(
					queryTranslator.getSQLString()).append(") tmp_count_table")
					.toString();

			SQLQuery countQuery = this.createSQLQuery(countHql, params);
			page.setTotalCount(Long.valueOf(countQuery.uniqueResult()
					.toString()));

		}

		return page;
	}

	@Override
	public Page<T> findByPage(String listHql,
			Map<String, ? extends Object> namedParames, Integer pageNumber,
			Integer pageSize, Long totalCount) {
		Page<T> page = new Page<T>();

		if (listHql == null || listHql.trim().length() == 0) {
			return null;
		}
		Query listQuery = this.createQuery(listHql, namedParames);
		// 设置开始检索的起始记录
		int firstResult = (pageNumber - 1) * pageSize;
		listQuery.setFirstResult(firstResult);
		// 设置每次检索返回的最大对象数
		listQuery.setMaxResults(pageSize);
		List list = listQuery.list();
		page.setResult(list);
		// 如果总数已经存在，则不查询
		if (totalCount > 0) {
			page.setTotalCount(totalCount);
		} else {
			/*
			 * String countHql = listHql; int order_index =
			 * countHql.toUpperCase().lastIndexOf("ORDER"); if (order_index !=
			 * -1) { countHql = countHql.substring(0, order_index); } //
			 * 通过转成SQL来进行查询，解决hql不能在distinct，group by结果集上使用count的问题
			 * 
			 * QueryTranslatorImpl queryTranslator = new QueryTranslatorImpl(
			 * null, countHql, Collections.EMPTY_MAP,
			 * (org.hibernate.engine.SessionFactoryImplementor) getSession()
			 * .getSessionFactory());
			 * queryTranslator.compile(Collections.EMPTY_MAP, false); countHql =
			 * new StringBuffer(" select count(*) from ( ")
			 * .append(queryTranslator.getSQLString()) .append(" )
			 * tmp_count_table ").toString();
			 */
			String actualHql = "select count(*) "
					+ listHql.substring(listHql.indexOf("from"));
			Query countQuery = this.createQuery(actualHql, namedParames);

			page.setTotalCount(Long.valueOf(countQuery.uniqueResult()
					.toString()));

		}

		return page;
	}

	@Override
	public Page<T> findByPage(List<Criterion> criterions, List<Order> orders,
			Integer firstResult, Integer maxResults, Long totalCount) {
		Criteria criteria = this.createCriteria(criterions, orders);
		return this.findByPage(criteria, firstResult, maxResults, totalCount);

	}

	@Override
	public Page<T> findByPage(Criteria criteria, Integer firstResult,
			Integer maxResults, Long totalCount) {
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

	/** ****************************创建HQL语句开始***************************** */
	private Query createQuery(final String hql) {
		return getCurrentSession().createQuery(hql);
	}

	private Query createQuery(final String hql,
			final List<? extends Object> params) {
		return this.createQuery(hql, params, null);
	}

	/**
	 * 参数为List集合
	 * 
	 * @param hql
	 * @param params
	 * @param splitParams
	 *            是否需要分割参数，true或者null是需要分开，fasle不需要
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
				// 对于in not in等批量数据
				query.setParameter(0, params);
				//query.setParameterList(0, params)
				// query.setParameterList(0, params);
			}
		}
		return query;

	}

	/**
	 * 参数为命名的Map集合
	 * 
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

	/** ****************************创建HQL语句结束***************************** */

	/** ****************************创建SQL语句开始***************************** */
	private SQLQuery createSQLQuery(final String sql) {
		return getCurrentSession().createSQLQuery(sql);
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
		try {
			if (namedParames != null && !namedParames.isEmpty()) {
				Iterator iter = namedParames.entrySet().iterator();
				while (iter.hasNext()) {
					Map.Entry entry = (Map.Entry) iter.next();
					sqlQuery.setParameter((String) entry.getKey(), entry
							.getValue());
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sqlQuery;
	}

	@Override
	public Criteria createCriteria(List<Criterion> criterions,
			List<Order> orders) {
		Criteria criteria = this.createCriteria();
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

	protected final Session getCurrentSession(){
		Session r = getSessionFactory().getCurrentSession();
		if(LOGGER.isInfoEnabled()) {
			LOGGER.info("current session: {}", r.hashCode());
		}
		return r;
	}


	
	/** ****************************创建SQL语句结束***************************** */
	
	protected SQLQuery buildSqlQuery(String query, Collection<?> params,boolean needResultClass, ResultTransformer rt) {
		return buildSqlQuery(query, params,needResultClass, null, null, rt);
	}
	protected SQLQuery buildSqlQuery(String query, Collection<?> params, boolean needResultClass) {
		return buildSqlQuery(query, params,needResultClass, null, null, null);
	}
	protected SQLQuery buildSqlQuery(String query, Collection<?> params,boolean needResultClass, Integer start, Integer limit, ResultTransformer rt) {
		SQLQuery r = getCurrentSession().createSQLQuery(query);
		if(start != null) r.setFirstResult(start);
		if(limit != null) r.setMaxResults(limit);
		if(needResultClass) {
			if(rt != null) 
				r.setResultTransformer(rt);
			else 
				r.addEntity(getActualType());
		}
		if(params != null) {
			Iterator<?> it = params.iterator();
			int i = 0;
			while(it.hasNext())
				r.setParameter(i++, it.next());
		}
		return r;
	}
	public final Class<?> getActualType() {
		return actualType;
	}
	
	
	public <E> DataPage<E> paginateBySql(String query, Collection<?> params, Integer pageNo, Integer pageSize, Class<E> resultClass)  throws Exception{
		StringBuilder counter = null;
		if(pageNo != null && pageSize != null) {
			counter = new StringBuilder();
			counter.append(" select count(1) ");
			String tmp = query;
			//去除from前面的projection
			Matcher m1 = Pattern.compile(".*?(from)", Pattern.CASE_INSENSITIVE).matcher(tmp);
			tmp = m1.replaceFirst("$1");
			Matcher m = Pattern.compile("order\\s+by\\s+.*", Pattern.CASE_INSENSITIVE).matcher(tmp);
			tmp = m.replaceAll("");
			counter.append(tmp);
		}
		return paginateBySql(counter == null ? null : counter.toString(), query, params, pageNo, pageSize, resultClass);
	}
	
	public <E> DataPage<E> paginateBySql(String counter, String query, Collection<?> params, Integer pageNo, Integer pageSize, Class<E> resultClass)  throws Exception{
		final Query q2 = buildSqlQuery(query, params,true, resultClass == null ? null : Transformers.aliasToBean(resultClass));
		if(StringUtils.isBlank(counter) || pageNo == null || pageSize == null) {
			DataPage<E> data = new DataPage<E>();
			data.setData(q2.list());
			return data;
		}
		final SQLQuery q1 = buildSqlQuery(counter, params, false);
		int start = DataPage.getStartOfPage(pageNo, pageSize);
		q2.setFirstResult(start);
		q2.setMaxResults(pageSize);
		long totalSize = ((Number)q1.uniqueResult()).longValue();
		return new DataPage<E>(start, totalSize ,pageSize, q2.list());
	}
}
