package com.deying.util.annotation;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.criterion.Order;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.enums.PersistentEnum;
import com.deying.util.page.DataPage;
import com.deying.util.sql.SqlGrammar;

/**
 * 
 * @author wangxj
 */
@Service("commonService")
public class AnnServiceImpl implements AnnIService {
	
	protected final Logger LOG = LoggerFactory.getLogger(getClass());
	
	@Resource
	public AnnCommonDao annCommonDao;
	
	@Override
	public long count(Map<String, Object> params, Class<?> clazz)
			throws Exception {
		return annCommonDao.count(params, clazz);
	}

	@Override
	public long count(CriteriaWrapper criteriaWrapper, Class<?> clazz)
			throws Exception {
		return annCommonDao.count(criteriaWrapper, clazz);
	}

	@Override
	public <T, V extends PersistentEnum<?>> int delete(
			Collection<? extends Serializable> ids, Class<T> clazz, V... state)
			throws Exception {
		return annCommonDao.delete(ids, clazz, state);
	}

	@Override
	public <T, V extends PersistentEnum<?>> int delete(Serializable id,
			Class<T> clazz, V... state) throws Exception {
		return annCommonDao.delete(id, clazz, state);
	}

	@Override
	public <T> int delete(SqlGrammar sqlGrammar, Class<T> clazz) throws Exception {
		return annCommonDao.delete(sqlGrammar, clazz);
	}

	@Override
	public <T> void delete(T entity) throws Exception {
		annCommonDao.delete(entity);
	}

	@Override
	public <T> void truncate(Class<T> clazz) throws Exception {
		annCommonDao.truncate(clazz);
	}
	
	@Override
	public boolean exists(Serializable id, Class<?> clazz) throws Exception {
		return annCommonDao.exists(id, clazz);
	}
	
	@Override
	public <T> List<T> find(Map<String, Object> params, Class<T> clazz, Order... orders)
			throws Exception {
		return annCommonDao.find(params, clazz,null, null, orders);
	}

	@Override
	public <T> List<T> find(Map<String, Object> params, Class<T> clazz, String[] eagerProperties, Order... orders)
			throws Exception {
		return annCommonDao.find(params, clazz, null, eagerProperties, orders);
	}
	
	@Override
	public <T> DataPage<T> find(CriteriaWrapper criteriaWrapper,
			Class<T> clazz, Integer pageNo, Integer pageSize,
			String... eagerProperties) throws Exception {
		return annCommonDao.find(criteriaWrapper, clazz, null, pageNo, pageSize, eagerProperties);
	}

	@Override
	public <T, V> DataPage<V> find(CriteriaWrapper criteriaWrapper,
			Class<T> clazz, Class<V> transforme, Integer pageNo,
			Integer pageSize, String... eagerProperties) throws Exception {
		return annCommonDao.find(criteriaWrapper, clazz, transforme, pageNo, pageSize, eagerProperties);
	}

	@Override
	public <T, V> List<V> findList(CriteriaWrapper criteriaWrapper,
			Class<T> clazz, Class<V> transforme, Integer pageNo,
			Integer pageSize, String... eagerProperties) throws Exception {
		return annCommonDao.findList(criteriaWrapper, clazz, transforme, pageNo, pageSize, eagerProperties);
	}

	@Override
	public <T> List<T> findList(CriteriaWrapper criteriaWrapper,
			Class<T> clazz, Integer pageNo, Integer pageSize,
			String... eagerProperties) throws Exception {
		return annCommonDao.findList(criteriaWrapper, clazz, null, pageNo, pageSize, eagerProperties);
	}
	
	@Override
	public <T, V> List<V> find(Map<String, Object> params, Class<T> clazz,
			Class<V> transforme, String[] eagerProperties, Order... orders)
			throws Exception {
		return annCommonDao.find(params, clazz, transforme, eagerProperties, orders);
	}

	@Override
	public <T> List<T> find(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			String... eagerProperties) throws Exception {
		return annCommonDao.find(criteriaWrapper, clazz, null, eagerProperties);
	}

	@Override
	public <T, V> List<V> find(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			Class<V> transforme, String... eagerProperties) throws Exception {
		return annCommonDao.find(criteriaWrapper, clazz, transforme, eagerProperties);
	}

	@Override
	public <T> DataPage<T> find(Map<String, Object> params, Class<T> clazz,
			Integer pageNo, Integer pageSize, Order... orders) throws Exception {
		return annCommonDao.find(params, clazz, null, null, pageNo, pageSize, orders);
	}

	@Override
	public <T> DataPage<T> find(Map<String, Object> params, Class<T> clazz,
			String[] eagerProperties, Integer pageNo, Integer pageSize,
			Order... orders) throws Exception {
		return annCommonDao.find(params, clazz, null, eagerProperties, pageNo, pageSize, orders);
	}

	@Override
	public <T> List<T> findByExample(T example) throws Exception {
		return annCommonDao.findByExample(example);
	}

	@Override
	public <T, V extends PersistentEnum<?>> List<T> get(Collection<? extends Serializable> ids, Class<T> clazz, V... state) throws Exception {
		return annCommonDao.get(ids,clazz, state);
	}

	
	@Override
	public <T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			String... eagerProperties) throws Exception {
		return annCommonDao.get(criteriaWrapper, clazz, eagerProperties);
	}

	@Override
	public <T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			LockMode lockMode) throws Exception {
		return annCommonDao.get(criteriaWrapper, clazz, lockMode);
	}

	@Override
	public <T, V> V get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			Class<V> transforme, String... eagerProperties) throws Exception {
		return annCommonDao.get(criteriaWrapper, clazz, transforme, null,eagerProperties);
	}

	@Override
	public <T, V> V get(CriteriaWrapper criteriaWrapper, Class<T> clazz,
			Class<V> transforme, LockMode lockMode) throws Exception {
		return annCommonDao.get(criteriaWrapper, clazz, transforme, lockMode);
	}

	@Override
	public <T, V extends PersistentEnum<?>> T get(Serializable id, Class<T> clazz, V... state) throws Exception {
		return (T)annCommonDao.get(id,clazz, state);
	}

	@Override
	public <T> T get(Serializable id, Class<T> clazz, LockMode lockMode)
			throws Exception {
		return annCommonDao.get(id, clazz, lockMode);
	}

	@Override
	public <T> T getEager(Serializable id, Class<T> clazz,
			String... eagerProperties) throws Exception {
		return annCommonDao.getEager(id, clazz, eagerProperties);
	}

	@Override
	public <T> List<T> getEager(Collection<? extends Serializable> ids,
			Class<T> clazz, String... eagerProperties) throws Exception {
		return annCommonDao.getEager(ids, clazz, eagerProperties);
	}

	@Override
	public <T> List<T> getAll(Class<T> clazz, Order... orders) throws Exception {
		return annCommonDao.getAll(clazz, orders);
	}

	@Override
	public <T> List<T> getAll(Comparator<T> comparator,Class<T> clazz, Order... orders)throws Exception {
		return annCommonDao.getAll(comparator,clazz, orders);
	}

	@Override
	public <T> Serializable save(String entityName, T entity) throws Exception {
		return annCommonDao.save(entityName, entity);
	}

	@Override
	public <T> void persist(String entityName, T entity) throws Exception {
		annCommonDao.persist(entityName, entity);
	}

	@Override
	public <T> int update(SqlGrammar sqlGrammar, Class<T> clazz) throws Exception {
		return annCommonDao.update(sqlGrammar, clazz);
	}

	@Override
	public <T> int update(Map<String, Object> params, Serializable id, Class<T> clazz) throws Exception {
		return annCommonDao.update(params, id, clazz);
	}

	@Override
	public <T> void update(String entityName, T entity) throws Exception {
		annCommonDao.update(entityName, entity);
	}
	
	@Override
	public <T ,V extends PersistentEnum<?>> void updateState(Collection<? extends Serializable> ids,
			V state, Class<T> clazz) throws Exception {
		annCommonDao.updateState(ids, state, clazz);
	}

	@Override
	public <A extends Serializable, T, V extends PersistentEnum<?>> int updateState(
			A[] ids, V state, Class<T> clazz) throws Exception {
		return annCommonDao.updateState(ids, state, clazz);
	}
	
	@Override
	public <T ,V extends PersistentEnum<?>> int updateState(Serializable id, V state,
			Class<T> clazz) throws Exception {
		return annCommonDao.updateState(id, state, clazz);
	}
	
	@Override
	public <T> void updateRelated(Class<T> clazz, Collection<Serializable> ids, Map<String,Object> properties) throws Exception{
		if(ids == null) 
			throw new NullPointerException("the ids parameter of updateRelated method is null.");
		Iterator<Serializable> i = ids.iterator();
		while(i.hasNext()) {
			Serializable id = i.next();
			updateRelated(clazz, id, properties);
		}
	}
	
	@Override
	public <T> void updateRelated(Class<T> clazz, Serializable id, Map<String,Object> properties) throws Exception{
		if(clazz == null) 
			throw new NullPointerException("the clazz parameter of updateRelated method is null.");
		if(properties == null) 
			throw new NullPointerException("the properties parameter of updateRelated method is null.");
		if(clazz.getAnnotation(javax.persistence.Entity.class) == null)
			throw new RuntimeException("the clazz parameter of updateRelated is not an Entity class.");
		T t = annCommonDao.get(id, clazz);
		Iterator<String> sn = properties.keySet().iterator();
		while(sn.hasNext()) {
			String name = sn.next();
			Field f = clazz.getDeclaredField(name);
			f.setAccessible(true);
			f.set(t, properties.get(name));
		}
		annCommonDao.update(t);
	}

	public AnnCommonDao getAnnCommonDao() {
		return annCommonDao;
	}

	public void setAnnCommonDao(AnnCommonDao annCommonDao) {
		this.annCommonDao = annCommonDao;
	}


	/**
	 * 
	 * 获取用户ID
	 * @param token
	 * @return
	 * @throws Exception
	 * @author wangchangchun
	 * @return 
	 * @create 2015-9-14 下午6:32:58
	 */
//	@Override
//	public FUser getMobileUser(String token) throws Exception{
//
//        if (StringUtils.isNull(token) || token.length() != 36) {
//            //未登录
//        	return null;
//        } else {
//        	MobileLogin ml = this.get(CriteriaWrapper.newInstance()
//    				.eq("id", token)
//    				, MobileLogin.class);
//            if (ml == null) {
//                return null;
//            }
//
//            FUser fuser = this.get(CriteriaWrapper.newInstance()
//    				.eq("id", ml.getUserId())
//    				.ne("state", 9)
//    				, FUser.class);
//            if (fuser != null) {
//        		this.update(SqlGrammar.newInstance().update("lastAccessTime",
//        				new Date().getTime()).eq("id", token), MobileLogin.class);
//            }
//            return fuser;
//        }
//    }

	

	
	
}