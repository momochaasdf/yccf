package com.deying.util.comman;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;

public class GenericServiceImpl<T, PK extends Serializable> implements
		GenericService<T, PK> {

	private GenericDao<T, PK> genericDao;

	public List<T> findAll() {
		return genericDao.findAll();
	}

	public T findById(PK id) {
		return genericDao.findById(id);
	}

	public Page<T> findByPage(int page, int size) {
		return genericDao.findByPage(page, size);
	}

	public int getPageSize(int size) {
		return genericDao.getPageSize(size);
	}

	public int getTotalRows() {
		return genericDao.getTotalRows();
	}

	public void modify(T entity) {
		genericDao.modify(entity);
	}

	public void remove(T entity) {
		genericDao.remove(entity);
	}

	public void removeAll(Collection<T> entities) {
		genericDao.removeAll(entities);
	}

	public PK save(T entity) {
		return genericDao.save(entity);
	}


	@Override
	public List<T> findByNamedQuery(String queryName,
			Map<String, Object> queryParams) {
		return genericDao.findByNamedQuery(queryName, queryParams);
	}

	@Override
	public Page<T> findByPage(String hsql, int page, int size) {
		return genericDao.findByPage(hsql, page, size);
	}

	@Override
	public List<T> getAllDistinct() {
		return genericDao.getAllDistinct();
	}

	@Override
	public boolean exists(PK id) {
		return genericDao.exists(id);
	}

	@Override
	public void updateByNamedParametors(String hql,
			Map<String, Object> queryParams) {
		genericDao.updateByNamedParametors(hql, queryParams);

	}



	@Override
	public T getWithLock(PK id, LockMode lock) {
		return genericDao.getWithLock(id, lock);
	}

	@Override
	public T load(PK id) {
		return genericDao.load(id);
	}

	@Override
	public T loadWithLock(PK id, LockMode lock) {
		return genericDao.loadWithLock(id, lock);
	}

	@Override
	public List<T> loadAll() {
		return genericDao.loadAll();
	}

	@Override
	public void update(T entity) {
		genericDao.update(entity);
	}

	@Override
	public void updateWithLock(T entity, LockMode lock) {
		genericDao.updateWithLock(entity, lock);
	}

	@Override
	public void saveOrUpdate(T entity) {
		genericDao.saveOrUpdate(entity);
	}

	@Override
	public void saveOrUpdateAll(Collection<T> entities) {
		genericDao.saveOrUpdateAll(entities);
	}

	@Override
	public void delete(T entity) {
		genericDao.delete(entity);
	}

	@Override
	public void deleteWithLock(T entity, LockMode lock) {
		genericDao.deleteWithLock(entity, lock);
	}

	@Override
	public void deleteByKey(PK id) {
		genericDao.deleteByKey(id);
	}

	@Override
	public void deleteByKeyWithLock(PK id, LockMode lock) {

		genericDao.deleteByKeyWithLock(id, lock);

	}

	@Override
	public void deleteAll(Collection<T> entities) {

		genericDao.deleteAll(entities);
	}

	
	
	
	@Override
	public void deletes(List<T> entities, Integer cacheSize) {
		genericDao.deletes(entities, cacheSize);		
	}

	@Override
	public int deletes(String hql, List<PK> ids) {
		return genericDao.deletes(hql, ids);
	}

	@Override
	public int bulkUpdate(String queryString) {

		return genericDao.bulkUpdate(queryString);
	}

	@Override
	public int bulkUpdate(String queryString, Object[] values) {

		return genericDao.bulkUpdate(queryString, values);
	}

	@Override
	public List find(String queryString) {

		return genericDao.find(queryString);
	}

	@Override
	public List find(String queryString, Object[] values) {

		return genericDao.find(queryString, values);
	}

	@Override
	public List findByNamedQuery(String queryName) {

		return genericDao.findByNamedQuery(queryName);
	}

	@Override
	public List findByNamedQuery(String queryName, Object[] values) {

		return genericDao.findByNamedQuery(queryName, values);
	}

	@Override
	public List findByNamedQueryAndNamedParam(String queryName,
			String[] paramNames, Object[] values) {

		return genericDao.findByNamedQueryAndNamedParam(queryName, paramNames,
				values);
	}

	@Override
	public Iterator iterate(String queryString) {

		return genericDao.iterate(queryString);
	}

	@Override
	public Iterator iterate(String queryString, Object[] values) {

		return genericDao.iterate(queryString, values);
	}

	@Override
	public void closeIterator(Iterator<T> it) {

		genericDao.closeIterator(it);
	}

	@Override
	public DetachedCriteria createDetachedCriteria() {

		return genericDao.createDetachedCriteria();
	}

	@Override
	public Criteria createCriteria() {

		return genericDao.createCriteria();
	}

	@Override
	public List findByCriteria(DetachedCriteria criteria) {

		return genericDao.findByCriteria(criteria);
	}

	@Override
	public List findByCriteria(DetachedCriteria criteria, int firstResult,
			int maxResults) {

		return genericDao.findByCriteria(criteria, firstResult, maxResults);
	}

	@Override
	public List<T> findEqualByEntity(T entity, String[] propertyNames) {

		return genericDao.findEqualByEntity(entity, propertyNames);
	}

	@Override
	public List<T> findLikeByEntity(T entity, String[] propertyNames) {

		return genericDao.findLikeByEntity(entity, propertyNames);
	}

	@Override
	public Integer getRowCount(DetachedCriteria criteria) {

		return genericDao.getRowCount(criteria);
	}

	@Override
	public Object getStatValue(DetachedCriteria criteria, String propertyName,
			String StatName) {

		return genericDao.getStatValue(criteria, propertyName, StatName);
	}

	@Override
	public void lock(T entity, LockMode lockMode) {

		genericDao.lock(entity, lockMode);
	}

	@Override
	public void initialize(Object proxy) {

		genericDao.initialize(proxy);
	}

	@Override
	public void flush() {

		genericDao.flush();
	}

	@Override
	public int Update(String hql) {
		return this.genericDao.Update(hql);
	}

	@Override
	public int Update(String hql, List<? extends Object> params) {
		return this.genericDao.Update(hql, params);
	}

	@Override
	public int Update(String hql, List<? extends Object> params,
			Boolean splitParams) {
		return this.genericDao.Update(hql, params, splitParams);
	}

	@Override
	public void merge(Object entity) {
		this.genericDao.merge(entity);
	}

	@Override
	public void merges(List<T> entities) {
		this.genericDao.merges(entities);
	}

	@Override
	public void merges(List<T> entities, Integer cacheSize) {
		this.genericDao.merges(entities, cacheSize);
	}

	@Override
	public Page<T> findByPage(String listHql, List<? extends Object> params,
			Integer firstResult, Integer maxResults, Long totalCount) {
		return this.genericDao.findByPage(listHql, params, firstResult,
				maxResults, totalCount);
	}

	@Override
	public Page<T> findByPage(String listHql,
			Map<String, ? extends Object> namedParames, Integer firstResult,
			Integer maxResults, Long totalCount) {
		return this.genericDao.findByPage(listHql, namedParames, firstResult,
				maxResults, totalCount);
	}

	@Override
	public Page<T> findByPage(List<Criterion> criterions, List<Order> orders,
			Integer firstResult, Integer maxResults, Long totalCount) {
		return this.genericDao.findByPage(criterions, orders, firstResult,
				maxResults, totalCount);
	}

	@Override
	public Page<T> findByPage(Criteria criteria, Integer firstResult,
			Integer maxResults, Long totalCount) {
		return this.genericDao.findByPage(criteria, firstResult, maxResults,
				totalCount);
	}

	@Override
	public Criteria createCriteria(List<Criterion> criterions,
			List<Order> orders) {
		return this.genericDao.createCriteria(criterions, orders);
	}

	public GenericDao<T, PK> getGenericDao() {
		return genericDao;
	}

	public void setGenericDao(GenericDao<T, PK> genericDao) {
		this.genericDao = genericDao;
	}


	
}
