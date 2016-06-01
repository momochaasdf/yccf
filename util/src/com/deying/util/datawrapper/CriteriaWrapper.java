package com.deying.util.datawrapper;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.type.Type;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author wangxj
 * 
 */
public class CriteriaWrapper {
	
	private static final Logger LOG = LoggerFactory.getLogger(CriteriaWrapper.class);

	public static final String ROOT_ALIAS = "this";
	
	private List<Criterion> criterions;
	private List<Order> orders;
	private ProjectionList projectionList;
	private Map<String,String> aliases;
	
	//like方法时LIKE_L 只有左边加"%",LIKE_R只有右边加,LIKE_A左右都加
	public static final short LIKE_A = 0;
	public static final short LIKE_L = 1;
	public static final short LIKE_R = 2;
	
	private CriteriaWrapper(){
		
	}
	
	public static CriteriaWrapper newInstance(){
		return new CriteriaWrapper();
	}
	
	/**
	 * notice： 此方法不会过滤参数里val为空的条件
	 * @param criterion 
	 * @return
	 */
	public CriteriaWrapper addCriterion(Criterion criterion) {
		if(criterion != null)  {
			judgeCriterion();
			criterions.add(criterion);
		}
		return this;
	}
	
	/**
	 * @param propertyName
	 * @param val val值为null或者“” 时不加这个条件
	 * @return
	 */
	public CriteriaWrapper like(String propertyName, String val) {
		if(StringUtils.isNotBlank(propertyName) && val != null && !"".equals(val)) {
			judgeCriterion();
			criterions.add(Restrictions.like(propertyName.trim(), "%"+val+"%"));
		}
		return this;
	}
	
	/**
	 * @param propertyName
	 * @param val val值为null或者“” 时不加这个条件
	 * @param type
	 * @return
	 */
	public CriteriaWrapper like(String propertyName, String val, short type) {
		if(StringUtils.isNotBlank(propertyName) && val != null && !"".equals(val)) {
			judgeCriterion();
			switch(type) {
				case LIKE_A: val = "%"+val+"%"; break;
				case LIKE_L: val = "%"+val; break;
				case LIKE_R: val = val+"%"; break;
				default: val = "%"+val+"%"; break;
			}
			criterions.add(Restrictions.like(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper eq(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.eq(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper ne(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.ne(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper gt(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.gt(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper lt(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.lt(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper le(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.le(propertyName.trim(), val));
		}
		return this;
	}
	
	public CriteriaWrapper ge(String propertyName, Object val) {
		if(StringUtils.isNotBlank(propertyName) && val != null) {
			judgeCriterion();
			criterions.add(Restrictions.ge(propertyName.trim(), val));
		}
		return this;
	}
	
	/**
	 * and(xxx = ? and yyy = ?)
	 * @param criteria
	 * @return
	 */
	public CriteriaWrapper and(CriteriaWrapper criteria) {
		if(criteria == null 
				|| criteria.getCriterions() == null
				|| criteria.getCriterions().size() == 0)
			return this;
		List<Criterion> cris = criteria.getCriterions();
		Conjunction c = Restrictions.conjunction();
		for(int i = 0; i < cris.size(); i++) 
			c.add(cris.get(i));
		judgeCriterion();
		criterions.add(c);
		return this;
	}
	
	/**
	 * 如果criteria里面只有一个条件语句，不需要用此方法，
	 * 即使用了也效果和 and(xxx = ?) 一样
	 * 多个条件的效果 如下：and(xxx = ? or yyy = ?)  
	 * @param criteria
	 * @return
	 */
	public CriteriaWrapper or(CriteriaWrapper criteria) {
		if(criteria == null 
				|| criteria.getCriterions() == null
				|| criteria.getCriterions().size() == 0)
			return this;
		List<Criterion> cris = criteria.getCriterions();
		Disjunction d = Restrictions.disjunction();
		for(int i = 0; i < cris.size(); i++) 
			d.add(cris.get(i));
		judgeCriterion();
		criterions.add(d);
		return this;
	}
	
	public CriteriaWrapper between(String propertyName, Object lo, Object hi) {
		if(StringUtils.isNotBlank(propertyName) && lo != null && hi != null) {
			judgeCriterion();
			criterions.add(Restrictions.between(propertyName.trim(), lo, hi));
		}
		return this;
	}
	
	public CriteriaWrapper in(String propertyName, Object[] values) {
		if(StringUtils.isNotBlank(propertyName) && values != null && values.length > 0) {
			judgeCriterion();
			criterions.add(Restrictions.in(propertyName.trim(), values));
		}
		return this;
	}
	
	public CriteriaWrapper in(String propertyName, Collection<?> values) {
		if(StringUtils.isNotBlank(propertyName) && values != null && values.size() > 0) {
			judgeCriterion();
			criterions.add(Restrictions.in(propertyName.trim(), values));
		}
		return this;
	}
	
	public CriteriaWrapper notIn(String propertyName, Object[] values) {
		if(StringUtils.isNotBlank(propertyName) && values != null && values.length > 0) {
			judgeCriterion();
			criterions.add(Restrictions.not(Restrictions.in(propertyName, values)));
		}
		return this;
	}
	
	public CriteriaWrapper notIn(String propertyName, Collection<?> values) {
		if(StringUtils.isNotBlank(propertyName) && values != null && values.size() > 0) {
			judgeCriterion();
			criterions.add(Restrictions.not(Restrictions.in(propertyName, values)));
		}
		return this;
	}
	
	public CriteriaWrapper isNull(String propertyName) {
		if(StringUtils.isNotBlank(propertyName)) {
			judgeCriterion();
			criterions.add(Restrictions.isNull(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper isNotNull(String propertyName) {
		if(StringUtils.isNotBlank(propertyName)) {
			judgeCriterion();
			criterions.add(Restrictions.isNotNull(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper sqlRestriction(String sql) {
		if(StringUtils.isNotBlank(sql)) {
			judgeCriterion();
			criterions.add(Restrictions.sqlRestriction(sql));
		}
		return this;
	}
	
	public CriteriaWrapper sqlRestriction(String sql, Object[] values, Type[] types) {
		if(StringUtils.isNotBlank(sql)) {
			judgeCriterion();
			criterions.add(Restrictions.sqlRestriction(sql, values, types));
		}
		return this;
	}
	
	public CriteriaWrapper sqlRestriction(String sql, Object value, Type type) {
		if(StringUtils.isNotBlank(sql)) {
			judgeCriterion();
			criterions.add(Restrictions.sqlRestriction(sql, value, type));
		}
		return this;
	}
	
	public CriteriaWrapper isEmpty(String propertyName) {
		if(StringUtils.isNotBlank(propertyName)) {
			judgeCriterion();
			criterions.add(Restrictions.isEmpty(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper isNotEmpty(String propertyName) {
		if(StringUtils.isNotBlank(propertyName)) {
			judgeCriterion();
			criterions.add(Restrictions.isNotEmpty(propertyName));
		}
		return this;
	}
	
	/**
	 * 当需要关联查询为one2many、many2many，且需要关联表的列作为条件时，
	 * 需要此方法向Criteria对象中创建关联表别名
	 * （即调用Criteria.createAlias(associationPath, alias)方法）
	 * @param associationPath
	 * @param alias
	 * @return
	 */
	public CriteriaWrapper addAliase(String associationPath,String alias) {
		if(StringUtils.isNotBlank(associationPath) && StringUtils.isNotBlank(alias)) {
			if(aliases == null)
				aliases = new HashMap<String,String>();
			aliases.put(associationPath.trim(), alias.trim());
		}
		return this;
	}
	
	public CriteriaWrapper addOrder(Order order) {
		if(order != null)  {
			if(orders == null)
				orders = new ArrayList<Order>(6);
			orders.add(order);
		}
		return this;
	}
	
	public CriteriaWrapper desc(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(orders == null)
				orders = new ArrayList<Order>(6);
			orders.add(Order.desc(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper asc(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(orders == null)
				orders = new ArrayList<Order>(6);
			orders.add(Order.asc(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper addProjection(Projection projection) {
		if(projection != null)  {
			judgeProjection();
			projectionList.add(projection);
		}
		return this;
	}
	
	/**
	 * 生成sql语句的投影列
	 * @param propertyName
	 * @return
	 */
	public CriteriaWrapper column(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.property(propertyName));
		}
		return this;
	}
	/**
	 * 生成sql语句的投影列
	 * @param propertyName
	 * @param alias		列的别名
	 * @return
	 */
	public CriteriaWrapper column(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			Projection p = null;
			if(StringUtils.isNotBlank(alias))
				p = Projections.property(propertyName).as(alias);
			else
				p = Projections.property(propertyName);
			projectionList.add(p);
		}
		return this;
	}
	
	public CriteriaWrapper max(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.max(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper max(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				max(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.max(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper min(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.min(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper min(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				min(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.min(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper distinct(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.distinct(Projections.property(propertyName)));
		}
		return this;
	}
	
	public CriteriaWrapper distinct(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				distinct(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.distinct(Projections.property(propertyName).as(alias)));
			}
		}
		return this;
	}
	
	public CriteriaWrapper count(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.count(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper count(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				count(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.count(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper sum(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.sum(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper sum(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				sum(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.sum(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper countDistinct(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.countDistinct(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper countDistinct(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				countDistinct(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.countDistinct(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper avg(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.avg(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper avg(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				avg(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.avg(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper rowCount() {
		judgeProjection();
		projectionList.add(Projections.rowCount());
		return this;
	}
	
	public CriteriaWrapper rowCount(String alias) {
		if(StringUtils.isBlank(alias)) {
			judgeProjection();
			projectionList.add(Projections.alias(Projections.rowCount(), alias));
		}else
			rowCount();
		return this;
	}
	
	public CriteriaWrapper groupProperty(String propertyName) {
		if(StringUtils.isNotBlank(propertyName))  {
			judgeProjection();
			projectionList.add(Projections.groupProperty(propertyName));
		}
		return this;
	}
	
	public CriteriaWrapper groupProperty(String propertyName, String alias) {
		if(StringUtils.isNotBlank(propertyName))  {
			if(StringUtils.isBlank(alias))
				groupProperty(propertyName);
			else {
				judgeProjection();
				projectionList.add(Projections.groupProperty(propertyName).as(alias));
			}
		}
		return this;
	}
	
	public CriteriaWrapper id() {
		judgeProjection();
		projectionList.add(Projections.id());
		return this;
	}
	
	public CriteriaWrapper id(String alias) {
		if(StringUtils.isBlank(alias)) {
			judgeProjection();
			projectionList.add(Projections.id().as(alias));
		}else
			id();
		return this;
	}
	
	public CriteriaWrapper sqlProjection(String sql, String[] columnAliases, Type[] types) {
		if(StringUtils.isBlank(sql)) {
			judgeProjection();
			projectionList.add(Projections.sqlProjection(sql, columnAliases, types));
		}
		return this;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public CriteriaWrapper clone() {
		try {
			CriteriaWrapper c = CriteriaWrapper.newInstance();
			HashMap<String, String> at = (HashMap<String, String>)this.getAliases();
			c.setAliases(at == null ? null : (HashMap<String, String>)at.clone());
			
			ArrayList<Criterion> ct = (ArrayList<Criterion>)this.getCriterions();
			c.setCriterions(ct == null ? null : (ArrayList<Criterion>)ct.clone());
			
			ArrayList<Order> ot = (ArrayList<Order>)this.getOrders();
			c.setOrders(ot == null ? null : (ArrayList<Order>)ot.clone());
			
			if(this.getProjectionList() != null) {
				ByteArrayOutputStream byteOut = new ByteArrayOutputStream();
				ObjectOutputStream out = new ObjectOutputStream(byteOut);
				out.writeObject(this.getProjectionList()); 
				ByteArrayInputStream byteIn = new ByteArrayInputStream(byteOut.toByteArray());
				ObjectInputStream in =new ObjectInputStream(byteIn);
				c.setProjectionList((ProjectionList)in.readObject());
			}
			return c;
		} catch (IOException e) {
			LOG.error("Clone CriteriaWrapper error.", e);
			return null;
		} catch (ClassNotFoundException e) {
			LOG.error("Clone CriteriaWrapper error.", e);
			return null;
		}
	}
	
	public List<Criterion> getCriterions() {
		return criterions;
	}

	public void setCriterions(List<Criterion> criterions) {
		this.criterions = criterions;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public ProjectionList getProjectionList() {
		return projectionList;
	}

	public void setProjectionList(ProjectionList projectionList) {
		this.projectionList = projectionList;
	}

	public Map<String, String> getAliases() {
		return aliases;
	}

	public void setAliases(Map<String, String> aliases) {
		this.aliases = aliases;
	}
	
	private void judgeCriterion(){
		if(criterions == null)
			criterions = new ArrayList<Criterion>(6);
	}
	
	private void judgeProjection(){
		if(projectionList == null)
			projectionList = Projections.projectionList();
	}
	
}
