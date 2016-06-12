package com.deying.util.annotation.query;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Formatter;
import java.util.List;
import com.deying.util.sql.SqlUtils;



/**
 * 
 * @author panxy
 */
public final class QueryBuilder {
	//
	private static final char PADDING = ' ';
	private static final String IN = " in (";
	private static final String PARAM = "?";
	private static final String COMMA = ", ";
	private static final String BRACKET = ")";
	private static final String NOTIN = " not in (";
	public static final SimpleDateFormat DATE_FMT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	//
	private final StringBuilder queryString;
	private final List<Object> queryParameters;

	/**
	 * 
	 */
	public QueryBuilder() {
		 this.queryString = new StringBuilder(200);
		 this.queryParameters = new ArrayList<Object>(20);
	}
	
	/**
	 * 
	 */
	public QueryBuilder append(String query, Object... params) {
		this.queryString.append(PADDING).append(query);
		for (Object param : params) {
			appendParameter(param);
		}
		
		//
		return this;
	}
	
	/**
	 * 添加已经经过QB处理过的参数
	 * @param params
	 */
	public void addQBParam(List<Object> params) {
		queryParameters.addAll(params);
	}
	
	public QueryBuilder appendIfNotNull(String query, Object param){
		//
		if(param != null) {
			this.queryString.append(PADDING).append(query);
			appendParameter(param);
		}
		
		//
		return this;
	}
	
	public QueryBuilder in(String property, Object[] params) {
		//
		if(params.length > 0) {
			this.queryString.append(PADDING).append(property);
			this.queryString.append(IN);
			for(int i = 0; i < params.length; i++) {
				//
				this.queryString.append(PARAM);
				if(i != params.length - 1) {
					this.queryString.append(COMMA);
				}
				
				//
				appendParameter(params[i]);
			}
			this.queryString.append(BRACKET);
		}
		
		//
		return this;
	}
	
	public QueryBuilder in(String property, Collection<?> params) {
		if(params != null) {
			return this.in(property, params.toArray());
		}else
			return this;
		
	}
	
	public QueryBuilder notin(String property, Object[] params) {
		//
		if(params.length > 0) {
			this.queryString.append(PADDING).append(property);
			this.queryString.append(NOTIN);
			for(int i = 0; i < params.length; i++) {
				//
				this.queryString.append(PARAM);
				if(i != params.length - 1) {
					this.queryString.append(COMMA);
				}
				
				//
				appendParameter(params[i]);
			}
			this.queryString.append(BRACKET);
		}
		
		//
		return this;
	}
	
	public QueryBuilder notin(String property, Collection<?> params) {
		return this.notin(property, params.toArray());
	}
	
	/**
	 * queryString 经过了与参数融合后的语句
	 */
	public String toString() {
		Formatter formatter = null;
		try {
			formatter = new Formatter();
			formatter.format(queryString.toString().replaceAll("\\?", "%s"), getQueryParametersAsArray());
			return formatter.toString();
		} finally {
			if(formatter != null)
				formatter.close();
		}
	}
	
	public Object[] getQueryParametersAsArray() {
		Object[] os = new Object[queryParameters.size()];
		for(int i = 0; i < os.length; i++) {
			os[i] = SqlUtils.value2Sql(queryParameters.get(i));
		}
		return os;
	}
	
	protected void appendParameter(Object param) {
		this.queryParameters.add(param);
	}
	
	public String getQueryString() {
		return this.queryString.toString();
	}

	public List<Object> getQueryParameters() {
		return this.queryParameters;
	}
	
}
