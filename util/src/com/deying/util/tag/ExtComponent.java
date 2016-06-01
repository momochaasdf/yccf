package com.deying.util.tag;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.components.Component;

import com.deying.util.data.DataConvert;
import com.deying.util.exception.BaseException;
import com.opensymphony.xwork2.conversion.TypeConverter;
import com.opensymphony.xwork2.util.ValueStack;

/**
 * @author wangxj
 * May 3, 2013
 * 
 */
public class ExtComponent extends Component {
	
	private boolean isStackVal = false;

	public ExtComponent(ValueStack stack) {
		super(stack);
	}
	
	protected String obtainString(String expr) {
		if(StringUtils.isBlank(expr)) return null;
		expr = befaultObtion(expr);
		String value = null;
		if(isStackVal)
			value = (String)getStack().findValue(expr, String.class);
		else
			value = expr;
		return value;
    }
	
	protected Object obtainValue(String expr) {
		if(StringUtils.isBlank(expr)) return null;
		expr = befaultObtion(expr);
		Object value = null;
		if(isStackVal)
			value = getStack().findValue(expr, false);
		else
			value = expr;
		return value;
    }
	
	@SuppressWarnings("unchecked")
	protected <T> T obtainValue(String expr, Class<T> toType) throws Exception {
		if(StringUtils.isBlank(expr)) return null;
		expr = befaultObtion(expr);
		T testValue = null;
		if(isStackVal)
			testValue = (T)getStack().findValue(expr, toType, true);
		else
			testValue = DataConvert.convertType(expr, toType);
		if(TypeConverter.NO_CONVERSION_POSSIBLE.equals(testValue))
			throw new BaseException(expr + "can't conver to " + toType.getSimpleName());
		return testValue;
    }
	
	private String befaultObtion(String expr){
		String formatExpr = expr;
		if(altSyntax() && expr.startsWith("%{") && expr.endsWith("}")) {
			formatExpr = expr.substring(2, expr.length() - 1);
			isStackVal = true;
		}else {
			isStackVal = false;
		}
		return formatExpr;
	}

}
