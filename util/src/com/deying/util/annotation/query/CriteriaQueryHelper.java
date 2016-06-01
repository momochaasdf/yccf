package com.deying.util.annotation.query;

import java.util.Iterator;
import java.util.Map;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Property;

import com.deying.util.datawrapper.CriteriaWrapper;

/**
 * @author wangxj
 * Apr 6, 2013
 * 
 */
public class CriteriaQueryHelper {
	
	public static final int NEED_PROJECTOIN = 0x0001;
	public static final int NEED_CRITERION  = 0x0010;
	public static final int NEED_ORDER      = 0x0100;
	public static final int NEED_ALIASE     = 0x1000;
	
	/**
	 * @param params	参数key为属性名 value为属性等于的值，value可以传{"is null","is not null"}字符窜
	 * @return
	 */
	public  static Criteria montageCriteria(Criteria c, Map<String, Object> params, String[] eagerProperties, Order... orders) {
		if(params != null) {
			Iterator<String> i =  params.keySet().iterator();
			while(i.hasNext()){
				String param = i.next();
				String strVal = params.get(param).toString().trim().toLowerCase();
				if(("is null").equals(strVal)) 
					c.add(Property.forName(param).isNull());
				else if(("is not null").equals(strVal)) 
					c.add(Property.forName(param).isNotNull());
				else 
					c.add(Property.forName(param).eq(params.get(param)));
			}
		}
		if(orders != null && orders.length > 0){
			for(Order o : orders) {
				c.addOrder(o);
			}
		}
		if(eagerProperties != null && eagerProperties.length > 0) {
			for(String eager : eagerProperties) 
				c.setFetchMode(eager, FetchMode.JOIN);
			c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		}
		return c;
	}
	
	public  static Criteria montageCriteria(Criteria c, CriteriaWrapper criteriaWrapper, String... eagerProperties) {
		return montageCriteria(c, criteriaWrapper, null, eagerProperties);
	}
	
	/**
	 * @param needType  为CriteriaWrapper对象需要封装到Criteria中的类型,needType 为null时所有类型都需要封装
	 * @return
	 */
	public  static Criteria montageCriteria(Criteria c, CriteriaWrapper criteriaWrapper, Integer needType, String... eagerProperties) {
		if(criteriaWrapper != null) {
			if(criteriaWrapper.getAliases() != null && criteriaWrapper.getAliases().size() > 0 &&
					(needType == null || (needType & NEED_ALIASE) == NEED_ALIASE)) {
				Iterator<Map.Entry<String, String>> i = criteriaWrapper.getAliases().entrySet().iterator();
				while(i.hasNext()) {
					Map.Entry<String, String> e = i.next();
					c.createAlias(e.getKey(), e.getValue(), Criteria.LEFT_JOIN);
				}
			}
			
			if(criteriaWrapper.getProjectionList() != null && 
					(needType == null || (needType & NEED_PROJECTOIN) == NEED_PROJECTOIN))
				c.setProjection(criteriaWrapper.getProjectionList());
			
			if(criteriaWrapper.getCriterions() != null && criteriaWrapper.getCriterions().size() > 0 &&
					(needType == null || (needType & NEED_CRITERION) == NEED_CRITERION)) {
				Iterator<Criterion> i = criteriaWrapper.getCriterions().iterator();
				while(i.hasNext())
					c.add(i.next());
			}
			
			if(criteriaWrapper.getOrders() != null && criteriaWrapper.getOrders().size() > 0 &&
					(needType == null || (needType & NEED_ORDER) == NEED_ORDER)) {
				Iterator<Order> i = criteriaWrapper.getOrders().iterator();
				while(i.hasNext())
					c.addOrder(i.next());
			}
			
			if(eagerProperties != null && eagerProperties.length > 0) {
				for(String eager : eagerProperties) 
					c.setFetchMode(eager, FetchMode.JOIN);
				c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
			}
		}
		return c;
	}

}
