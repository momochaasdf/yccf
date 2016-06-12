package com.deying.util.annotation;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import org.hibernate.criterion.Order;

import com.deying.util.datawrapper.CriteriaWrapper;
import com.deying.util.enums.PersistentEnum;
import com.deying.util.page.DataPage;
import com.deying.util.sql.SqlGrammar;

/**
 * @author wangxj
 * 
 */
public interface AnnIService {
	
	/**
	 * @param entityName
	 * @param entity
	 */
	<T> Serializable save(String entityName, T entity) throws Exception;
	
	<T> void persist(String entityName, T entity)  throws Exception;

	long count(Map<String,Object> params, Class<?> clazz) throws Exception;
	
	/**
	 * @param criteriaWrapper example: CriteriaWrapper.newInstance().eq(name,val);
	 * 
	 */
	long count(CriteriaWrapper criteriaWrapper, Class<?> clazz) throws Exception;
	
	<T ,V extends PersistentEnum<?>> int delete(Serializable id, Class<T> clazz, V... state) throws Exception;
	
	<T ,V extends PersistentEnum<?>> int delete(Collection<? extends Serializable> ids, Class<T> clazz, V... state) throws Exception;
	
	<T> void delete(T entity) throws Exception;
	
	<T> int delete(SqlGrammar sqlGrammar, Class<T> clazz) throws Exception;
	
	<T> void truncate(Class<T> clazz) throws Exception;
	
	boolean exists(Serializable id, Class<?> clazz) throws Exception;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @throws Exception
	 */
	<T> List<T> find(Map<String,Object> params, Class<T> clazz, Order... orders) throws Exception;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param eagerProperties 需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	<T> List<T> find(Map<String, Object> params, Class<T> clazz, String[] eagerProperties, Order... orders) throws Exception;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param transforme		需要转换的类型
	 * @param eagerProperties 需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	<T,V> List<V> find(Map<String, Object> params, Class<T> clazz, Class<V> transforme, String[] eagerProperties, Order... orders) throws Exception;
	
	/**
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	<T> List<T> find(CriteriaWrapper criteriaWrapper, Class<T> clazz, String... eagerProperties) throws Exception;
	
	/**
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param transforme		需要转换的类型
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 */
	<T,V> List<V> find(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, String... eagerProperties) throws Exception;
	
	/**
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	<T> DataPage<T> find(CriteriaWrapper criteriaWrapper, Class<T> clazz, Integer pageNo, Integer pageSize, 
			String... eagerProperties) throws Exception;
	
	/**
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param transforme		需要转换的类型
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 */
	<T,V> DataPage<V> find(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, Integer pageNo, Integer pageSize, 
			String... eagerProperties) throws Exception;
	
	/**
	 * 只返回需要的分页数据，不需要返回总数
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 * @throws Exception
	 */
	<T> List<T> findList(CriteriaWrapper criteriaWrapper, Class<T> clazz, Integer pageNo, Integer pageSize, 
			String... eagerProperties) throws Exception;
	
	/**
	 * 只返回需要的分页数据，不需要返回总数
	 * @param criteriaWrapper	example: CriteriaWrapper.newInstance().eq(name,val);
	 * @param transforme		需要转换的类型
	 * @param eagerProperties	需要立即抓取的关联属性数据
	 */
	<T,V> List<V> findList(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, Integer pageNo, Integer pageSize, 
			String... eagerProperties) throws Exception;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param pageNo	第几页
	 * @param pageSize	一页显示的个数
	 */
	<T> DataPage<T> find(Map<String, Object> params, Class<T> clazz, Integer pageNo, Integer pageSize, Order... orders) throws Exception;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @param pageNo	第几页
	 * @param pageSize	一页显示的个数
	 */
	<T> DataPage<T> find(Map<String, Object> params, Class<T> clazz, String[] eagerProperties, Integer pageNo, Integer pageSize, Order... orders) throws Exception;
	
	<T> List<T> findByExample(T example)  throws Exception;
	
	<T, V extends PersistentEnum<?>> List<T> get(Collection<? extends Serializable> ids, Class<T> clazz, V... state) throws Exception;

	<T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz, String... eagerProperties) throws Exception;
	
	<T> T get(CriteriaWrapper criteriaWrapper, Class<T> clazz, LockMode lockMode) throws Exception;
	
	<T,V> V get(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, String... eagerProperties) throws Exception;
	
	<T,V> V get(CriteriaWrapper criteriaWrapper, Class<T> clazz, Class<V> transforme, LockMode lockMode) throws Exception;
	
	<T, V extends PersistentEnum<?>> T get(Serializable id, Class<T> clazz, V... state) throws Exception;
	
	<T> T get(Serializable id, Class<T> clazz, LockMode lockMode) throws Exception;
	
	/**
	 * 非延迟加载
	 * @param <T>
	 * @param id
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	<T> T getEager(Serializable id, Class<T> clazz, String... eagerProperties) throws Exception;
	
	/**
	 * 非延迟加载
	 * @param <T>
	 * @param ids
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	<T> List<T> getEager(Collection<? extends Serializable> ids, Class<T> clazz, String... eagerProperties) throws Exception;
	
	<T> List<T> getAll(Class<T> clazz, Order... orders) throws Exception;
	
	<T> List<T> getAll(Comparator<T> comparator, Class<T> clazz, Order... orders) throws Exception;
	
	/**
	 * 修改首选使用该方法
	 * @param <T>
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	<T> int update(SqlGrammar sqlGrammar, Class<T> clazz) throws Exception;
	
	/**
	 * 修改首选使用update(SqlGrammar Sql, Serializable id, Class<T> clazz)方法
	 * @param <T>
	 * @param params
	 * @param id
	 * @param clazz
	 * @return
	 * @throws Exception
	 */
	<T> int update(Map<String, Object> params, Serializable id, Class<T> clazz) throws Exception;
	
	/**
	 * @param entityName
	 * @param entity
	 * @throws Exception
	 */
	<T> void update(String entityName, T entity) throws Exception;
	
	/**
	 * @param ids
	 * @param state
	 * @param clazz
	 * @throws Exception
	 */
	<T ,V extends PersistentEnum<?>> void updateState(Collection<? extends Serializable> ids, V state, Class<T> clazz) throws Exception;
	
	/**
	 * @param ids
	 * @param state
	 * @param clazz
	 * @throws Exception
	 */
	<A extends Serializable,T ,V extends PersistentEnum<?>> int updateState(A[] ids, V state, Class<T> clazz) throws Exception;
	
	/**
	 * @param id
	 * @param state
	 * @param clazz
	 * @throws Exception
	 */
	<T ,V extends PersistentEnum<?>> int updateState(Serializable id, V state, Class<T> clazz) throws Exception;
	
	/**
	 * 此方法作为更新ManyToMany的中间表使用，ManyToMany的属性作为properties参数传入
	 * @param <T>
	 * @param clazz
	 * @param ids
	 * @param properties
	 * @throws Exception
	 */
	<T> void updateRelated(Class<T> clazz, Collection<Serializable> ids, Map<String,Object> properties) throws Exception;

	/**
	 * 此方法作为更新ManyToMany的中间表使用，ManyToMany的属性作为properties参数传入
	 * @param <T>
	 * @param clazz
	 * @param id
	 * @param properties
	 * @throws Exception
	 */
	<T> void updateRelated(Class<T> clazz, Serializable id, Map<String,Object> properties) throws Exception;
	

	/**
	 * 
	 * 获取用户ID
	 * @param token
	 * @return
	 * @throws Exception
	 * @author wangchangchun
	 * @create 2015-9-14 下午6:32:58
	 */
//	public FUser getMobileUser(String token) throws Exception;

		
}
