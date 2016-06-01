package com.deying.util.annotation;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.hibernate.persister.entity.AbstractEntityPersister;
import org.hibernate.transform.Transformers;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.deying.util.annotation.query.CriteriaQueryHelper;
import com.deying.util.annotation.query.QueryBuilder;
import com.deying.util.data.DataTypeUtils;
import com.deying.util.data.Symbol;
import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.enums.PersistentEnum;
import com.deying.util.page.DataPage;
import com.deying.util.sql.SqlGrammar;
import com.deying.util.sql.SqlUtils;

/**
 * @author wangxj
 * 
 */
@SuppressWarnings("unchecked")
@Repository("annCommonDao")
public class AnnCommonDao extends HibernateDaoSupport{

	private static final Logger LOG = LoggerFactory.getLogger(AnnCommonDao.class);
	
	
	public long count(Map<String, Object> params, Class<?> clazz) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, params, null);
		Number num = (Number)c.setProjection(Projections.count(getIdName(clazz))).uniqueResult();
		return num.longValue();
	}
	
	public long count(CriteriaWrapper criteriaWrapper, Class<?> clazz) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, criteriaWrapper);
		/*if(criteriaWrapper != null && criteriaWrapper.getCriterions() != null && 
				criteriaWrapper.getCriterions().size() > 0){
			Iterator<Criterion> i = criteriaWrapper.getCriterions().iterator();
			while(i.hasNext())
				c.add(i.next());
		}*/
		Number num = (Number)c.setProjection(Projections.count(getIdName(clazz))).uniqueResult();
		return num.longValue();
	}
	
	/**
	 * 快速删除表
	 * @throws Exception
	 */
	public <T> void truncate(Class<T> clazz) throws Exception {
		SQLQuery q = getCurrentSession().createSQLQuery(" TRUNCATE TABLE " + getTableName(clazz));
		q.executeUpdate();
	}
	
	public <T> void delete(T entity)  throws Exception{
		getCurrentSession().delete(entity);	
	}
	
	public <T, V extends PersistentEnum<?>> int delete(
			Collection<? extends Serializable> ids, Class<T> clazz, V... state)
			throws Exception {
		QueryBuilder qb = new QueryBuilder();
		qb.append("delete "+clazz.getSimpleName()+" where 1 = 1")
			.in(" and " + getIdName(clazz) + " ", ids);
		if(state.length == 1)
			qb.append(" and state = ? ", state[0]);
		else if(state.length > 1)
			qb.in(" and state ", state);
		final Query qu = getCurrentSession().createQuery(qb.toString());
		return qu.executeUpdate();
	}

	public <T, V extends PersistentEnum<?>> int delete(Serializable id,
			Class<T> clazz, V... state) throws Exception {
		QueryBuilder qb = new QueryBuilder();
		qb.append("delete "+clazz.getSimpleName()+" where 1 = 1")
			.appendIfNotNull(" and " + getIdName(clazz) + " = ? ", id);
		if(state.length == 1)
			qb.append(" and state = ? ", state[0]);
		else if(state.length > 1)
			qb.in(" and state ", state);
		final Query qu = getCurrentSession().createQuery(qb.toString());
		return qu.executeUpdate();
	}
	
	public <T> int delete(SqlGrammar sql, Class<T> clazz) throws Exception {
		StringBuffer q = new StringBuffer();
		q.append("delete "+clazz.getSimpleName()+" where ");
		q.append(sql.getCondition().toString());
		final Query qu = getCurrentSession().createQuery(q.toString());
		return qu.executeUpdate();
	}
	
	public boolean exists(Serializable id, Class<?> clazz)  throws Exception{
		final Criteria c = getCurrentSession().createCriteria(clazz);
		c.add(Property.forName(getIdName(clazz)).eq(id));
		Number num = (Number)c.setProjection(Projections.rowCount()).uniqueResult();
		return num.intValue() > 0;
	}
	
	public <T,V> List<V> find(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, String... eagerProperties) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, criteriaWrapper, eagerProperties);
		if(transforme != null && !DataTypeUtils.isBasicType(transforme))
			c.setResultTransformer(Transformers.aliasToBean(transforme));
		return c.list();
	}
	
	public <T, V> DataPage<V> find(CriteriaWrapper criteriaWrapper, 
			Class<T> clazz, Class<V> transforme, Integer pageNo, 
			Integer pageSize, String... eagerProperties) throws Exception {
		if(pageNo != null && pageSize != null && pageNo > 0 && pageSize > 0) {
			String idName = getIdName(clazz);
			final Criteria cc = getCurrentSession().createCriteria(clazz);
			CriteriaQueryHelper.montageCriteria(cc, criteriaWrapper, CriteriaQueryHelper.NEED_CRITERION | CriteriaQueryHelper.NEED_ALIASE);
			cc.setProjection(Projections.countDistinct(idName));
			long count = ((Number)cc.uniqueResult()).longValue();
			
			final Criteria c = getCurrentSession().createCriteria(clazz);
			int start = DataPage.getStartOfPage(pageNo, pageSize);
			//判断aliases/eagerProperties中是否含有Set、List属性
			boolean hasSetPro = false;
			for(int i = 0; i < eagerProperties.length; i++) {
				Class<?> typeClazz = clazz.getDeclaredField(eagerProperties[i]).getType();
				if(Collection.class.isAssignableFrom(typeClazz)) {
					hasSetPro = true;
					break;
				}
			}
			if(!hasSetPro && criteriaWrapper.getAliases() != null) {
				for(Iterator<?> i = criteriaWrapper.getAliases().keySet().iterator();i.hasNext(); ) {
					Class<?> typeClazz = clazz.getDeclaredField((String)i.next()).getType();
					if(Collection.class.isAssignableFrom(typeClazz)) {
						hasSetPro = true;
						break;
					}
				}
			}
			
			if(!hasSetPro) {
				//eagerProperties为空时，不会出现重复的root数据，可以直接分页
				CriteriaQueryHelper.montageCriteria(c, criteriaWrapper, eagerProperties);
				c.setFirstResult(start);
				c.setMaxResults(pageSize);
				if(transforme != null && !DataTypeUtils.isBasicType(transforme))
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}else{
				//eagerProperties不为空，所以要先获取分页的root数据，然后再获取eagerProperties关联表数据
				//先获取分页的root数据
				final Criteria tmp = getCurrentSession().createCriteria(clazz);
				tmp.setProjection(Projections.distinct(Property.forName(idName)));
				CriteriaQueryHelper.montageCriteria(tmp, criteriaWrapper,
						CriteriaQueryHelper.NEED_CRITERION 
						| CriteriaQueryHelper.NEED_ALIASE 
						| CriteriaQueryHelper.NEED_ORDER);
				tmp.setFirstResult(start);
				tmp.setMaxResults(pageSize);
				List<?> ids = tmp.list();
				if(ids == null || ids.size() ==0)
					return new DataPage<V>(start, count ,pageSize, new ArrayList<V>());
				//再获取eagerProperties关联表数据
				CriteriaQueryHelper.montageCriteria(c, criteriaWrapper,
						CriteriaQueryHelper.NEED_PROJECTOIN 
						| CriteriaQueryHelper.NEED_ALIASE 
						| CriteriaQueryHelper.NEED_CRITERION
						| CriteriaQueryHelper.NEED_ORDER,eagerProperties);
				c.add(Restrictions.in(idName, ids));
				if(transforme != null && !DataTypeUtils.isBasicType(transforme))
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}
			return new DataPage<V>(start, count ,pageSize, c.list());
		}else{
			DataPage<V> data = new DataPage<V>();
			data.setData(find(criteriaWrapper, clazz, transforme, eagerProperties));
			return data;
		}
	}
	
	/**
	 * 只返回需要的分页数据，不需要返回总数
	 */
	public <T, V> List<V> findList(CriteriaWrapper criteriaWrapper, 
			Class<T> clazz, Class<V> transforme, Integer pageNo, 
			Integer pageSize, String... eagerProperties) throws Exception {
		if(pageNo != null && pageSize != null && pageNo > 0 && pageSize > 0) {
			String idName = getIdName(clazz);
			final Criteria c = getCurrentSession().createCriteria(clazz);
			int start = DataPage.getStartOfPage(pageNo, pageSize);
			//判断aliases/eagerProperties中是否含有Set、List属性
			boolean hasSetPro = false;
			for(int i = 0; i < eagerProperties.length; i++) {
				Class<?> typeClazz = clazz.getDeclaredField(eagerProperties[i]).getType();
				if(Collection.class.isAssignableFrom(typeClazz)) {
					hasSetPro = true;
					break;
				}
			}
			if(!hasSetPro && criteriaWrapper.getAliases() != null) {
				for(Iterator<?> i = criteriaWrapper.getAliases().keySet().iterator();i.hasNext(); ) {
					Class<?> typeClazz = clazz.getDeclaredField((String)i.next()).getType();
					if(Collection.class.isAssignableFrom(typeClazz)) {
						hasSetPro = true;
						break;
					}
				}
			}
			
			if(!hasSetPro) {
				//eagerProperties为空时，不会出现重复的root数据，可以直接分页
				CriteriaQueryHelper.montageCriteria(c, criteriaWrapper, eagerProperties);
				c.setFirstResult(start);
				c.setMaxResults(pageSize);
				if(transforme != null && !DataTypeUtils.isBasicType(transforme))
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}else{
				//eagerProperties不为空，所以要先获取分页的root数据，然后再获取eagerProperties关联表数据
				//先获取分页的root数据
				//再获取eagerProperties关联表数据
				final Criteria tmp = getCurrentSession().createCriteria(clazz);
				tmp.setProjection(Projections.distinct(Property.forName(idName)));
				CriteriaQueryHelper.montageCriteria(tmp, criteriaWrapper,
						CriteriaQueryHelper.NEED_CRITERION 
						| CriteriaQueryHelper.NEED_ALIASE 
						| CriteriaQueryHelper.NEED_ORDER);
				tmp.setFirstResult(start);
				tmp.setMaxResults(pageSize);
				List<?> ids = tmp.list();
				if(ids == null || ids.size() ==0)
					return new ArrayList<V>();
				//再获取eagerProperties关联表数据
				CriteriaQueryHelper.montageCriteria(c, criteriaWrapper,
						CriteriaQueryHelper.NEED_PROJECTOIN 
						| CriteriaQueryHelper.NEED_ALIASE 
						| CriteriaQueryHelper.NEED_CRITERION
						| CriteriaQueryHelper.NEED_ORDER,eagerProperties);
				c.add(Restrictions.in(idName, ids));
				if(transforme != null && !DataTypeUtils.isBasicType(transforme))
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}
			return c.list();
		}else{
			return find(criteriaWrapper, clazz, transforme, eagerProperties);
		}
	}
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param eagerProperties 需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	public <T, V> List<V> find(Map<String, Object> params, Class<T> clazz, Class<V> transforme, String[] eagerProperties, Order... orders) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, params,eagerProperties, orders);
		if(transforme != null && !DataTypeUtils.isBasicType(transforme))
			c.setResultTransformer(Transformers.aliasToBean(transforme));
		return c.list();
	}
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param pageNo	第几页
	 * @param pageSize	一页显示的个数
	 */
	public <T, V> DataPage<V> find(Map<String, Object> params, Class<T> clazz, Class<V> transforme, String[] eagerProperties, Integer pageNo, Integer pageSize, Order... orders) throws Exception {
		if(pageNo != null && pageSize != null && pageNo > 0 && pageSize > 0) {
			String idName = getIdName(clazz);
			final Criteria cc = getCurrentSession().createCriteria(clazz);
			CriteriaQueryHelper.montageCriteria(cc, params,null);
			cc.setProjection(Projections.countDistinct(idName));
			long count = ((Number)cc.uniqueResult()).longValue();
			
			final Criteria c = getCurrentSession().createCriteria(clazz);
			int start = DataPage.getStartOfPage(pageNo, pageSize);
			if(eagerProperties == null || eagerProperties.length == 0) {
				//eagerProperties为空时，不会出现重复的root数据，可以直接分页
				CriteriaQueryHelper.montageCriteria(c, params,null,orders);
				c.setFirstResult(start);
				c.setMaxResults(pageSize);
				if(transforme != null && !DataTypeUtils.isBasicType(transforme) )
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}else{
				//eagerProperties不为空，所以要先获取分页的root数据，然后再获取eagerProperties关联表数据
				//先获取分页的root数据
				final Criteria tmp = getCurrentSession().createCriteria(clazz);
				tmp.setProjection(Property.forName(idName));
				CriteriaQueryHelper.montageCriteria(tmp, params,null,orders);
				tmp.setFirstResult(start);
				tmp.setMaxResults(pageSize);
				List<?> ids = tmp.list();
				if(ids == null || ids.size() ==0)
					return new DataPage<V>(start, count ,pageSize, new ArrayList<V>());
				//再获取eagerProperties关联表数据
				CriteriaQueryHelper.montageCriteria(c, params,eagerProperties, orders);
				c.add(Restrictions.in(idName, ids));
				if(transforme != null && !DataTypeUtils.isBasicType(transforme))
					c.setResultTransformer(Transformers.aliasToBean(transforme));
			}
			return new DataPage<V>(start, count ,pageSize, c.list());
		}else{
			DataPage<V> data = new DataPage<V>();
			data.setData(find(params, clazz, transforme, eagerProperties, orders));
			return data;
		}
	}
	
	public <T> List<T> findByExample(T example) throws Exception {
		return (List<T>)getHibernateTemplate().findByExample(example);
	}
	
	public <T, V extends PersistentEnum<?>> List<T> get(
			Collection<? extends Serializable> ids, Class<T> clazz, V... state) throws Exception {
		if(ids == null || ids.size() == 0) {
			return new ArrayList<T>(0);
		}
		QueryBuilder qb = new QueryBuilder();
		qb.append(" from "+clazz.getSimpleName()+" where ")
			.in(" " + getIdName(clazz) + " ", ids);
		if(state.length == 1)
			qb.append(" and state = ? ", state[0]);
		else if(state.length > 1)
			qb.in(" and state ", state);
		final Query qu = getCurrentSession().createQuery(qb.toString());
		return qu.list();
	}
	
	public <T> List<T> get(Collection<? extends Serializable> ids, Class<T> clazz, Order... orders)  throws Exception{
		if(ids == null || ids.size() == 0) {
			return new ArrayList<T>(0);
		}
		final Criteria c = getCurrentSession().createCriteria(clazz);
		c.add(Property.forName(getIdName(clazz)).in(ids));
		if(orders != null && orders.length > 0){
			for(Order o : orders) {
				c.addOrder(o);
			}
		}
		return c.list();
	}
	
	public <T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			String... eagerProperties) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, criteriaWrapper, eagerProperties);
		return (T)c.uniqueResult();
	}
	
	public <T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			LockMode lockMode) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, criteriaWrapper);
		if(lockMode != null)
			c.setLockMode(org.hibernate.LockMode.parse(lockMode.getName()));
		return (T)c.uniqueResult();
	}
	
	public <T,V> V get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			Class<V> transforme, LockMode lockMode, String... eagerProperties) throws Exception {
		final Criteria c = getCurrentSession().createCriteria(clazz);
		CriteriaQueryHelper.montageCriteria(c, criteriaWrapper, eagerProperties);
		if(transforme != null && !DataTypeUtils.isBasicType(transforme))
			c.setResultTransformer(Transformers.aliasToBean(transforme));
		if(lockMode != null)
			c.setLockMode(org.hibernate.LockMode.parse(lockMode.getName()));
		return (V)c.uniqueResult();
	}
	
	public <T, V extends PersistentEnum<?>> T get(Serializable id, Class<T> clazz, V... state) throws Exception {
		if(state.length > 0) {
			QueryBuilder qb = new QueryBuilder();
			qb.append(" from "+clazz.getSimpleName()+" where ")
				.append(" " + getIdName(clazz) + " = ? ", id);
			if(state.length == 1)
				qb.append(" and state = ? ", state[0]);
			else if(state.length > 1)
				qb.in(" and state ", state);
			final Query qu = getCurrentSession().createQuery(qb.toString());
			return (T)qu.uniqueResult();
		}else 
			return (T)getCurrentSession().get(clazz, id);
	}
	
	public <T> T get(Serializable id, Class<T> clazz, LockMode lockMode) throws Exception {
			QueryBuilder qb = new QueryBuilder();
			qb.append(" from "+clazz.getSimpleName()+" as obj where ")
				.append(" obj." + getIdName(clazz) + " = ? ", id);
			final Query qu = getCurrentSession().createQuery(qb.toString());
			if(lockMode != null)
				qu.setLockMode("obj", org.hibernate.LockMode.parse(lockMode.getName()));
			return (T)qu.uniqueResult();
	}
	
	public <T> T getEager(Serializable id, Class<T> clazz,
			String... eagerProperties) throws Exception {
		Criteria c = getCurrentSession().createCriteria(clazz)
							.add(Property.forName(getIdName(clazz)).eq(id));
		if(eagerProperties != null && eagerProperties.length > 0) {
			for(String eager : eagerProperties) 
				c.setFetchMode(eager, FetchMode.JOIN);
		}
		return (T)c.uniqueResult();
	}
	
	public <T> List<T> getEager(Collection<? extends Serializable> ids,
			Class<T> clazz, String... eagerProperties) throws Exception {
		// Precondition checking
		if(ids == null || ids.size() == 0) {
			return new ArrayList<T>(0);
		}
		
		Criteria c = getCurrentSession().createCriteria(clazz)
			.add(Property.forName(getIdName(clazz)).in(ids));
		if(eagerProperties != null && eagerProperties.length > 0) {
			for(String eager : eagerProperties) 
				c.setFetchMode(eager, FetchMode.JOIN);
		}
		c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return c.list();
	}
	
	public <T> List<T> getAll(Class<T> clazz, Order... orders)  throws Exception{
		return getAll(null,clazz, orders);
	}
	
	public <T> List<T> getAll(Comparator<T> comparator,Class<T> clazz, Order... orders)  throws Exception{
		//
		Criteria c = getCurrentSession().createCriteria(clazz); 
		if(orders != null && orders.length > 0){
			for(Order o : orders) {
				c.addOrder(o);
			}
		}
		List<T> list = c.list();
		
		if(comparator != null) {
			Collections.sort(list, comparator);
		}
		return list;
	}
	
	public <T> Serializable save(String entityName, T entity)  throws Exception{
		return getCurrentSession().save(entityName, entity);
	}
	public <T> Serializable save(Class clazz,T entity)  throws Exception{
		return this.save(clazz.getSimpleName(), entity);
	}
	
	public <T> void persist(String entityName, T entity)  throws Exception {
		getCurrentSession().persist(entityName, entity);
	}
	
	public <T> int update(SqlGrammar sql, Class<T> clazz) throws Exception {
		if(StringUtils.isBlank(sql.getUpdateSql().toString()))
			return 0;
		StringBuffer q = new StringBuffer();
		q.append("UPDATE "+clazz.getSimpleName()+" SET ");
		q.append(sql.getUpdateSql().toString());
		q.append(" WHERE ");
		q.append(sql.getCondition().toString());
		final Query qu = getCurrentSession().createQuery(q.toString());
		return qu.executeUpdate();
	}
	
	public <T> int update(Map<String, Object> params, Serializable id, Class<T> clazz)  throws Exception{
		if(params == null)
			throw new IllegalArgumentException("invalid parameter param: params is null.");
		if(params.isEmpty()) 
			throw new IllegalArgumentException("invalid parameter param: params is empty.");
		StringBuffer q = new StringBuffer();
		q.append("UPDATE "+clazz.getSimpleName()+" SET ");
		Iterator<String> i =  params.keySet().iterator();
		while(i.hasNext()){
			String param = i.next();
			if(i.hasNext()) 
				q.append(SqlUtils.format(param,params.get(param),Symbol.EQ) +" , ");
			else
				q.append(SqlUtils.format(param,params.get(param),Symbol.EQ));
		}
		q.append(" WHERE " + getIdName(clazz) + " = " + id + " ");
		final Query qu = getCurrentSession().createQuery(q.toString());
		return qu.executeUpdate();
	}
	
	public <T> void update(String entityName, T entity)  throws Exception{
		getCurrentSession().update(entityName, entity);
	}
	
	public <T> void update(T entity)  throws Exception{
		getCurrentSession().update(entity);
	}
	
	public <T ,V extends PersistentEnum<?>> void updateState(Collection<? extends Serializable> ids,
			V state, Class<T> clazz) throws Exception {
		if(ids == null)
			throw new IllegalArgumentException("invalid parameter param: ids is null");
		StringBuffer sb = new StringBuffer();
		sb.append(" update " + clazz.getSimpleName() + " set ");
		sb.append(" state = ? ")
			.append(" where ")
			.append( getIdName(clazz) + " in (:ids) ");
		Query q = getCurrentSession().createQuery(sb.toString());
		q.setInteger(0, (Integer)state.getValue());
		q.setParameterList("ids", ids);
		q.executeUpdate();
	}
	
	public <T ,V extends PersistentEnum<?>> int updateState(Serializable id, V state,
			Class<T> clazz) throws Exception {
		if(id == null)
			throw new IllegalArgumentException("invalid parameter param: id is null");
		StringBuffer sb = new StringBuffer();
		sb.append(" update " + clazz.getSimpleName() + " set ");
		sb.append(" state = ? ").append(" where ");
		if(id.getClass().isArray())
			sb.append(SqlUtils.format(getIdName(clazz), id, Symbol.IN));
		else
			sb.append(SqlUtils.format(getIdName(clazz), id, Symbol.EQ));
		Query q = getCurrentSession().createQuery(sb.toString());
		q.setInteger(0, (Integer)state.getValue());
		return q.executeUpdate();
	}
	
	private final Session getCurrentSession(){
		Session r = getSessionFactory().getCurrentSession();
		if(LOG.isInfoEnabled()) {
			LOG.info("current session: {}", r.hashCode());
		}
		return r;
	}
	
	private String getIdName(Class<?> clazz){
		String idName = getSessionFactory().getClassMetadata(clazz)
							.getIdentifierPropertyName();
		if(idName == null)
			throw new IllegalArgumentException("invalid parameter param: " + clazz.getSimpleName());
		return idName;
	}
	
	private final <T> String getTableName(Class<T> clazz) {
		AbstractEntityPersister a = (AbstractEntityPersister)getSessionFactory().getClassMetadata(clazz);
		return a.getTableName();
	}
	
}
