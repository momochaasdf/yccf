package com.deying.util.core.com.framework.hibernate3;

import static org.hibernate.EntityMode.POJO;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.criterion.Example.PropertySelector;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import com.deying.util.core.com.framework.common.tools.BasePage;
import com.deying.util.core.com.framework.common.tools.Constants;
import com.deying.util.core.com.framework.struts2.UserContext;
import com.deying.util.core.com.framework.struts2.UserContextImpl;

@Repository
public class GenericDaoImpl<T extends Serializable, PK extends Serializable> implements GenericDao<T, PK> {
	//通过Spring注入获取
	@Resource(name = "sessionFactory") private SessionFactory sessionFactory;
	@Resource(name = "sessionFactory") private SessionFactory sessionFactoryMJ;
	public Class<T> clazz = null;
	
	public UserContext user = null;
	
	@SuppressWarnings("unchecked")
	public GenericDaoImpl() {
		Type t = this.getClass().getGenericSuperclass();
		if (t instanceof ParameterizedType) {
			Type[] ts = ((ParameterizedType) t).getActualTypeArguments(); 
			this.clazz = (Class<T>) ts[0]; 
		}
		//用于记录操作数据的用户情况
		if (this.user == null) {
			try {
				this.user = (UserContext)ServletActionContext.getRequest().getSession(false).getAttribute(Constants.USER_KEY);
			} catch (Exception e) {
				this.user = new UserContextImpl("none","匿名用户");
			}
		} else {
			this.user = new UserContextImpl("none","匿名用户");
		}
	}
	//检索系--------------------------------------------------------------------开始
	/**
	 * 根据主键获取实体，没有检索到相应实体返回NULL
	 */
	@SuppressWarnings("unchecked")
	public T get(PK id) {
		Assert.notNull(id);
		return (T) this.getSession().get(this.getClazz(), id);
	}
	/**
	 * 根据主键获取实体并加锁，没有检索到相应实体返回NULL
	 */
	@SuppressWarnings("unchecked")
	public T getWithLock(PK id, LockMode lock) {
		Assert.notNull(id);
		return (T) this.getSession().get(this.getClazz(), id, lock);
	}
	/**
	 * 根据主键获取实体，没有检索到相应实体返回NULL
	 */
	@SuppressWarnings("unchecked")
	public T load(PK id) {
		Assert.notNull(id);
		return (T) this.getSession().load(this.getClazz(), id);
	}
	/**
	 * 根据主键获取实体并加锁，没有检索到相应实体返回NULL
	 */
	@SuppressWarnings("unchecked")
	public T loadWithLock(PK id, LockMode lock) {
		Assert.notNull(id);
		return (T) this.getSession().load(this.getClazz(), id, lock);
	}
	/**
	 * 检索全部实体
	 */
	@SuppressWarnings("unchecked")
	public List<T> listALL() {
		return this.getSession().createCriteria(this.getClazz()).list();
	}
	/**
	 * 按属性查找对象列表.
	 */
	@SuppressWarnings("unchecked")
	public List<T> findByProperty(String property, Object value) {
		Assert.hasText(property);
		Assert.notNull(value);
		return this.getSession().createCriteria(this.getClazz()).add(Restrictions.eq(property, value)).list();
	}
	/**
	 * 按属性查找唯一对象.
	 */
	@SuppressWarnings("unchecked")
	public T findUniqueByProperty(String property, Object value) {
		Assert.hasText(property);
		Assert.notNull(value);
		return (T)this.getSession().createCriteria(this.getClazz()).add(Restrictions.eq(property, value)).uniqueResult();
	}

	@Transactional(isolation=Isolation.DEFAULT,readOnly=true)
	public BasePage<T> listByPage(T example, int firstResult, int maxResult) {
		return this.listByPage(example, firstResult, maxResult, MatchMode.ANYWHERE, null, null);
	}
	@SuppressWarnings("unchecked")
	@Transactional(isolation=Isolation.DEFAULT,readOnly=true)
	public BasePage<T> listByPage(T example, int firstResult, int maxResult, MatchMode matchMode, Condition[] conds,String... exclude) {
		Criteria crit = this.getCritByExample(example, matchMode, conds, exclude);
		Criteria countCrit = this.getCritByExample(example, matchMode, conds, exclude);
		int totalCount = ((Number) countCrit.setProjection(Projections.rowCount()).uniqueResult()).intValue();
		BasePage<T> page = new BasePage<T>();
		if (totalCount <= 0) {
			return page;
		}
		page.setTotalCount(totalCount);
		page.setData(crit.setFirstResult(firstResult).setMaxResults(maxResult).list());
		page.setStart(firstResult);
		return page;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(isolation=Isolation.DEFAULT,readOnly=true)
	public List<T> listAll(T example, MatchMode matchMode, Condition[] conds, String[] exclude) {
		return this.getCritByExample(example, matchMode, conds, exclude).list();
	}
	@Transactional(isolation=Isolation.DEFAULT,readOnly=true)
    protected Criteria getCritByExample(T example, MatchMode matchMode, Condition[] conds, String[] exclude) {  
        Criteria crit = this.getSession().createCriteria(this.getClazz());  
        Example ex = Example.create(example);  
        ex.setPropertySelector(NOT_BLANK);
        if (matchMode != null) {  
        	ex.enableLike(matchMode);  
        	ex.ignoreCase();  
        }
        if (exclude != null) {
            for (String p : exclude) {  
            	ex.excludeProperty(p);  
            }
        }
        crit.add(ex);  
        // 处理排序和is null字段  
        if (conds != null) {  
            for (Condition o : conds) {  
                if (o instanceof OrderBy) {  
                    OrderBy order = (OrderBy) o;  
                    crit.addOrder(order.getOrder());  
                } else if (o instanceof Nullable) {  
                    Nullable isNull = (Nullable) o;  
                    if (isNull.isNull()) {  
                        crit.add(Restrictions.isNull(isNull.getField()));  
                    } else {  
                        crit.add(Restrictions.isNotNull(isNull.getField()));  
                    }  
                } else if (o instanceof Between){
                	Between b = (Between) o;
                	if (b.getLt() != null) {
                		crit.add(Restrictions.le(b.getField(), b.getLt()));
                	}
                	if (b.getGt() != null) {
                		crit.add(Restrictions.ge(b.getField(), b.getGt()));
                	}
                }else {  
                    // never
                }  
            }  
        }
        // 处理many to one查询  
        ClassMetadata cm = getCmd(example.getClass());  
        String[] fieldNames = cm.getPropertyNames();  
        for (String field : fieldNames) {  
            Object o = cm.getPropertyValue(example, field, POJO);  
            if (o == null) {
                continue;  
            }
            ClassMetadata subCm = getCmd(o.getClass());
            if (subCm == null) {
                continue;
            }
            Serializable id = subCm.getIdentifier(o, POJO);
            if (id != null && !"".equals(id)) {
                Serializable idName = subCm.getIdentifierPropertyName();
                crit.add(Restrictions.eq(field + "." + idName, id));
            } else {
                crit.createCriteria(field).add(Example.create(o).setPropertySelector(NOT_BLANK));
            }
        }
        return crit;
    }

	/*
	 * QBC检索
	 * @see com.framework.hibernate3.GenericDao#listByPage(org.hibernate.Criteria, int, int)
	 */
	public BasePage<T> listByPage(Criteria criteria, int firstResult, int maxResult) {
		return null;
	}

	@SuppressWarnings("unchecked")
	public List listByHql(String hql, Object... args) {
		Query query = this.getSession().createQuery(hql);
		int i = 0;
		if (args != null) {
			for (Object arg : args) {
				query.setParameter(i, arg);
				i = i+ 1;
			}
		}
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	public int executeSql(String sql, Object... args) {
		Query query = this.getSession().createSQLQuery(sql);
		int i = 0;
		if (args != null) {
			for (Object arg : args) {
				query.setParameter(i, arg);
				i = i+ 1;
			}
		}
		return query.executeUpdate();
	}
	
	@SuppressWarnings("unchecked")
	public List listBySQL(String sqlStr) {
		Query query = this.getSession().createSQLQuery(sqlStr);
		return query.list();
	}

	/**
	 * 根据Hql分页检索
	 * @param hql HQL
	 * @param firstResult 开始记录数
	 * @param maxResult 每页显示记录数
	 * @param args HQL参数
	 * @return
	 */
	public BasePage<Object> listByHQL4Page(String hql,int firstResult, int maxResult, Object... args) {
		BasePage<Object> page = new BasePage<Object>();
		String countHql = StringUtils.substring(hql, StringUtils.indexOf(hql.toLowerCase(), "from"), StringUtils.indexOf(hql.toLowerCase(), "order by"));
		Query query = this.getSession().createQuery(hql);
		int i = 1;
		if (args != null) {
			for (Object arg : args) {
				query.setParameter(i++, arg);
			}
		}
		return page;
	}

	//检索系--------------------------------------------------------------------结束
	
	//更新系--------------------------------------------------------------------开始
	/**
	 * 保存对象
	 * 
	 * @param entity 保存对象
	 */
	@Transactional(propagation=Propagation.SUPPORTS)
	public T save(T entity) {
		Assert.notNull(entity);
		try {
			Date date = new Date();
			if (PropertyUtils.isWriteable(entity, "crtUid")) {
				PropertyUtils.setProperty(entity, "crtUid", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "crtTime")) {
				PropertyUtils.setProperty(entity, "crtTime", date);
			}
			if (PropertyUtils.isWriteable(entity, "updUid")) {
				PropertyUtils.setProperty(entity, "updUid", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "updTime")) {
				PropertyUtils.setProperty(entity, "updTime", date);
			}
			if (PropertyUtils.isWriteable(entity, "version")) {
				PropertyUtils.setProperty(entity, "version", 1);
			}
			
			//add by wangzyz 20111108
			if (PropertyUtils.isWriteable(entity, "CRT_UID")) {
				PropertyUtils.setProperty(entity, "CRT_UID", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "CRT_TIME")) {
				PropertyUtils.setProperty(entity, "CRT_TIME", date);
			}
			if (PropertyUtils.isWriteable(entity, "UPD_UID")) {
				PropertyUtils.setProperty(entity, "UPD_UID", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "UPD_TIME")) {
				PropertyUtils.setProperty(entity, "UPD_TIME", date);
			}
			if (PropertyUtils.isWriteable(entity, "CRT_UAC")) {
				PropertyUtils.setProperty(entity, "CRT_UAC", this.getUser().getLoginId());
			}
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		this.getSession().save(entity);
		return entity;
	}
	/**
	 * 更新对象
	 * 
	 * @param entity 更新对象
	 */
	@Transactional(propagation=Propagation.SUPPORTS)
	public T saveOrUpdate(T entity) {
		Assert.notNull(entity);
		try {
			Date date = new Date();
			if (PropertyUtils.isWriteable(entity, "crtUid")) {
				PropertyUtils.setProperty(entity, "crtUid", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "crtTime")) {
				PropertyUtils.setProperty(entity, "crtTime", date);
			}
			//add by wangzyz 20111108
			if (PropertyUtils.isWriteable(entity, "CRT_UID")) {
				PropertyUtils.setProperty(entity, "CRT_UID", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "CRT_TIME")) {
				PropertyUtils.setProperty(entity, "CRT_TIME", date);
			}
			if (PropertyUtils.isWriteable(entity, "CRT_UAC")) {
				PropertyUtils.setProperty(entity, "CRT_UAC", this.getUser().getLoginId());
			}
			
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		this.getSession().saveOrUpdate(entity);
		return entity;
	}
	
	/**
	 * 更新对象
	 * 
	 * @param entity 更新对象
	 */
	@Transactional(propagation=Propagation.SUPPORTS)
	public T update(T entity) {
		Assert.notNull(entity);
		try {
			Date date = new Date();
			if (PropertyUtils.isWriteable(entity, "updUid")) {
				PropertyUtils.setProperty(entity, "updUid", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "updTime")) {
				PropertyUtils.setProperty(entity, "updTime", date);
			}
			//add by wangzyz 20111108
			
			if (PropertyUtils.isWriteable(entity, "UPD_UID")) {
				PropertyUtils.setProperty(entity, "UPD_UID", this.getUser().getUserId());
			}
			if (PropertyUtils.isWriteable(entity, "UPD_TIME")) {
				PropertyUtils.setProperty(entity, "UPD_TIME", date);
			}
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}
		try {
			this.getSession().update(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return entity;
	}
	/**
	 * 更新对象
	 * 
	 * @param entity 更新对象
	 */
	@Transactional(propagation=Propagation.SUPPORTS)
	public T merge(T entity) {
		Assert.notNull(entity);
		this.getSession().merge(entity);
		return entity;
	}
	/**
	 * 删除
	 * @param entity
	 */
	public void delete(Object entity) {
		Assert.notNull(entity);
		this.getSession().delete(entity);
	}

	/**
	 * 删除指定ID的数据
	 * @param id
	 * @return
	 */
	public T deleteById(PK id) {
		Assert.notNull(id);
		T entity = this.load(id);
		this.getSession().delete(entity);
		return entity;
	}
	//更新系--------------------------------------------------------------------结束
	
	
	/**
	 * 根据Criterion条件创建Criteria,后续可进行更多处理,辅助函数.
	 */
	protected Criteria createCriteria(Criterion... criterions) {
		Criteria criteria = getSession().createCriteria(this.getClazz());
		for (Criterion c : criterions) {
			criteria.add(c);
		}
		return criteria;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/**
	 * 获取Session
	 */
	public Session getSession() {
		if (Constants.DB_MJ.equals(DataSourceHandler.getDataSourceType())) {
			Session session = this.sessionFactoryMJ.getCurrentSession();
			if (session == null) {
				session = this.sessionFactoryMJ.openSession();
			}
			return session; 
		} else {
			Session session = this.sessionFactory.getCurrentSession();
			if (session == null) {
				session = this.sessionFactory.openSession();
			}
			return session; 
		}
	}
	public UserContext getUser() {
		try {
			this.user = (UserContext)ServletActionContext.getRequest().getSession(false).getAttribute(Constants.USER_KEY);
		} catch (Exception e) {
			this.user = new UserContextImpl("none","匿名用户");
		}
		if (this.user == null) {
			this.user = new UserContextImpl("none","匿名用户");
		}
		return user;
	}
	public void setUser(UserContext user) {
		this.user = user;
	}
	
	public Class<T> getClazz() {
		return clazz;
	}
	public void setClazz(Class<T> clazz) {
		this.clazz = clazz;
	}
	@SuppressWarnings("unchecked")
	protected ClassMetadata getCmd(Class clazz) {
		if (Constants.DB_MJ.equals(DataSourceHandler.getDataSourceType())) {
			return (ClassMetadata) getSessionFactoryMJ().getClassMetadata(clazz);  
		} else {
			return (ClassMetadata) getSessionFactory().getClassMetadata(clazz);  
		}
    }  
	public static final NotBlankPropertySelector NOT_BLANK = new NotBlankPropertySelector();

	static final class NotBlankPropertySelector implements PropertySelector {
		private static final long serialVersionUID = 1L;
		public boolean include(Object object, String property,
				org.hibernate.type.Type type) {
			return object != null
			&& !(object instanceof String && StringUtils
					.isBlank((String) object));
		}
	}

	public SessionFactory getSessionFactoryMJ() {
		return sessionFactoryMJ;
	}
	public void setSessionFactoryMJ(SessionFactory sessionFactoryMJ) {
		this.sessionFactoryMJ = sessionFactoryMJ;
	}

}
