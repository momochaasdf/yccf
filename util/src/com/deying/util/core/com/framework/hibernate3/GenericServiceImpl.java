package com.deying.util.core.com.framework.hibernate3;

import java.io.Serializable;
import java.util.List;

import org.hibernate.LockMode;
import org.hibernate.criterion.MatchMode;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deying.util.core.com.framework.common.tools.BasePage;

@Transactional
@Service
public class GenericServiceImpl<T extends Serializable, PK extends Serializable> implements GenericServer<T, PK>{

	private GenericDao<T, PK> dao;

	public GenericServiceImpl() {
	}

	public void delete(Object entity) {
		try {
			this.dao.delete(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public T deleteById(PK id) {
		return this.dao.deleteById(id);
	}

	public List<T> findByProperty(String property, Object value) {
		return this.dao.findByProperty(property, value);
	}

	public T findUniqueByProperty(String property, Object value) {
		return this.dao.findUniqueByProperty(property, value);
	}

	public T get(PK id) {
		return this.dao.get(id);
	}

	public T getWithLock(PK id, LockMode lock) {
		return this.dao.getWithLock(id, lock);
	}

	public List<T> listALL() {
		return this.dao.listALL();
	}
	
	public List<T> listAll(T example, MatchMode matchMode, Condition[] conds,
			String[] exclude) {
		return this.dao.listAll(example, matchMode, conds, exclude);
	}

	public BasePage<T> listByPage(T example, int firstResult, int maxResult) {
		return this.dao.listByPage(example, firstResult, maxResult);
	}

	public BasePage<T> listByPage(T example, int firstResult, int maxResult,
			MatchMode matchMode, Condition[] conds, String... exclude) {
		return this.dao.listByPage(example, firstResult, maxResult, matchMode, conds, exclude);
	}
	@SuppressWarnings("unchecked")
	public List listByHql(String hql, Object... args) {
		return this.dao.listByHql(hql, args);
	}
	
	@SuppressWarnings("unchecked")
	public List listBySQL(String sqlStr) {
		return this.dao.listBySQL(sqlStr);
	}
	public T load(PK id) {
		return this.dao.load(id);
	}

	public T loadWithLock(PK id, LockMode lock) {
		return this.dao.loadWithLock(id, lock);
	}

	public T merge(T entity) {
		return this.dao.merge(entity);
	}

	public T save(T entity) {
		try {
			return this.dao.save(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public T saveOrUpdate(T entity) {
		return this.dao.saveOrUpdate(entity);
	}

	public T update(T entity) {
		return this.dao.update(entity);
	}
	
	public int executeSql(String sql,Object... args){
		return this.dao.executeSql(sql, args);
	}

	public GenericDao<T, PK> getDao() {
		return dao;
	}

	public void setDao(GenericDao<T, PK> dao) {
		this.dao = dao;
	}

}
