package com.deying.util.sql;

import java.util.Collection;

import org.apache.commons.lang.StringUtils;

import com.deying.util.data.Symbol;

/**
 * @author wangxj
 * Apr 25, 2013
 * 
 */
public class SqlGrammar {

	private StringBuffer updateSql = new StringBuffer();
	private StringBuffer projection = new StringBuffer();
	private StringBuffer condition = new StringBuffer();
	
	//like方法时LIKE_L 只有左边加"%",LIKE_R只有右边加,LIKE_A左右都加
	public static final short LIKE_A = 0;
	public static final short LIKE_L = 1;
	public static final short LIKE_R = 2;
	
	private SqlGrammar(){
		
	}
	
	public static SqlGrammar newInstance(){
		return new SqlGrammar();
	}
	
	/**
	 * @param propertyName
	 * @param value    为null时则不添加该sql语句
	 * @return
	 */
	public SqlGrammar update(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null) 
			updateSqlAppend(SqlUtils.format(propertyName, value, Symbol.EQ));
		return this;
	}
	
	/**
	 * @param propertyName
	 * @param value		可以为null,为null时set propertyName=null
	 * @return
	 */
	public SqlGrammar updateNull(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName)) 
			updateSqlAppend(SqlUtils.format(propertyName, value, Symbol.EQ));
		return this;
	}
	
	/**
	 * value不经过任何处理直接传给生气了语句
	 * 用来设置null值，updateByRawVal("curDlvAddr", "null")
	 * @param propertyName
	 * @param value
	 * @return
	 */
	public SqlGrammar updateByRawVal(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			updateSqlAppend(SqlUtils.formatRawVal(propertyName, value, Symbol.EQ));
		return this;
	}
	
	public SqlGrammar projection(String projection, String alias){
		if(StringUtils.isNotBlank(projection) && StringUtils.isNotBlank(alias))
			projectionAppend(projection + " as " + alias);
		return this;
	}
	
	public SqlGrammar eq(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.EQ));
		return this;
	}
	
	public SqlGrammar ne(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.NE));
		return this;
	}
	
	public SqlGrammar gt(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.GT));
		return this;
	}
	
	public SqlGrammar ge(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.GE));
		return this;
	}
	
	public SqlGrammar lt(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.LT));
		return this;
	}
	
	public SqlGrammar le(String propertyName, Object value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, value, Symbol.LE));
		return this;
	}
	
	public SqlGrammar in(String propertyName, Object[] values){
		if(StringUtils.isNotBlank(propertyName) && values != null && values.length > 0)
			conditionAppend(SqlUtils.format(propertyName, values , "in"));
		return this;
	}
	
	public SqlGrammar notIn(String propertyName, Object[] values){
		if(StringUtils.isNotBlank(propertyName) && values != null && values.length > 0)
			conditionAppend(SqlUtils.format(propertyName, values , "not in"));
		return this;
	}
	
	@SuppressWarnings("unchecked")
	public SqlGrammar in(String propertyName, Collection value){
		if(StringUtils.isNotBlank(propertyName) && value != null && value.size() > 0)
			conditionAppend(SqlUtils.format(propertyName, value , "in"));
		return this;
	}
	
	@SuppressWarnings("unchecked")
	public SqlGrammar notIn(String propertyName, Collection value){
		if(StringUtils.isNotBlank(propertyName) && value != null && value.size() > 0)
			conditionAppend(SqlUtils.format(propertyName, value , "not in"));
		return this;
	}
	
	public SqlGrammar like(String propertyName, String value){
		if(StringUtils.isNotBlank(propertyName) && value != null)
			conditionAppend(SqlUtils.format(propertyName, Symbol.PERCENT + value + Symbol.PERCENT, "like"));
		return this;
	}
	
	public SqlGrammar like(String propertyName, Object value, short type){
		if(StringUtils.isNotBlank(propertyName) && value != null) {
			String val = "";
			switch(type) {
				case LIKE_A : val = Symbol.PERCENT + value + Symbol.PERCENT; break;
				case LIKE_L : val = Symbol.PERCENT + value; break;
				case LIKE_R : val = value + Symbol.PERCENT; break;
			}
			conditionAppend(SqlUtils.format(propertyName, val, "like"));
		}
		return this;
	}
	
	private void updateSqlAppend(String sql){
		if(updateSql.length() > 0)
			updateSql.append(Symbol.COMMA + sql);
		else
			updateSql.append(sql);
	}
	
	private void conditionAppend(String sql){
		if(condition.length() > 0)
			condition.append(" and " + sql);
		else
			condition.append(sql);
	}
	
	private void projectionAppend(String sql){
		if(projection.length() > 0)
			projection.append(Symbol.COMMA + sql);
		else
			projection.append(sql);
	}

	public StringBuffer getUpdateSql() {
		return updateSql;
	}

	public void setUpdateSql(StringBuffer updateSql) {
		this.updateSql = updateSql;
	}

	public StringBuffer getProjection() {
		return projection;
	}

	public void setProjection(StringBuffer projection) {
		this.projection = projection;
	}

	public StringBuffer getCondition() {
		return condition;
	}

	public void setCondition(StringBuffer condition) {
		this.condition = condition;
	}
	
	
	
}
