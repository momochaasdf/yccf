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

public interface GenericDao<T, PK extends Serializable> {

	/**
	 * 存储实体到数据库
	 * 
	 * @param entity :
	 *            实体
	 * @return 保存后得到的id
	 */
	public PK save(T entity);

	/**
	 * 在查找所有记录的时候,使用提供查询语句,查询匹配的记录,否则将使用默认的查询语句查询数据的所有记录.
	 * 
	 * @param hql :
	 *            自定义的HQL语句
	 */

	public void setHql(String hql);

	/**
	 * @return 自定义的HQL语句
	 */
	public String getHql();

	/**
	 * 删除实体
	 * 
	 * @param entity :
	 *            实体
	 */
	public void remove(T entity);

	/**
	 * 删除实体集合
	 * 
	 * @param entities :
	 *            实体
	 */
	public void removeAll(Collection<T> entities);

	/**
	 * 修改实体
	 * 
	 * @param entity :
	 *            实体
	 */
	public void modify(T entity);

	/**
	 * @param id
	 * @return 通过ID查找某个实体，返回该实体对象
	 */
	public T findById(PK id);

	/**
	 * 查找全部实体
	 * 
	 * @return 所有实体的列表
	 */
	public List<T> findAll();

	/**
	 * @param queryName
	 * @param queryParams
	 * @return 返回查询到的实体集合
	 */
	List<T> findByNamedQuery(String queryName, Map<String, Object> queryParams);

	/**
	 * @param id
	 * @return 布尔值
	 */

	boolean exists(PK id);

	/**
	 * @return 返回不重复的实体集
	 */
	List<T> getAllDistinct();

	/**
	 * 计算匹配查询条件的记录总数,如果没有注入或者设置hql语句,将使用默认的查询语句返回数据库中所有记录
	 * 
	 * @return 记录总数
	 */

	public int getTotalRows();

	/**
	 * 根据每页记录的数量,计算出总的分页数
	 * 
	 * @param size
	 *            每页记录的数量
	 * @return 分页总数
	 */
	public int getPageSize(int size);

	/**
	 * 根据给定的页码进行分页查找,这是纯Hibernate分页.
	 * 
	 * @param page :
	 *            要查询的页码 查询的hql语句
	 * @param size :
	 *            每页记录数 分页信息,参见PageInfo
	 * @return 匹配的实体列表
	 */
	public Page<T> findByPage(final int page, final int size);
	/**
	 * 根据HQL返回分页后的数据
	 * @param hsql 查询语句
	 * @param page 页数
	 * @param size 页大小
	 * @return 分页后的Page对象
	 */
	public Page<T> findByPage(final String hsql, final int page, final int size);
	/**
	 * 更新操作
	 * @param hql HQL语句
	 * @param queryParams HQL中的参数
	 */
	public void updateByNamedParametors(String hql,
			Map<String, Object> queryParams);

	/****
	 * 根据主键获取实体并加锁。如果没有相应的实体，返回 null
	 * @param id 实体主键
	 * @param lock 锁模式
	 * @return 返回实体
	 */
	public T getWithLock(PK id, LockMode lock);

	/*****
	 * 根据主键获取实体。如果没有相应的实体，抛出异常。
	 * @param id 实体主键
	 * @return 返回实体
	 */
	public T load(PK id);

	/****
	 * 根据主键获取实体并加锁。如果没有相应的实体，抛出异常。
	 * @param id  实体主键
	 * @param lock  锁模式
	 * @return 返回实体
	 */
	public T loadWithLock(PK id, LockMode lock);

	/****
	 * @return 获取实体。
	 */
	public List<T> loadAll();

	/****
	 * @param entity 更新实体
	 */
	public void update(T entity);

	/*****
	 * 更新实体并加锁
	 * @param entity  实体对象
	 * @param lock  锁模式
	 */
	public void updateWithLock(T entity, LockMode lock);

	/****
	 * 增加或更新实体
	 * @param entity  实体对象
	 */
	public void saveOrUpdate(T entity);

	/****
	 * 增加或更新集合中的全部实体
	 * @param entities 实体集合
	 */
	public void saveOrUpdateAll(Collection<T> entities);

	/****
	 * 删除指定的实体
	 * @param entity 实体对象
	 */
	public void delete(T entity);

	/****
	 * 加锁并删除指定的实体
	 * @param entity  实体对象
	 * @param lock 锁模式
	 */
	public void deleteWithLock(T entity, LockMode lock);

	/****
	 * 根据主键删除指定实体
	 * @param id 实体主键
	 */
	public void deleteByKey(PK id);

	/****
	 * 根据主键加锁并删除指定的实体
	 * @param id 实体主键
	 * @param lock  锁模式
	 */
	public void deleteByKeyWithLock(PK id, LockMode lock);

	/*****
	 * 批量删除
	 * @param entities 实体集合
	 */
	public void deleteAll(Collection<T> entities);

	/**
	 * * hql批量删除实体 *
	 * 
	 * @param hql *
	 * @param ids *
	 * @return
	 */
	public int deletes(final String hql, List<PK> ids);

	/**
	 * * 批量删除实体，不推荐 *
	 * @param <X> *
	 * @param entities *
	 * @param cacheSize
	 */
	public void deletes(final List<T> entities, final Integer cacheSize);


	/***
	 * 批量更新数据
	 * @param queryString 没有参数的HQL语句
	 * @return 返回影响的行数
	 */
	public int bulkUpdate(String queryString);


	/****
	 * 带参数批量更新数据
	 * @param queryString HQL语句
	 * @param values 参数值
	 * @return
	 */
	public int bulkUpdate(String queryString, Object[] values);

	/****
	 * 根据HQL查询。不带参数
	 * @param queryString HQL
	 * @return 返回结果集
	 */
	public List find(String queryString);

	/****
	 * 使用带参数的HSQL语句检索数据
	 * @param queryString  HQL
	 * @param values 参数值
	 * @return 返回结果集
	 */
	public List find(String queryString, Object[] values);

	/****
	 * 使用命名的HSQL语句检索数据
	 * @param queryName 在配置文件中配置的HQL，配置名称
	 * @return 返回结果集
	 */
	public List findByNamedQuery(String queryName);

	/****
	 * 使用带参数的命名HSQL语句检索数据
	 * @param queryName 在配置文件中配置的HQL，配置名称
	 * @param values 参数值
	 * @return 返回结果集
	 */
	public List findByNamedQuery(String queryName, Object[] values);

	/***
	 * 使用带命名参数的命名HQL语句检索数据
	 * @param queryName 在配置文件中配置的HQL，配置名称
	 * @param paramNames 参数名称
	 * @param values 参数值
	 * @return 返回结果集
	 */
	public List findByNamedQueryAndNamedParam(String queryName,
			String[] paramNames, Object[] values);

	/***
	 * 使用HSQL语句检索数据，
	 * @param queryString   HQL语句
	 * @return 返回 Iterator
	 */
	public Iterator iterate(String queryString);

	/***
	 *  使用带参数HQL语句检索数据，
	 * @param queryString HQL语句
	 * @param values 参数值
	 * @return 返回 Iterator
	 */
	public Iterator iterate(String queryString, Object[] values);

	/***
	 * 关闭检索返回的 Iterator
	 * @param it  返回的 Iterator
	 */
	public void closeIterator(Iterator<T> it);

	/****
	 * 创建与会话无关的检索标准对象
	 * @return  DetachedCriteria
	 */
	public DetachedCriteria createDetachedCriteria();

	/****
	 * 创建与会话绑定的检索标准对象
	 * @return  Criteria
	 */
	public Criteria createCriteria();

	/****
	 * 使用指定的检索标准检索数据
	 * @param criteria  DetachedCriteria对象
	 * @return 返回结果集
	 */
	public List findByCriteria(DetachedCriteria criteria);

	/****
	 * 使用指定的检索标准检索数据，返回部分记录
	 * @param criteria  DetachedCriteria对象
	 * @param firstResult 第一行Index
	 * @param maxResults 多少条
	 * @return 返回分页结果集
	 */
	public List findByCriteria(DetachedCriteria criteria, int firstResult,
			int maxResults);

	/****
	 * 使用指定的实体及属性检索（满足除主键外属性＝实体值）数据
	 * @param entity 实体对象
	 * @param propertyNames 要排除的属性
	 * @return 返回结果集
	 */
	public List<T> findEqualByEntity(T entity, String[] propertyNames);

	/****
	 * 使用指定的实体及属性(非主键)检索（满足属性 like 串实体值）数据
	 * @param entity 实体对象
	 * @param propertyNames 要模糊查询的属性
	 * @return 返回结果集
	 */
	public List<T> findLikeByEntity(T entity, String[] propertyNames);

	/****
	 * 使用指定的检索标准检索数据，返回指定范围的记录
	 * @param criteria DetachedCriteria对象
	 * @return 多少条记录
	 */
	public Integer getRowCount(DetachedCriteria criteria);

	/****
	 * 使用指定的检索标准检索数据，返回指定统计值
	 * @param criteria   DetachedCriteria对象
	 * @param propertyName 属性名称
	 * @param StatName  统计函数(max,min,avg,sum) 之一
	 * @return 返回 Object 对象
	 */
	public Object getStatValue(DetachedCriteria criteria, String propertyName,
			String StatName);

	/****
	 * 加锁指定的实体
	 * @param entity 实体对象
	 * @param lockMode 锁模式
	 */
	public void lock(T entity, LockMode lockMode);

	/****
	 * 强制初始化指定的实体
	 * @param proxy 实体对象
	 */
	public void initialize(Object proxy);

	/****
	 *  强制立即更新缓冲数据到数据库（否则仅在事务提交时才更新）
	 */
	public void flush();

	/**
	 * hql更新
	 * @param hql语句
	 * @return 影响的行数
	 */
	public int Update(final String hql);

	/**
	 * 有条件参数的hql更新
	 * @param hql  hql语句
	 * @param params 参数值
	 * @return  影响的行数
	 */
	public int Update(final String hql, List<? extends Object> params);

	/**
	 * 有条件参数的hql更新
	 * @param hql  hql语句
	 * @param params 参数值
	 * @param splitParams参数是否拆分
	 *            ，传入null或ture表示拆分参数，false参数不拆分，适合只有一个参数的情况
	 * @return 
	 */
	public int Update(final String hql, List<? extends Object> params,
			Boolean splitParams);

	/**
	 * 保存的实体对象
	 * @param entity 实体对象
	 */
	public void merge(final Object entity);

	/**
	 * 批量保存实体,缓存大小默认是20
	 * @param <T> 实体类型
	 * @param entities  实体集合
	 */
	public void merges(final List<T> entities);

	/**
	 * 批量保存实体
	 * @param <T> 实体类型
	 * @param entities 实体集合
	 * @param cacheSize缓存大小
	 *            ，如果传入null或小于0，默认是20
	 */
	public void merges(final List<T> entities, final Integer cacheSize);

	/**
	 * Hibernate HQL查询分页,参数按索引号传递
	 * @param <T> 实体类型
	 * @param Hql hql语句
	 * @param params  参数值
	 * @param firstResult 第一条记录的位置
	 * @param maxResults  每页显示多少条记录
	 * @param itemsTotal 总共多少条记录
	 * @return 分页后的Page对象
	 */
	public Page<T> findByPage(final String Hql,
			final List<? extends Object> params, final Integer firstResult,
			final Integer maxResults, final Long totalCount);

	/**
	 * Hibernate HQL查询分页,参数按索key传递
	 * @param <T> 实体类型
	 * @param Hql hql语句
	 * @param params  参数值
	 * @param firstResult 第一条记录的位置
	 * @param maxResults  每页显示多少条记录
	 * @param itemsTotal 总共多少条记录
	 * @return 分页后的Page对象
	 * @return
	 */
	public Page<T> findByPage(final String Hql,
			final Map<String, ? extends Object> namedParames,
			final Integer pageNumber, final Integer pageSize,
			final Long totalCount);

	/**
	 * Hibernate面向对象的方法查询分页
	 * 
	 * @param <T>
	 * @param clazz
	 * @param criterions Criterion集合
	 * @param orders     Order集合
	 * @param firstResult 第一条记录的位置
	 * @param maxResults 每页显示多少条记录
	 * @param itemsTotal 总共多少条记录
	 * @return 分页后的Page对象
	 */
	public Page<T> findByPage(final List<Criterion> criterions,
			final List<Order> orders, final Integer firstResult,
			final Integer maxResults, final Long totalCount);

	/**
	 * Hibernate面向对象的方法查询分页
	 * @param <T> 类型参数
	 * @param criteria  Criteria对象
	 * @param firstResult  第一条记录的位置
	 * @param maxResults  每页显示多少条记录
	 * @param totalCount 总共多少条记录
	 * @return 分页后的Page对象
	 */
	public Page<T> findByPage(final Criteria criteria,
			final Integer pageNumber, final Integer pageSize,
			final Long totalCount);

	/***
	 * 根据 Criterion集合和Order集合返回 Criteria对象
	 * @param criterions  Criterion集合
	 * @param orders  Order集合
	 * @return  Criteria对象
	 */
	public Criteria createCriteria(final List<Criterion> criterions,
			final List<Order> orders);

}
