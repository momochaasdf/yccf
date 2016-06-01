package com.deying.util.annotation;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.metadata.ClassMetadata;
import org.hibernate.persister.entity.AbstractEntityPersister;
import org.hibernate.transform.Transformers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.deying.util.annotation.query.QueryBuilder;
import com.deying.util.data.DataConvert;
import com.deying.util.data.DataTypeUtils;
import com.deying.util.enums.PersistentEnum;
import com.deying.util.page.DataPage;

/**
 * @author wangxj
 * 
 */
@SuppressWarnings("unchecked")
public abstract class AnnDaoImpl<T> extends HibernateDaoSupport implements AnnDao<T> {
	
	protected final Logger LOG = LoggerFactory.getLogger(getClass());
	
	@Resource
	private SessionFactory sessionFactory;
	
	protected final Class<T> actualType;
	protected String idName;
	
	public AnnDaoImpl() {
		this.actualType = detectActualType();
	}
	
	public final Class<T> getActualType() {
		return actualType;
	}
	
	public final String getIdName() {
		return idName == null ? idName = getSessionFactory().getClassMetadata(getActualType()).getIdentifierPropertyName() : idName;
	}

	
	public final String getEntityName() {
		ClassMetadata cm = getSessionFactory().getClassMetadata(getActualType());
		return cm.getEntityName();
	}
	
	public final String getTableName() {
		AbstractEntityPersister a = (AbstractEntityPersister)getSessionFactory().getClassMetadata(getActualType());
		return a.getTableName();
	}
	
	public final String getEntityName(Class<?> clazz) {
		ClassMetadata cm = getSessionFactory().getClassMetadata(clazz);
		return cm.getEntityName();
	}
	
	public void clear(){
		getCurrentSession().clear();
	}
	
	public void flush() throws Exception{
		getCurrentSession().flush();
	}
	
	public void refresh(T entity) throws Exception{
		getCurrentSession().refresh(entity);
	}
	
	public void evict(T entity) throws Exception{
		getCurrentSession().evict(entity);
	}
	
	public T get(Serializable id,LockMode mod) throws Exception{
		T r = (T)getCurrentSession().get(getActualType(), id,mod);
		return r;
	}
	
	@Override
	public List<T> get(Collection<? extends Serializable> ids,
			String... eagerProperties) throws Exception {
		if(ids == null || ids.size() == 0) {
			return new ArrayList<T>(0);
		}
		Criteria c = getCurrentSession().createCriteria(getActualType()).add(Property.forName(getIdName()).in(ids));
		for(String eager : eagerProperties) {
			c.setFetchMode(eager, FetchMode.JOIN);
		}
		c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return c.list();
	}

	@Override
	public T get(Serializable id, String... eagerProperties)
			throws Exception {
		Criteria c = getCurrentSession().createCriteria(getActualType())
				.add(Property.forName(getIdName()).eq(id));
		for(String eager : eagerProperties) 
			c.setFetchMode(eager, FetchMode.JOIN);
		return (T)c.uniqueResult();
	}
	
	public T get(QueryBuilder qb) throws Exception {
		final Query q = buildQuery(qb);
		return (T)q.uniqueResult();
	}
	
	public <K> K get(QueryBuilder qb, Class<K> resultClass) throws Exception {
		final Query q = buildQuery(qb, resultClass);
		Object obj = q.uniqueResult();
		if(DataTypeUtils.isBasicType(resultClass)) {
			if(resultClass.isAssignableFrom(obj.getClass()))
				return (K)obj;
			else {
				return DataConvert.convertType(obj.toString(), resultClass);
			}
		}else
			return (K)obj;
	}
	
	public T getBySql(QueryBuilder qb) throws Exception {
		final Query q = buildSqlQuery(qb);
		return (T)q.uniqueResult();
	}
	
	public <K> K getBySql(QueryBuilder qb, Class<K> resultClass) throws Exception {
		final Query q = buildSqlQuery(qb, resultClass);
		Object obj = q.uniqueResult();
		if(DataTypeUtils.isBasicType(resultClass)) {
			if(resultClass.isAssignableFrom(obj.getClass()))
				return (K)obj;
			else {
				return DataConvert.convertType(obj.toString(), resultClass);
			}
		}else
			return (K)obj;
	}

	public boolean exists(Serializable id) throws Exception{
		final Criteria c = getCurrentSession().createCriteria(getActualType());
		c.add(Property.forName(getIdName()).eq(id));
		final Number count = (Number) c.setProjection(Projections.count(getIdName())).uniqueResult();
		return count.intValue() > 0;
	}
	
	public List<T> find(String query, Collection<?> params, String alias, LockMode mode) throws Exception{
		final Query q = buildQuery(query, params);
		q.setLockMode(alias, mode);
		return q.list();
	}
	
	/**
	 * 以下属性已经设值，不需要设值
	 * creatorId,creator,createTime,modifierId,modifier,modifyTime
	 * @param entity
	 * @return
	 * @throws Exception
	 */
	public Serializable save(T entity) throws Exception{
		return getCurrentSession().save(entity);
	}
	
	/**
	 *  以下属性已经设值，不需要设值
	 * modifierId,modifier,modifyTime
	 */
	public void update(T entity) throws Exception{
		getCurrentSession().update(entity);
	}
	
	/**
	 *  以下属性已经设值，不需要设值
	 * modifierId,modifier,modifyTime
	 */
	@Override
	public <V extends PersistentEnum<?>> void updateState(
			Collection<? extends Serializable> ids, V state) throws Exception {
		if(ids == null)
			throw new IllegalArgumentException("invalid parameter param: ids is null");
		StringBuffer sb = new StringBuffer();
		sb.append(" update " + getActualType().getSimpleName() + " set ");
		sb.append(" state = ? ")
			.append(" where ")
			.append( getIdName() + " in (:ids) ");
		Query q = getCurrentSession().createQuery(sb.toString());
		q.setInteger(0, (Integer)state.getValue());
		q.setParameterList("ids", ids);
		q.executeUpdate();
	}

	/**
	 *  以下属性已经设值，不需要设值
	 * modifierId,modifier,modifyTime
	 */
	@Override
	public <V extends PersistentEnum<?>> void updateState(Serializable id,  V state)
			throws Exception {
		if(id == null)
			throw new IllegalArgumentException("invalid parameter param: id is null");
		StringBuffer sb = new StringBuffer();
		sb.append(" update " + getActualType().getSimpleName() + " set ");
		sb.append(" state = ? ")
			.append(" where ")
			.append( getIdName() + " = ? ");
		Query q = getCurrentSession().createQuery(sb.toString());
		q.setInteger(0, (Integer)state.getValue());
		q.setParameter(1, id);
		q.executeUpdate();
	}
	
	/**
	 * 快速删除表
	 */
	public void truncate() throws Exception {
		SQLQuery q = buildSqlQuery(" TRUNCATE TABLE " + getTableName(), null, Long.class);
		q.executeUpdate();
	}

	public void delete(T entity) throws Exception{
		getCurrentSession().delete(entity);	
	}
	
	public int updateBySql(String query, Collection<?> params) throws Exception{
		final Query q = buildSqlQuery(query, params, Integer.class);
		return q.executeUpdate();
	}
	
	public int update(String query, Collection<?> params) throws Exception{
		final Query q = buildQuery(query, params);
		return q.executeUpdate();
	}
	
	public long countByQB(QueryBuilder queryBuilder, boolean isHQL) throws Exception{
		Query q = isHQL ? buildQuery(queryBuilder) : buildSqlQuery(queryBuilder, Long.class);
		return ((Number)q.uniqueResult()).longValue();
	}
	
	public long count(String query, Collection<?> params)  throws Exception{
		final Query q = buildQuery(query, params);
		return ((Number)q.uniqueResult()).longValue();
	}
	
	public long countBySql(String query, Collection<?> params) {
		final Query q = buildSqlQuery(query, params, Long.class);
		return ((Number)q.uniqueResult()).longValue();
	}

	/**
	 * 不适合子查询用到了order by，只适合简单查询
	 * @param alias 当主表用到别名时 一定要传该参数
	 */
	public DataPage<T> paginate(QueryBuilder query, Integer pageNo, Integer pageSize, String...alias) throws Exception{
		return paginate(query, pageNo, pageSize, null, alias);
	}
	
	/**
	 * 不适合子查询用到了order by，只适合简单查询
	 * @param alias 当主表用到别名时 一定要传该参数
	 */
	public <K> DataPage<K> paginate(QueryBuilder query, Integer pageNo, Integer pageSize, Class<K> resultClass, String...alias) throws Exception{
		StringBuffer counter = null;
		if(pageNo != null && pageSize != null) {
			counter = new StringBuffer();
			String idAlias = alias.length == 0 ? getIdName() : alias[0] + "."+ getIdName();
			counter.append(" select count(" + idAlias +") ");
			String q = query.getQueryString();
			Pattern p = Pattern.compile("order\\s+by\\s+.*", Pattern.CASE_INSENSITIVE);
			Matcher m = p.matcher(q);
			q = m.replaceFirst("");
			Matcher m1 = Pattern.compile("fetch", Pattern.CASE_INSENSITIVE).matcher(q);
			q = m1.replaceAll("");
			counter.append(q);
		}
		return paginate(counter == null ? null : counter.toString(), query.getQueryString(), query.getQueryParameters(), pageNo, pageSize, resultClass);
	}
	
	public DataPage<T> paginate(String counter, String query, Collection<?> params, Integer pageNo, Integer pageSize) throws Exception{
		return paginate(counter, query, params, pageNo, pageSize, null);
	}
	
	public <K> DataPage<K> paginate(String counter, String query, Collection<?> params, Integer pageNo, Integer pageSize, Class<K> resultClass) throws Exception{
		Query q = null;
		if(pageNo == null || StringUtils.isBlank(counter) || pageSize == null) {
			q = buildQuery(query, params, resultClass);
			DataPage<K> data = new DataPage<K>();
			data.setData(q.list());
			return data;
		}
		int start = DataPage.getStartOfPage(pageNo, pageSize);
		q = buildQuery(query, params,start, pageSize, resultClass);
		final Query c = buildQuery(counter, params);
		return new DataPage<K>(start, ((Number)(c.uniqueResult())).longValue(),pageSize, q.list());
	}
	
	public  DataPage<T> paginateBySql(QueryBuilder query, Integer pageNo, Integer pageSize) throws Exception{
		return paginateBySql(query.getQueryString(), query.getQueryParameters(), pageNo, pageSize);
	}
	
	public <K> DataPage<K> paginateBySql(QueryBuilder query, Integer pageNo, Integer pageSize, Class<K> resultClass) throws Exception{
		return paginateBySql(query.getQueryString(), query.getQueryParameters(), pageNo, pageSize, resultClass);
	}
	
	public  DataPage<T> paginateBySql(String query, Collection<?> params, Integer pageNo, Integer pageSize) throws Exception{
		return paginateBySql(query, params, pageNo, pageSize, null);
	}
	
	public <K> DataPage<K> paginateBySql(String query, Collection<?> params, Integer pageNo, Integer pageSize, Class<K> resultClass) throws Exception{
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
	
	public <K> DataPage<K> paginateBySql(String counter, String query, Collection<?> params, Integer pageNo, Integer pageSize, Class<K> resultClass) throws Exception{
		Query q = null;
		if(StringUtils.isBlank(counter) || pageNo == null || pageSize == null) {
			q = buildSqlQuery(query, params, resultClass);
			DataPage<K> data = new DataPage<K>();
			data.setData(q.list());
			return data;
		}
		int start = DataPage.getStartOfPage(pageNo, pageSize);
		final SQLQuery c = buildSqlQuery(counter, params, Long.class);
		q = buildSqlQuery(query, params, start, pageSize, resultClass);
		long totalSize = ((Number)c.uniqueResult()).longValue();
		return new DataPage<K>(start, totalSize ,pageSize, q.list());
	}
	
	public List<T> find(QueryBuilder queryBuilder) throws Exception{
		final Query q = buildQuery(queryBuilder);
		return q.list();
	}
	
	public <K> List<K> find(QueryBuilder queryBuilder, Class<K> resultClass) throws Exception{
		final Query q = buildQuery(queryBuilder, resultClass);
		return q.list();
	}
	
	public List<T> find(String query,Collection<?> params) throws Exception{
		final Query q = buildQuery(query, params);
		return q.list();
	}
	
	public <K> List<K> find(String query, Collection<?> params, Class<K> resultClass) throws Exception{
		final Query q = buildQuery(query, params,resultClass);
		return q.list();
	}
	
	public List<T> find(String query, Collection<?> params, int start, int limit) throws Exception{
		final Query q = buildQuery(query, params, start, limit);
		return q.list();
	}
	
	public <K> List<K> find(String query, Collection<?> params, int start, int limit, Class<K> resultClass) throws Exception{
		final Query q = buildQuery(query, params, start, limit, resultClass);
		return q.list();
	}
	
	public List<T> findBySql(QueryBuilder queryBuilder) throws Exception{
		final Query q = buildSqlQuery(queryBuilder);
		return q.list();
	}
	
	public <K> List<K> findBySql(QueryBuilder queryBuilder, Class<K> resultClass) throws Exception{
		final Query q = buildSqlQuery(queryBuilder, resultClass);
		return q.list();
	}
	
	public List<T> findBySql(String query, Collection<?> params) throws Exception{
		final Query q = buildSqlQuery(query, params);
		return q.list();
	}
	
	public <K> List<K> findBySql(String query, Collection<?> params, Class<K> resultClass) throws Exception{
		final Query q = buildSqlQuery(query, params, resultClass);
		return q.list();
	}
	
	public List<T> findBySql(String query, Collection<?> params, int start, int limit) throws Exception{
		final Query q = buildSqlQuery(query, params,start, limit);
		return q.list();
	}
	
	public <K> List<K> findBySql(String query, Collection<?> params, int start, int limit, Class<K> resultClass) throws Exception{
		final Query q = buildSqlQuery(query, params, start, limit, resultClass);
		return q.list();
	}
	/**
	 * 
	 */
	protected final Session getCurrentSession(){
		Session r = getSessionFactory().getCurrentSession();
		if(LOG.isInfoEnabled()) {
			LOG.info("current session: {}", r.hashCode());
		}
		return r;
	}
	
	protected <E> List<E> findByExample(E example) throws Exception{
		return (List<E>)getHibernateTemplate().findByExample(example);
	}
	
	protected Criteria buildCriteria(Criterion... criteria) {
		Criteria r = getCurrentSession().createCriteria(getActualType());
		for (Criterion c : criteria) {
			r.add(c);
		}
		return r;
	}
	
	protected <K> Query buildQuery(QueryBuilder queryBuilder, Class<K>... resultClass) {
		return buildQuery(queryBuilder.getQueryString(), queryBuilder.getQueryParameters(), resultClass.length > 0 ? resultClass[0] : null);
	}
	
	protected Query buildQuery(String query, Collection<?> params) {
		return buildQuery(query, params, null, null, null);
	}
	
	protected <K> Query buildQuery(String query, Collection<?> params, Class<K> resultClass) {
		return buildQuery(query, params, null, null, resultClass);
	}
	
	protected Query buildQuery(String query, Collection<?> params, Integer start, Integer limit) {
		return buildQuery(query, params, start, limit, null);
	}
	
	protected <K> Query buildQuery(String query, Collection<?> params, Integer start, Integer limit, Class<K> resultClass) {
		Query r = getCurrentSession().createQuery(query);
		if(start != null) r.setFirstResult(start);
		if(limit != null) r.setMaxResults(limit);
		if(resultClass != null && !DataTypeUtils.isBasicType(resultClass))
			r.setResultTransformer(Transformers.aliasToBean(resultClass));
		if(params != null && params.size() > 0) {
			int i = 0;
			for(Iterator<?> it = params.iterator();it.hasNext();) 
				r.setParameter(i++, it.next());
		}
		return r;
	}
	
	protected <K> SQLQuery buildSqlQuery(QueryBuilder queryBuilder, Class<K>... resultClass) {
		return buildSqlQuery(queryBuilder.getQueryString(), queryBuilder.getQueryParameters(), resultClass.length > 0 ? resultClass[0] : null);
	}
	
	protected SQLQuery buildSqlQuery(String query, Collection<?> params) {
		return buildSqlQuery(query, params, null, null, null);
	}
	
	protected <K> SQLQuery buildSqlQuery(String query, Collection<?> params, Class<K> resultClass) {
		return buildSqlQuery(query, params, null, null, resultClass);
	}
	
	protected SQLQuery buildSqlQuery(String query, Collection<?> params, Integer start, Integer limit) {
		return buildSqlQuery(query, params, start, limit, null);
	}
	
	protected <K> SQLQuery buildSqlQuery(String query, Collection<?> params, Integer start, Integer limit, Class<K> resultClass) {
		SQLQuery r = getCurrentSession().createSQLQuery(query);
		if(start != null) r.setFirstResult(start);
		if(limit != null) r.setMaxResults(limit);
		if(resultClass == null)
			r.addEntity(getActualType());
		else if(!DataTypeUtils.isBasicType(resultClass))
			r.setResultTransformer(Transformers.aliasToBean(resultClass));
		if(params != null && params.size() > 0) {
			int i = 0;
			for(Iterator<?> it = params.iterator();it.hasNext();) {
				Object obj = it.next();
				obj = (obj != null && obj instanceof PersistentEnum) 
						? ((PersistentEnum)obj).getValue() : obj;
				r.setParameter(i++, obj);
			}
		}
		return r;
	}
	
	private Class<T> detectActualType() {
		Class<?> clazz = getClass();
		while(clazz.getSuperclass() != AnnDaoImpl.class) {
			clazz = clazz.getSuperclass();
		}
		
		Type type = clazz.getGenericSuperclass();
		return (Class<T>)((ParameterizedType)type).getActualTypeArguments()[0];
	}
	
	
	
	public void delete(Long id) {
		sessionFactory.getCurrentSession().delete(sessionFactory.getCurrentSession().get(actualType, id));
	}

	public void updateEntity(T entity){
		sessionFactory.getCurrentSession().update(entity);
	}

	public T getById(Long id) {
		return (T) sessionFactory.getCurrentSession().get(actualType, id);
	}

	
	//1,2,3,4,5
	public List<T> getByIds(Long[] ids) {
		String hql = "FROM " + actualType.getSimpleName() + " WHERE id in (:ids)";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameterList("ids", ids);//一次复制多个
		return query.list();
	}

	public List<T> findAll() {
		String hql = "FROM " + actualType.getSimpleName();
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
	
	public void saveEntity(T entity) {
		getSession().save(entity);
	}
}